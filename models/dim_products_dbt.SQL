SELECT * FROM  {{source("sales","DIM_PRODUCTS")}}
UNION 
SELECT '-2','1889-01-01' 