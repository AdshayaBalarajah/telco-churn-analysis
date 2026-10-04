import pandas as pd
from sqlalchemy import create_engine

engine = create_engine("postgresql+psycopg2://postgres:YOUR_PASSWORD@localhost:5432/telco")

df = pd.read_csv("data/WA_Fn-UseC_-Telco-Customer-Churn.csv")
df.columns = [c.lower() for c in df.columns]
df["totalcharges"] = pd.to_numeric(df["totalcharges"], errors="coerce")

df.to_sql("customers", engine, if_exists="replace", index=False)
print(len(df), "rows loaded")