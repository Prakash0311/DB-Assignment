first question: Explain the relationship between the "Product" and "Product_Category" entities from the above diagram ?

Answer: The relationship between "Product" and "Product_Category" is such that each product belongs to one category, and each category can have multiple products associated with it. This is a  one-to-many relationship, where one category can have multiple products, but each product can only belong to one category.



second question: How could you ensure that each product in the "Product" table has a valid category assigned to it?

Answer: To ensure that each product in the "Product" table has a valid category assigned to it, you can create a foreign key constraint between the "Product" table's "category_id" column and the "id" column of the "Product_Category" table. This ensures referential integrity, meaning that every value in the "category_id" column of the "Product" table must exist in the "id" column of the "Product_Category" table.

sql query:
ALTER TABLE PRODUCT
ADD CONSTRAINT fkey_product_category
FOREIGN KEY (category_id)
REFERENCES Product_Category(id); 
