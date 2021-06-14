
CREATE PROCEDURE [dbo].[Customers_Delete]

	@CustomerID int

AS
BEGIN

	DELETE FROM [dbo].[Addresses]
	WHERE [CustomerID] = @CustomerID;

	DELETE FROM [dbo].[Customers]
	WHERE [CustomerID] = @CustomerID;

END