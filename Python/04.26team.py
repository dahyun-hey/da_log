import pandas as pd

x1_name = "log.xlsx"
api_name = "log_api.csv"

x1 = pd.read_excel(x1_name)
api = pd.read_csv(api_name, encoding = 'cp949')

