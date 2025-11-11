SELECT * FROM [dbo].[Superstore clean sheet]

SELECT TOP 10 Customer_Name, SUM(Sales) AS Total_Sales FROM [Superstore clean sheet]
GROUP BY  
Customer_Name
ORDER BY
Total_Sales 
DESC
;

SELECT Category, SUM(Profit) AS Total_Profit FROM [Superstore clean sheet]
GROUP BY  
Category
ORDER BY
Total_Profit
DESC
;

SELECT Discount, AVG(Profit) AS AVG_Profit FROM [Superstore clean sheet]
GROUP BY  
Discount
ORDER BY
Discount
;

SELECT Region, SUM(Sales) AS Total_Sales FROM [Superstore clean sheet]
GROUP BY
Region
ORDER BY
Total_Sales
DESC
;

SELECT Sub_Category,  SUM(Profit) AS Total_Profit FROM [Superstore clean sheet]
GROUP BY
Sub_Category
HAVING SUM(Profit) < 0
;

SELECT Month_Order_Date AS Month, Year_Order_Date AS Year, SUM(Sales) As Monthly_Sales FROM [Superstore clean sheet]
GROUP BY
Month_Order_Date, Year_Order_Date
ORDER BY
Month_Order_Date, Year_Order_Date
;