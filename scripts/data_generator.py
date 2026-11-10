import pandas as pd
import numpy as np

np.random.seed(42)
n_rows = 1000

customer_ids = [f"CUST_{1000 + i}" for i in range(n_rows)]
account_types = np.random.choice(["Savings", "Current", "Credit Card"], size=n_rows, p=[0.5, 0.3, 0.2])
transaction_amounts = np.random.exponential(scale=5000, size=n_rows).round(2) + 10
credit_scores = np.random.randint(300, 850, size=n_rows)
debt_to_income_ratios = np.random.uniform(0.1, 0.85, size=n_rows).round(2)
transaction_channels = np.random.choice(["Mobile App", "ATM", "Net Banking", "POS Terminal"], size=n_rows)
is_flagged_fraud = np.where((transaction_amounts > 12000) | (credit_scores < 500) & (debt_to_income_ratios > 0.65), 1, 0)

df = pd.DataFrame({
    "customer_id": customer_ids,
    "account_type": account_types,
    "transaction_amount": transaction_amounts,
    "credit_score": credit_scores,
    "debt_to_income": debt_to_income_ratios,
    "channel": transaction_channels,
    "is_fraud": is_flagged_fraud
})

df.to_csv("bank_fraud_data.csv", index=False)
print("Dataset bank_fraud_data.csv successfully generated!")