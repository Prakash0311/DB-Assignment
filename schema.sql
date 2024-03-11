`` Schema for creating the product table ``

  CREATE TABLE product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    desc TEXT,
    SKU VARCHAR(255),
    category_id INT,
    inventory_id INT,
    price DECIMAL(10,2),
    discount_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY(category_id) REFERENCES Product_Category(id) ON DELETE CASCADE,
    FOREIGN KEY (inventory_id) REFERENCES Product_Inventory(id) ON DELETE CASCADE,
    FOREIGN KEY (discount_id) REFERENCES Discount(id) ON DELETE CASCADE
);


`` Schema for creating the product_category table ``

CREATE TABLE product_category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    desc TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
  );


`` Schema for creating the produt_inventory table ``

CREATE TABLE product_inventory (
    id INT PRIMARY KEY AUTO_INCREMENT,
    quantity INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE discount (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    desc TEXT,
    discount_percent DECIMAL(5,2),
    active BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);
