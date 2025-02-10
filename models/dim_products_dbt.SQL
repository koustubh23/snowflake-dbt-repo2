SELECT * FROM  {{source("sales","DIM_PRODUCTS")}}
UNION 
SELECT '-4','1889-01-10' 