SELECT * FROM  {{source("sales","DIM_PRODUCTS")}}
UNION 
SELECT '-1','1889-01-01' 