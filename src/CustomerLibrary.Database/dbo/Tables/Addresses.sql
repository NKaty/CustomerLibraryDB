CREATE TABLE [dbo].[Addresses] (
    [AddressID]    INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]   INT            NOT NULL,
    [AddressLine]  NVARCHAR (100) NOT NULL,
    [AddressLine2] NVARCHAR (100) NULL,
    [AddressType]  NVARCHAR (10)  NOT NULL,
    [City]         NVARCHAR (50)  NOT NULL,
    [PostalCode]   NVARCHAR (6)   NOT NULL,
    [State]        NVARCHAR (20)  NOT NULL,
    [Country]      NVARCHAR (15)  NOT NULL,
    CONSTRAINT [PK_Addresses_AddressID] PRIMARY KEY CLUSTERED ([AddressID] ASC),
    CONSTRAINT [CK_Addresses_AddressType] CHECK ([AddressType]='Billing' OR [AddressType]='Shipping'),
    CONSTRAINT [CK_Addresses_Country] CHECK ([Country]='Canada' OR [Country]='United States'),
    CONSTRAINT [FK_Addresses_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
);

