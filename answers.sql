q1
-- Transformed table into 1NF (each product in its own row)
SELECT * FROM (
    VALUES
        (101, 'John Doe', 'Laptop'),
        (101, 'John Doe', 'Mouse'),
        (102, 'Jane Smith', 'Tablet'),
        (102, 'Jane Smith', 'Keyboard'),
        (102, 'Jane Smith', 'Mouse'),
        (103, 'Emily Clark', 'Phone')
) AS ProductDetail(OrderID, CustomerName, Product);

q2
-- Orders table (Customer info per OrderID)
SELECT * FROM (
    VALUES
        (101, 'John Doe'),
        (102, 'Jane Smith'),
        (103, 'Emily Clark')
) AS Orders(OrderID, CustomerName);
-- OrderItems table (Each product + quantity per order)
SELECT * FROM (
    VALUES
        (101, 'Laptop', 2),
        (101, 'Mouse', 1),
        (102, 'Tablet', 3),
        (102, 'Keyboard', 1),
        (102, 'Mouse', 2),
        (103, 'Phone', 1)
) AS OrderItems(OrderID, Product, Quantity);

