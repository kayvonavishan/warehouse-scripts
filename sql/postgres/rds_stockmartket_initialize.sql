--password stored in /c/Users/micha/AppData/Roaming/postgresql

--Creating tables
DROP TABLE public.apple_daily_price;
CREATE TABLE IF NOT EXISTS public.apple_daily_price (
    date VARCHAR(50) PRIMARY KEY,
    open_price VARCHAR(50),
    high_price VARCHAR(50),
    low_price VARCHAR(50),
    close_price VARCHAR(50),
    volume VARCHAR(50),
    stock_name VARCHAR(50)
);

--C:\Users\micha>..\..\kayvon_lib\pgsql\bin\psql --host=terraform-20210528232525987200000001.cbr0d43utjhw.us-east-2.rds.amazonaws.com --port=5432  --username=foo --dbname=stock_market -c "\copy public.apple_daily_price FROM 'C:/Users/micha/OneDrive/Documents/AWS/ToS3/AAPL_data.csv' WITH (FORMAT csv)"

select * from public.apple_daily_price;

COPY public.apple_daily_price FROM 'C:/Users/micha/OneDrive/Documents/AWS/ToS3/AAPL_data.csv' WITH (FORMAT csv);

--loading data
