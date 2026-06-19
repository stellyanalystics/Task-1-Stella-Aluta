SELECT TOP (1000) [OrderID]
      ,[Date]
      ,[CustomerID]
      ,[Product]
      ,[Quantity]
      ,[UnitPrice]
      ,[ShippingAddress]
      ,[PaymentMethod]
      ,[OrderStatus]
      ,[TrackingNumber]
      ,[ItemsInCart]
      ,[CouponCode]
      ,[ReferralSource]
      ,[TotalPrice]
  FROM [Decodelabs_Internship].[dbo].[Online_Retail Store]

  SELECT*
    FROM dbo.[Online_Retail Store];

	ALTER TABLE [Decodelabs_Internship].[dbo].[Online_Retail Store]
  ALTER COLUMN [UnitPrice] DECIMAL(10,2);

  ALTER TABLE  [Decodelabs_Internship].[dbo].[Online_Retail Store]
    ALTER COLUMN [TotalPrice] DECIMAL(10,2);
	
  SELECT*
     FROM dbo.[Online_Retail Store]
	 WHERE (UnitPrice) >500 AND(PaymentMethod) = 'Credit Card' ;

	 SELECT*
	   FROM dbo.[Online_Retail Store]
	   ORDER BY [TotalPrice] DESC;

	   	 SELECT*
	   FROM dbo.[Online_Retail Store]
	   ORDER BY [TotalPrice] ASC;

	   SELECT* FROM dbo.[Online_Retail Store] WHERE [TotalPrice] >500 ORDER BY [TotalPrice] DESC;

	   SELECT Product,
	            SUM([TotalPrice]) AS TotalRevenue
	    FROM dbo.[Online_Retail Store]
		GROUP BY Product ORDER BY TotalRevenue DESC;

	 SELECT Product,
	      COUNT(*) AS TotalOrders
		FROM dbo.[Online_Retail Store]
		GROUP BY Product ORDER BY TotalOrders DESC;

		SELECT Product,
		    SUM([Quantity]) AS TotalQuantity
		FROM dbo.[Online_Retail Store]
		GROUP BY Product ORDER BY TotalQuantity DESC;

		SELECT AVG(TotalPrice) AS AvgOrderValue
		   FROM dbo.[Online_Retail Store];
