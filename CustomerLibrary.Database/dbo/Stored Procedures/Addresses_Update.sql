﻿
CREATE PROCEDURE [dbo].[Addresses_Update]

	@AddressID int,
	@CustomerID int,
	@AddressLine nvarchar(100),
	@AddressLine2 nvarchar(100),
	@AddressType nvarchar(10),
	@City nvarchar(50),
	@PostalCode nvarchar(6),
	@State nvarchar(20),
	@Country nvarchar(15)

AS
BEGIN

	UPDATE [dbo].[Addresses]
	SET [CustomerID] = @CustomerID,
		[AddressLine] =  @AddressLine,
		[AddressLine2] = @AddressLine2,
		[AddressType] = @AddressType,
		[City] = @City,
		[PostalCode] = @PostalCode,
		[State] = @State,
		[Country] = @Country
	WHERE [AddressID] = @AddressID;

END