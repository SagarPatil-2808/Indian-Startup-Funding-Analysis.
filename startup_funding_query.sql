USE funding_db;


# # # ------------------
# 1. Startup Analysis
# # # ------------------

# 1. Top 10 Cities by Total Funding
SELECT city, SUM(Amount_in_USD) AS total_funding
FROM startup_funding
GROUP BY city
ORDER BY total_funding DESC
LIMIT 10;


# 2. Top 10 Industry/Sector by Total Funding
SELECT industry_vertical, SUM(Amount_in_USD) AS total_funding
FROM startup_funding
GROUP BY industry_vertical
ORDER BY total_funding DESC
LIMIT 10;


# 3. Top 10 Startups by Total Funding
SELECT startup_name, SUM(Amount_in_USD) AS total_funding
FROM startup_funding
GROUP BY startup_name
ORDER BY total_funding DESC
LIMIT 10;


### ----------------------------------------------------------------------------------------- ###


# # # ------------------
# 2. INVESTOR ANALYSIS
# # # ------------------

# 1. Top Investor by Number of Deals
SELECT investors_name, COUNT(*) AS no_of_deals
FROM startup_funding
GROUP BY investors_name
ORDER BY no_of_deals DESC
LIMIT 10;


# 2. Top Investor by Total Funding 
SELECT investors_name, SUM(Amount_in_USD) AS total_funding
FROM startup_funding
GROUP BY investors_name
ORDER BY total_funding DESC
LIMIT 10;


