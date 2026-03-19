USE shelter_db_2;

/*

Query to Compute Appointment to Adoption Conversion Rates By Breed

Purpose:
This query evaluates the difference between adopter interests versus actual adoption 
outcomes by measuring how many scheduled appointments result in a completed adoption 
for each breed. It helps distinguish between breeds that attract more attention versus 
breeds that actually convert into a completed adoption. 

Results:
- Labradors have a 50% conversion rate, meaning that half of the labradors with appointments 
  were adopted, indicating a strong adopter-pet fit and met expectations.
- Persians have a 44.44% relatively high conversion rate, which indicates a high demand but 
  shows that not every adopter commits.
- Golden retrievers and Siamese have a 37.5% moderate conversion rate. There are high interests, 
  especially with Siamese’s with 16 appointments, but slower final adoptions.
- Poodles have a 33.33% conversion rate which is moderately low. This may require the shelter to 
  provide additional support or have clearer animal profiles/expectations. 
- Parakeets (16.67%) and Rabbits (12%) have a very low conversion rate despite high appointment 
  counts. This indicates strong curiosity but weak/inefficient follow-throughs. 

Managerial Implications/Recommendations:
- The reason conversion rates are lower may be due to the expectations of a certain breed not being 
  met to the adopter. Because of this, adopters may benefit from better animal education, adopter 
support, or the shelter having clearer adoption profiles. 
- High-converting breeds signify a strong fit between adopter expectations and pet characteristics, 
  which shelters can take note of when planning intakes.
- This can also help the shelter prioritize staff support during appointments for breeds less likely 
  to convert. Shelters can train their staff to be more equipped to educate adopters each appointment.

*/

WITH appointments_cte AS (
    SELECT DISTINCT
        p.pet_id,
        p.breed
    FROM pet p
    JOIN appointment ap
        ON p.pet_id = ap.pet_id
),
adoptions_cte AS (
    SELECT DISTINCT
        p.pet_id,
        p.breed
    FROM pet p
    JOIN adoption a
        ON p.pet_id = a.pet_id
)
SELECT
    ap.breed,
    COUNT(ap.pet_id) AS pets_with_appointments,
    COUNT(ad.pet_id) AS pets_adopted,
    ROUND(COUNT(ad.pet_id) * 100.0 / COUNT(ap.pet_id), 2) AS conversion_rate_pct
FROM appointments_cte ap
LEFT JOIN adoptions_cte ad
    ON ap.pet_id = ad.pet_id
GROUP BY ap.breed
HAVING COUNT(ap.pet_id) > 0
ORDER BY conversion_rate_pct DESC;

/*

Query to Compare Adoption Outcomes by Health Condition

Purpose:
This query analyzes how a pet’s health condition impacts adoption outcomes by comparing adoption rates, 
average shelter stay, and also average adoption fees for pets with and without health conditions. It can 
help evaluate whether medical needs affect adoption efficiency and revenue. 

Results:
There are more adoptions for pets without health conditions but had a longer average stay of 48 days. 
In contrast, pets with health conditions had fewer adoptions but were adopted more quickly, averaging 31 days 
in the shelter. This suggests that while pets with medical conditions are adopted less often, they may be prioritized 
by this shelter for faster relocation. In terms of adoption fees, pets with health conditions had a slightly higher 
average adoption fee. This could suggest that they are priced to help offset medical care costs. 

Managerial Implications/Recommendations:
- Pets with health conditions and longer shelter stays may require more adoption campaigns or fundraising 
  events for medical needs.
- Fee differences can inform pricing adjustments to support medical care. Perhaps lowering the adoption fees 
  for pets with health conditions will help improve their adoption rates so adopters can reallocate funds into 
  medical needs rather than adoption fees. 
- The results can help determine where to allocate resources to improve adoption outcomes for those that are 
  medically impaired. 

*/

SELECT
    CASE 
        WHEN p.health_condition = 1 
        THEN 'Has Health Condition'
        ELSE 'No Health Condition'
    END AS health_status,
    COUNT(a.adoption_id) AS total_adoptions,
    ROUND(AVG(p.time_in_shelter), 2) AS avg_days_in_shelter,
    ROUND(AVG(a.adoption_fee), 2) AS avg_adoption_fee
FROM pet p
JOIN adoption a
    ON p.pet_id = a.pet_id
JOIN application app
    ON a.application_id = app.application_id
WHERE app.application_status = 'Approved'
GROUP BY 
    CASE 
        WHEN p.health_condition = 1 
        THEN 'Has Health Condition'
        ELSE 'No Health Condition'
    END
ORDER BY avg_days_in_shelter DESC;

/*

Query to Show Application Submissions Per Appointment

Purpose:
To show how many appointments have resulted in an application submission

Results:
- Appointment_id along with its start and end date time
- The total applications submitted after the appointment

Managerial Implication/Recommendations:
This information is useful for shelters to determine which types of 
appointments are more likely to lead to applications. The data may indicate 
need for improving scheduling efficiency, mismatches with adopters and pets 
during appointments. This will be useful to improve the appointment process 
for more application rates. 

*/

WITH cte_applications_per_appointment AS (
    SELECT
        ap.appointment_id,
        COUNT(app.application_id) AS application_count
    FROM appointment AS ap
    LEFT JOIN application AS app ON ap.adopter_id = app.adopter_id
       AND ap.pet_id = app.pet_id
    GROUP BY
        ap.appointment_id
)
SELECT
    a.appointment_id,
    a.start_datetime,
    a.end_datetime,
    CASE
        WHEN c.application_count IS NULL THEN 0
        ELSE c.application_count
    END AS total_applications
FROM appointment AS a
LEFT JOIN cte_applications_per_appointment AS c ON a.appointment_id = c.appointment_id
ORDER BY total_applications DESC;

/*

Query to Show Top 3 Species With Most Revenue Generated

Purpose: 
Show which species generate more revenue for shelters annually and 
display the share of total revenue for each species.

Results: 
- Displays the top 3 species that generated most revenue that year for the shelter 
  in descending order
- Displays the share for those top three species of that particular year

Managerial Implication/Recommendations:
Useful for shelters to annually review which species should be more invested in 
for budget allocation.This data also shows the trends of which animals are getting more 
popular for adoptions by the years.

*/

WITH cte_species_revenue AS (
    SELECT 
        YEAR(a.adoption_date) AS adoption_year,
        p.species,
        SUM(a.adoption_fee) AS species_revenue
    FROM adoption AS a
    JOIN pet AS p ON a.pet_id = p.pet_id
    GROUP BY
        YEAR(a.adoption_date),
        p.species
)
SELECT
    adoption_year,
    species,
    FORMAT(species_revenue, 'C', 'en-US') AS total_revenue,
    FORMAT((species_revenue * 100.0) / SUM(species_revenue) 
        OVER (PARTITION BY adoption_year),'N2') + '%' AS share_of_yearly_revenue
FROM cte_species_revenue
ORDER BY
    adoption_year,
    species_revenue DESC;

/*

Query to Compute Adoption Rates by Species and Breed

Purpose:
Compare adoption outcomes by species + breed using adoption rate

Results:
species, breed, total_pets, adopted_pets, adoption_rate_pct, rank

Managerial implications:
- Identifies breeds/species with slower adoption (needs promotion)
- Helps intake planning based on demand patterns

*/

WITH totals_cte AS (
    SELECT
        species,
        breed,
        COUNT(*) AS total_pets
    FROM pet
    GROUP BY species, breed
),
adopted_cte AS (
    SELECT
        p.species,
        p.breed,
        COUNT(*) AS adopted_pets
    FROM adoption a
    JOIN pet p
        ON a.pet_id = p.pet_id
    GROUP BY p.species, p.breed
)
SELECT
    t.species,
    t.breed,
    t.total_pets,
    ISNULL(a.adopted_pets, 0) AS adopted_pets,
    RANK() OVER (ORDER BY ISNULL(a.adopted_pets, 0) DESC) AS adoption_rank
FROM totals_cte t
LEFT JOIN adopted_cte a
    ON t.species = a.species
   AND t.breed   = a.breed
ORDER BY adoption_rank, t.species, t.breed;

/*

Query to Compare Approved versus Rejected Applications by Species

Purpose:
Compare approval/rejection outcomes across species.

Results:
species, total applications, approved/rejected/pending, approval rate

Managerial implications:
- High rejection rates can signal unclear requirements for certain animals
- Helps improve screening process and adopter guidance

*/

SELECT
    p.species,
    COUNT(*) AS total_applications,
    SUM(CASE WHEN app.application_status = 'Approved' THEN 1 ELSE 0 END) AS approved_apps,
    SUM(CASE WHEN app.application_status = 'Rejected' THEN 1 ELSE 0 END) AS rejected_apps,
    SUM(CASE WHEN app.application_status = 'Pending'  THEN 1 ELSE 0 END) AS pending_apps
FROM application AS app
JOIN pet AS p
    ON app.pet_id = p.pet_id
GROUP BY p.species
HAVING COUNT(*) > 0
ORDER BY
    approved_apps DESC,
    rejected_apps DESC,
    total_applications DESC;

/*

Stored Procedure to Show Adoption Rates Based on Staff Member

Purpose:
Stored procedure shows adoption rates based on staff assigned to coordinate the adoption

Results:
- The staff member and their role along with their applications that they’ve dealt with
- The rate of adoption approvals for the particular staff member

Managerial Implication/Recommendations:
Useful for the shelter to review a staff member's approval rate for the applications 
they have overseen. Stored procedure filters results by staff role and application approvals. 

*/

CREATE OR ALTER PROCEDURE Staff_App_Outcomes
    @Role VARCHAR(30) = NULL, @ApplicationStatus VARCHAR(50) = NULL
AS

BEGIN

    SELECT
        s.staff_id,
        s.first_name,
        s.last_name,
        s.role,
        COUNT(CASE WHEN a.application_status = 'Approved' THEN 1 END) AS approved_applications,
        COUNT(CASE WHEN a.application_status = 'Rejected' THEN 1 END) AS rejected_applications,
        COUNT(a.application_id) AS total_applications,
        CASE WHEN COUNT(a.application_id) = 0 THEN 0
            ELSE (COUNT(CASE WHEN a.application_status = 'Approved' THEN 1 END) * 100) / COUNT(a.application_id)
        END AS approval_rate_percent
    FROM staff AS s
    LEFT JOIN appointment_staff AS aps ON s.staff_id = aps.staff_id
    LEFT JOIN appointment AS ap ON aps.appointment_id = ap.appointment_id
    LEFT JOIN application AS a ON ap.adopter_id = a.adopter_id
       AND ap.pet_id = a.pet_id

     WHERE
        (@Role IS NULL OR s.role = @Role) 
        AND (@ApplicationStatus IS NULL OR a.application_status = @ApplicationStatus)

    GROUP BY
        s.staff_id,
        s.first_name,
        s.last_name,
        s.role
    ORDER BY
        approval_rate_percent DESC,
        s.last_name;
END;

-- Test:

EXECUTE Staff_App_Outcomes 
    @Role = 'Veterinarian',
    @ApplicationStatus = 'Approved';

/*

Stored Procedure to Show Appointments Per Month

Purpose:
Show appointment volume per month for a chosen year (optional top N busiest months).

Results:
@TargetYear  = year to analyze
@TopNMonths  = optional; returns only busiest N months

Managerial Implications/Recommendations:
- Helps schedule staff/volunteers for high-volume months
- Supports forecasting appointment demand

*/

CREATE PROCEDURE AppointmentsPerMonth
    @TargetYear INT,
    @TopNMonths INT = NULL
AS
BEGIN

    SELECT
        YEAR(ap.start_datetime)  AS appt_year,
        MONTH(ap.start_datetime) AS appt_month,
        COUNT(*) AS total_appointments,
        COUNT(DISTINCT ap.adopter_id) AS distinct_adopters
    INTO #MonthlyAppts
    FROM appointment AS ap
    WHERE YEAR(ap.start_datetime) = @TargetYear
    GROUP BY YEAR(ap.start_datetime), MONTH(ap.start_datetime);

    IF @TopNMonths IS NULL
    BEGIN
        SELECT
            appt_year,
            appt_month,
            total_appointments,
            distinct_adopters
        FROM #MonthlyAppts
        ORDER BY appt_month;
    END
    ELSE
    BEGIN
        SELECT TOP (@TopNMonths)
            appt_year,
            appt_month,
            total_appointments,
            distinct_adopters
        FROM #MonthlyAppts
        ORDER BY total_appointments DESC, appt_month;
    END
END;
GO

-- Test:

EXECUTE AppointmentsPerMonth 
    @TargetYear = 2023,
    @TopNMonths = 3;

/*

Query to Compute Average Number of Days in Shelter by Breed

Purpose:
The purpose of this query is to analyze how long pets of different breeds 
remain in the shelter before being adopted. By computing average stays by breed, 
this query can identify which breeds experience longer wait times that may need 
additional support or promotions to increase adoption rates. This information can 
be helpful for shelters when evaluating operational blockages and help guide where 
to allocate resources more effectively.

Results:
The results show many variations across breeds. Parakeets have the longest average 
stay at 56 days, followed by Siamese cats at 54 days. Poodles and Labradors both have 
an average of around 49 days, while Persians and rabbits average about 38 days. Golden 
Retrievers have the shortest average stay at roughly 27 days, which indicates a high 
demand and popularity rates among this breed. 

Managerial Implications/Recommendations:
    - Breeds with longer stays (e.g. Parakeets, Siamese cats) may need more targeted 
    marketing initiatives in order for them to have increased visibility for their listings
    - Breeds with shorter stays can help guide intake planning and financial decisions

*/

WITH adopted_pets AS (
   SELECT
       p.pet_id,
       p.breed,
       p.time_in_shelter
   FROM pet p
   JOIN adoption a
       ON p.pet_id = a.pet_id
    
    JOIN application app
       ON a.application_id = app.application_id
   WHERE app.application_status = 'Approved'
)
SELECT
   breed,
   ROUND(AVG(time_in_shelter), 2) AS avg_days_in_shelter,
   COUNT(*) AS total_adopted
FROM adopted_pets
GROUP BY breed
HAVING COUNT(*) > 0
ORDER BY avg_days_in_shelter DESC;

/*

Query to Compute Number of Adoptions Per Year, Season, and Species

Purpose:
To summarize how many pets are adopted in each season of each year, 
broken down by species (Cat, Dog, Bird, Rabbit). It helps the shelter 
understand when different types of animals are most likely to be adopted.

Results:
-  Returns one row per year, season, and species.
-  Columns: adoption_year, season, species, total_adoptions.
-  Lets us compare which seasons have higher or lower adoption counts for each species. 

Managerial Implications/Reccomendations:
    - Focus marketing and adoption events during seasons where certain species already 
    have high demand to maximize impact.
    - Create special campaigns or discounts in seasons with low adoption numbers to improve 
    overall adoption rates.
    - Use this pattern to plan staffing levels, volunteer shifts, and resource allocation 
    around busy seasons. 

*/

SELECT 
    YEAR(a.adoption_date) AS adoption_year,
    CASE 
        WHEN MONTH(a.adoption_date) IN (12, 1, 2) THEN 'Winter'
        WHEN MONTH(a.adoption_date) IN (3, 4, 5) THEN 'Spring'
        WHEN MONTH(a.adoption_date) IN (6, 7, 8) THEN 'Summer'
        ELSE 'Fall'
    END AS season,
    p.species,
    COUNT(*) AS total_adoptions
FROM adoption AS a
JOIN pet AS p
    ON a.pet_id = p.pet_id
GROUP BY
    YEAR(a.adoption_date),
    CASE 
        WHEN MONTH(a.adoption_date) IN (12, 1, 2) THEN 'Winter'
        WHEN MONTH(a.adoption_date) IN (3, 4, 5) THEN 'Spring'
        WHEN MONTH(a.adoption_date) IN (6, 7, 8) THEN 'Summer'
        ELSE 'Fall'
    END,
    p.species
ORDER BY
    adoption_year,
    season,
    p.species;

/*

Query to Compute the Average Adoption Likelihood by Species

Purpose:
The purpose of this query is to calculate the average price of 
every species, determine how many in the shelter were adopted 
and rank by the species likelihood to be adopted. 

Result:
    - Every group of species ranked in descending order. Where 
    the species most likely to be adopted is ranked at the top
    - Displays the shelters current total number of adoptions for every species
    - Displays the average price per species at the shelter

Managerial Implication/Reccomendations:
    - The data is a good reference for potential adopters to make an educated decision 
    on which species is most popular to buy at the shelter along with its corresponding price. 

*/

--cte determines the avg price per species
WITH cte_avg_price AS (
    SELECT p.species AS pet_species, AVG(ad.adoption_fee) AS avg_pet_price
    FROM adoption AS ad
    JOIN pet AS p ON ad.pet_id = p.pet_id
    GROUP BY 
    p.species
)

SELECT 
    sub.species,
    sub.total_adoptions,
    a.avg_pet_price,
    RANK() OVER (ORDER BY sub.total_adoptions DESC) AS adoption_rank --rank specicies on likelihood to be adopted
FROM (SELECT --calculate how many pets were adopted from the shelter
       p.species,
       COUNT(ad.adoption_id) AS total_adoptions
        FROM adoption AS ad
        JOIN pet AS p ON ad.pet_id = p.pet_id
        GROUP BY p.species) AS sub
JOIN cte_avg_price AS a 
    ON sub.species = a.pet_species
ORDER BY sub.total_adoptions DESC;


/*

Stored Procedure to Get Adoption Stats by Species and Breed

Purpose:
This stored procedure getes adoption statistics for pets that are 
filtered by species or breed. It returns number of successful adoptions
and the average adoption fee for the selected group. This information is
helpful to shelters to understand adoption patterns and popularity levels
for different breeds. It can also be helpful for an adopter to calculate 
financial costs across different types of animals for decision-making.

Results:
By executing this stored procedure, it returns the species, breed, total 
number of adoptions, and the average adoption fee. Higher adoption counts
represents more popular adoption rates while lower counts indicate which
breeds are least likely to be adopted. Additionally, adding the average fee
also helps with decision-making for both the adopter and the shelter, seeing
how different rates are tied to specific animals.

Managerial Implications/Recommendations:
    - Use the adoption fees to help refine pricing for different animals
    - Analyzing adoption performances and help guide how to better support
    animals with lower adoption rates

*/

CREATE OR ALTER PROCEDURE adoption_stats
    @SpeciesName VARCHAR(50) = NULL, @BreedName   VARCHAR(50) = NULL
AS

BEGIN

    SELECT 
        p.species,
        p.breed,
        COUNT(a.adoption_id) AS total_adoptions,
        ROUND(AVG(a.adoption_fee), 2) AS avg_adoption_fee
    FROM pet p
    JOIN adoption a
        ON p.pet_id = a.pet_id
    WHERE
        (@SpeciesName IS NULL OR p.species = @SpeciesName)
        AND (@BreedName IS NULL OR p.breed = @BreedName)
    GROUP BY 
        p.species, p.breed
    ORDER BY 
        total_adoptions DESC;
END;

-- Test:

EXECUTE adoption_stats 
    @SpeciesName = 'Cat',
    @BreedName = 'Siamese';

