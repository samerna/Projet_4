use projet4;

ALTER TABLE `orders`
ADD CONSTRAINT `fk_orders_customers`
  FOREIGN KEY (`customerNumber`)
  REFERENCES `customers` (`customerNumber`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
  
  ALTER TABLE `orders`
ADD CONSTRAINT `fk_orders_orderdetails`
  FOREIGN KEY (`orderNumber`)
  REFERENCES `orderdetails` (`orderNumber`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
  
  ALTER TABLE `orderdetails`
ADD CONSTRAINT `fk_orderdetails_products`
  FOREIGN KEY (`productCode`)
  REFERENCES `products` (`productCode`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
  
  ALTER TABLE `payments`
ADD CONSTRAINT `fk_payments_customers`
  FOREIGN KEY (`customerNumber`)
  REFERENCES `customers` (`customerNumber`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
  
  ALTER TABLE `products`
ADD CONSTRAINT `fk_products_productines`
  FOREIGN KEY (`productLine`)
  REFERENCES `productlines` (`productLine`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
  
  ALTER TABLE `customers`
ADD CONSTRAINT `fk_customers_employees`
  FOREIGN KEY (`salesRepEmployeeNumber`)
  REFERENCES `employees` (`employeeNumber`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
  
  ALTER TABLE employees
ADD CONSTRAINT fk_employees_employees
  FOREIGN KEY (reportsTo)
  REFERENCES employees(employeeNumber)
  ON DELETE CASCADE
  ON UPDATE CASCADE ;
  
  
 ALTER TABLE `employees`
ADD CONSTRAINT `fk_employees_offices`
  FOREIGN KEY (`officeCode`)
  REFERENCES `offices` (`officeCode`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  