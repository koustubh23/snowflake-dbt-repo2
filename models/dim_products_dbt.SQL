SELECT * FROM  {{source("sales","DIM_PRODUCTS")}}
UNION 
SELECT '-3','1889-01-02' 