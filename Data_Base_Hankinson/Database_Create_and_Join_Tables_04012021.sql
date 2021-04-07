-- **************Database Integration Deliverables**************

-- 1. Database stores static data for use during the project
-- 2. Database interfaces with the project in some format
-- 3. Includes at least two tables
-- 4. Includes at least one join using the database language (not including any joins in Pandas)
-- 5. Includes at least one connection string (using SQLAlchemy or PyMongo)


-- **************Database: Final_Project , Table 1: raw_covid_clean**************

CREATE TABLE public.raw_covid_clean
(
    Country_Code INT,
    iso_code text COLLATE pg_catalog."default",
    continent text COLLATE pg_catalog."default",
    date text COLLATE pg_catalog."default",
    total_cases double precision,
    new_cases double precision,
    new_cases_smoothed double precision,
    total_deaths double precision,
    new_deaths double precision,
    new_deaths_smoothed double precision,
    total_cases_per_million double precision,
    new_cases_per_million double precision,
    new_cases_smoothed_per_million double precision,
    total_deaths_per_million double precision,
    new_deaths_per_million double precision,
    new_deaths_smoothed_per_million double precision,
    reproduction_rate double precision,
    icu_patients double precision,
    icu_patients_per_million double precision,
    hosp_patients double precision,
    hosp_patients_per_million double precision,
    weekly_icu_admissions double precision,
    weekly_icu_admissions_per_million double precision,
    weekly_hosp_admissions double precision,
    weekly_hosp_admissions_per_million double precision,
    new_tests double precision,
    total_tests double precision,
    total_tests_per_thousand double precision,
    new_tests_per_thousand double precision,
    new_tests_smoothed double precision,
    new_tests_smoothed_per_thousand double precision,
    positive_rate double precision,
    tests_per_case double precision,
    tests_units text COLLATE pg_catalog."default",
    total_vaccinations double precision,
    people_vaccinated double precision,
    people_fully_vaccinated double precision,
    new_vaccinations double precision,
    new_vaccinations_smoothed double precision,
    total_vaccinations_per_hundred double precision,
    people_vaccinated_per_hundred double precision,
    people_fully_vaccinated_per_hundred double precision,
    new_vaccinations_smoothed_per_million double precision,
    stringency_index double precision,
    population double precision,
    population_density double precision,
    median_age double precision,
    aged_65_older double precision,
    aged_70_older double precision,
    gdp_per_capita double precision,
    extreme_poverty double precision,
    cardiovasc_death_rate double precision,
    diabetes_prevalence double precision,
    female_smokers double precision,
    male_smokers double precision,
    handwashing_facilities double precision,
    hospital_beds_per_thousand double precision,
    life_expectancy double precision,
    human_development_index double precision
    FOREIGN KEY (Country_Code)
);



-- **************Database: Final_Project , Table 2: country_index**************

CREATE TABLE country (
    Country_Code int,
    location VARCHAR (40),
    PRIMARY KEY (Country_Code)
)



-- **************Database: Final_Project , Join tables raw_covid_clean and country_index**************
SELECT country.location,
raw_covid_clean.iso_code,
raw_covid_clean.continent,
raw_covid_clean.date,
raw_covid_clean.total_cases,
raw_covid_clean.new_cases,
raw_covid_clean.new_cases_smoothed,
raw_covid_clean.total_deaths,
raw_covid_clean.new_deaths,
raw_covid_clean.new_deaths_smoothed,
raw_covid_clean.total_cases_per_million,
raw_covid_clean.new_cases_per_million,
raw_covid_clean.new_cases_smoothed_per_million,
raw_covid_clean.total_deaths_per_million,
raw_covid_clean.new_deaths_per_million,
raw_covid_clean.new_deaths_smoothed_per_million,
raw_covid_clean.reproduction_rate,
raw_covid_clean.icu_patients,
raw_covid_clean.icu_patients_per_million,
raw_covid_clean.hosp_patients,
raw_covid_clean.hosp_patients_per_million,
raw_covid_clean.weekly_icu_admissions,
raw_covid_clean.weekly_icu_admissions_per_million,
raw_covid_clean.weekly_hosp_admissions,
raw_covid_clean.weekly_hosp_admissions_per_million,
raw_covid_clean.new_tests,
raw_covid_clean.total_tests,
raw_covid_clean.total_tests_per_thousand,
raw_covid_clean.new_tests_per_thousand,
raw_covid_clean.new_tests_smoothed,
raw_covid_clean.new_tests_smoothed_per_thousand,
raw_covid_clean.positive_rate,
raw_covid_clean.tests_per_case,
raw_covid_clean.tests_units,
raw_covid_clean.total_vaccinations,
raw_covid_clean.people_vaccinated,
raw_covid_clean.people_fully_vaccinated,
raw_covid_clean.new_vaccinations,
raw_covid_clean.new_vaccinations_smoothed,
raw_covid_clean.total_vaccinations_per_hundred,
raw_covid_clean.people_vaccinated_per_hundred,
raw_covid_clean.people_fully_vaccinated_per_hundred,
raw_covid_clean.new_vaccinations_smoothed_per_million,
raw_covid_clean.stringency_index,
raw_covid_clean.population,
raw_covid_clean.population_density,
raw_covid_clean.median_age,
raw_covid_clean.aged_65_older,
raw_covid_clean.aged_70_older,
raw_covid_clean.gdp_per_capita,
raw_covid_clean.extreme_poverty,
raw_covid_clean.cardiovasc_death_rate,
raw_covid_clean.diabetes_prevalence,
raw_covid_clean.female_smokers,
raw_covid_clean.male_smokers,
raw_covid_clean.handwashing_facilities,
raw_covid_clean.hospital_beds_per_thousand,
raw_covid_clean.life_expectancy,
raw_covid_clean.human_development_index
INTO covid_data_final
FROM country
INNER JOIN raw_covid_clean
ON raw_covid_clean."Country_Code" = country."Country_Code";



-- ALTER TABLE covid_data_final_df drop column `index`, drop column `Country_Code`;


-- LEFT OUTER JOIN raw_covid_clean




