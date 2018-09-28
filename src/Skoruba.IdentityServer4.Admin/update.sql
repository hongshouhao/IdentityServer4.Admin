
DECLARE @idsAdminClientUri nvarchar(50);
DECLARE @idsAdminClientId nvarchar(50);
set @idsAdminClientUri = N'http://192.168.84.124:8611';
set @idsAdminClientId = N'identity_admin';
 
update [dbo].[Clients] set [ClientUri] = @idsAdminClientUri, [FrontChannelLogoutUri] = @idsAdminClientUri where [ClientId] = @idsAdminClientId;
update [dbo].[ClientCorsOrigins] set [Origin] = @idsAdminClientUri where ClientId in (select [Id] from [dbo].[Clients] where [ClientId] = @idsAdminClientId);
update [dbo].[ClientPostLogoutRedirectUris] set [PostLogoutRedirectUri] = @idsAdminClientUri + '/signout-callback-oidc' where [ClientId] in (select [Id] from [dbo].[Clients] where [ClientId] = @idsAdminClientId);
update [dbo].[ClientRedirectUris] set [RedirectUri] = @idsAdminClientUri + '/signin-oidc' where ClientId in (select [Id] from [dbo].[Clients] where [ClientId] = @idsAdminClientId);


DECLARE @ociClientUri nvarchar(50);
DECLARE @ociOrigin nvarchar(50);
DECLARE @ociClientId nvarchar(50);
set @ociOrigin = N'http://192.168.84.124';
set @ociClientUri = N'http://192.168.84.124/ocelot-consul-admin';
set @ociClientId = N'ocelot_consul_admin';
 
update [dbo].[Clients] set [ClientUri] = @ociClientUri, [FrontChannelLogoutUri] = @ociClientUri + '/index.html' where [ClientId] = @ociClientId;
update [dbo].[ClientCorsOrigins] set [Origin] = @ociOrigin where ClientId in (select [Id] from [dbo].[Clients] where [ClientId] = @ociClientId);
update [dbo].[ClientPostLogoutRedirectUris] set [PostLogoutRedirectUri] = @ociClientUri + '/index.html' where [ClientId] in (select [Id] from [dbo].[Clients] where [ClientId] = @ociClientId);
update [dbo].[ClientRedirectUris] set [RedirectUri] = @ociClientUri + '/signin-callback.html' where ClientId in (select [Id] from [dbo].[Clients] where [ClientId] = @ociClientId);

