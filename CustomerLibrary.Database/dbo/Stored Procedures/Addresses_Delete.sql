
CREATE PROCEDURE [dbo].[Addresses_Delete]

	@AddressID int

AS
BEGIN

	DELETE FROM [dbo].[Addresses]
	WHERE [AddressID] = @AddressID;

END