
CREATE PROCEDURE [dbo].[Addresses_Select]

	@AddressID int

AS
BEGIN

	SELECT * FROM [dbo].[Addresses]
	WHERE [AddressID] = @AddressID;

END