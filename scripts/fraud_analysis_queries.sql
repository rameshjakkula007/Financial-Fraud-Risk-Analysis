-- ===================================================
-- FINANCIAL FRAUD & OPERATIONAL RISK ANALYSIS QUERIES
-- Database: PostgreSQL
-- Dataset: bank_fraud_data.csv
-- ===================================================

-- Query 1: Fraud Rate & Total Fraud Exposure by Account Type
SELECT 
    account_type,
    COUNT(customer_id) AS total_transactions,
    SUM(is_fraud) AS fraud_cases,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(customer_id), 2) AS fraud_rate_pct,
    ROUND(SUM(CASE WHEN is_fraud = 1 THEN transaction_amount ELSE 0 END), 2) AS total_fraud_exposure
FROM bank_fraud_data
GROUP BY account_type
ORDER BY total_fraud_exposure DESC;


-- Query 2: High-Risk Customer Identification (Low Credit Score & High DTI)
SELECT 
    customer_id,
    account_type,
    credit_score,
    debt_to_income,
    transaction_amount
FROM bank_fraud_data
WHERE credit_score < 550 
  AND debt_to_income > 0.60
  AND is_fraud = 1
ORDER BY transaction_amount DESC;


-- Query 3: Channel-Wise Fraud Vulnerability Analysis
SELECT 
    channel,
    COUNT(*) AS total_volume,
    SUM(is_fraud) AS fraud_count,
    ROUND(AVG(transaction_amount), 2) AS avg_transaction_value
FROM bank_fraud_data
GROUP BY channel
HAVING SUM(is_fraud) > 0
ORDER BY fraud_count DESC;