EXPLAIN Select ProductName,Price 
from ecommerce_1.products_data 
where Category='Electronics';

-- USING INDEX
Create index category_idx on Products(Category);

-- USING THE SAME QUERY AGAIN

EXPLAIN Select ProductName,Price 
from ecommerce_1.products_data
where Category='Electronics';