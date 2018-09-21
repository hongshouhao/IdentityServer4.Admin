USE [IdentityServer4Admin]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApiClaims]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApiResources]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ApiResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApiScopeClaims]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiScopeClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[ApiScopeId] [int] NOT NULL,
 CONSTRAINT [PK_ApiScopeClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApiScopes]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Required] [bit] NOT NULL,
	[Emphasize] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApiSecrets]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Value] [nvarchar](2000) NULL,
	[Expiration] [datetime2](7) NULL,
	[Type] [nvarchar](250) NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientClaims]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientCorsOrigins]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCorsOrigins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Origin] [nvarchar](150) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientCorsOrigins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientGrantTypes]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientGrantTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GrantType] [nvarchar](250) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientGrantTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientIdPRestrictions]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientIdPRestrictions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Provider] [nvarchar](200) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientIdPRestrictions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientPostLogoutRedirectUris]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientPostLogoutRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostLogoutRedirectUri] [nvarchar](2000) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientPostLogoutRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientProperties]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientRedirectUris]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RedirectUri] [nvarchar](2000) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[ProtocolType] [nvarchar](200) NOT NULL,
	[RequireClientSecret] [bit] NOT NULL,
	[ClientName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[ClientUri] [nvarchar](2000) NULL,
	[LogoUri] [nvarchar](2000) NULL,
	[RequireConsent] [bit] NOT NULL,
	[AllowRememberConsent] [bit] NOT NULL,
	[AlwaysIncludeUserClaimsInIdToken] [bit] NOT NULL,
	[RequirePkce] [bit] NOT NULL,
	[AllowPlainTextPkce] [bit] NOT NULL,
	[AllowAccessTokensViaBrowser] [bit] NOT NULL,
	[FrontChannelLogoutUri] [nvarchar](2000) NULL,
	[FrontChannelLogoutSessionRequired] [bit] NOT NULL,
	[BackChannelLogoutUri] [nvarchar](2000) NULL,
	[BackChannelLogoutSessionRequired] [bit] NOT NULL,
	[AllowOfflineAccess] [bit] NOT NULL,
	[IdentityTokenLifetime] [int] NOT NULL,
	[AccessTokenLifetime] [int] NOT NULL,
	[AuthorizationCodeLifetime] [int] NOT NULL,
	[ConsentLifetime] [int] NULL,
	[AbsoluteRefreshTokenLifetime] [int] NOT NULL,
	[SlidingRefreshTokenLifetime] [int] NOT NULL,
	[RefreshTokenUsage] [int] NOT NULL,
	[UpdateAccessTokenClaimsOnRefresh] [bit] NOT NULL,
	[RefreshTokenExpiration] [int] NOT NULL,
	[AccessTokenType] [int] NOT NULL,
	[EnableLocalLogin] [bit] NOT NULL,
	[IncludeJwtId] [bit] NOT NULL,
	[AlwaysSendClientClaims] [bit] NOT NULL,
	[ClientClaimsPrefix] [nvarchar](200) NULL,
	[PairWiseSubjectSalt] [nvarchar](200) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientScopes]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Scope] [nvarchar](200) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientSecrets]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[Type] [nvarchar](250) NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityClaims]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[IdentityResourceId] [int] NOT NULL,
 CONSTRAINT [PK_IdentityClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityResources]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Required] [bit] NOT NULL,
	[Emphasize] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
 CONSTRAINT [PK_IdentityResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[MessageTemplate] [nvarchar](max) NULL,
	[Level] [nvarchar](128) NULL,
	[TimeStamp] [datetimeoffset](7) NOT NULL,
	[Exception] [nvarchar](max) NULL,
	[LogEvent] [nvarchar](max) NULL,
	[Properties] [xml] NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 9/21/2018 2:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180831005719_Initial', N'2.1.2-rtm-30932')
GO
SET IDENTITY_INSERT [dbo].[ApiClaims] ON 

GO
INSERT [dbo].[ApiClaims] ([Id], [Type], [ApiResourceId]) VALUES (5, N'role', 2)
GO
INSERT [dbo].[ApiClaims] ([Id], [Type], [ApiResourceId]) VALUES (9, N'role', 1)
GO
INSERT [dbo].[ApiClaims] ([Id], [Type], [ApiResourceId]) VALUES (10, N'role', 3)
GO
SET IDENTITY_INSERT [dbo].[ApiClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[ApiResources] ON 

GO
INSERT [dbo].[ApiResources] ([Id], [Enabled], [Name], [DisplayName], [Description]) VALUES (1, 1, N'ocelot_administration_api', N'Ocelot Administration API', N'网关配置管理')
GO
INSERT [dbo].[ApiResources] ([Id], [Enabled], [Name], [DisplayName], [Description]) VALUES (2, 1, N'test_webapi', N'test webapi', N'test webapi')
GO
INSERT [dbo].[ApiResources] ([Id], [Enabled], [Name], [DisplayName], [Description]) VALUES (3, 1, N'consul_administration_api', N'Consul Administration Api', N'服务注册管理')
GO
SET IDENTITY_INSERT [dbo].[ApiResources] OFF
GO
SET IDENTITY_INSERT [dbo].[ApiScopeClaims] ON 

GO
INSERT [dbo].[ApiScopeClaims] ([Id], [Type], [ApiScopeId]) VALUES (6, N'role', 2)
GO
INSERT [dbo].[ApiScopeClaims] ([Id], [Type], [ApiScopeId]) VALUES (9, N'role', 5)
GO
INSERT [dbo].[ApiScopeClaims] ([Id], [Type], [ApiScopeId]) VALUES (10, N'role', 6)
GO
SET IDENTITY_INSERT [dbo].[ApiScopeClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[ApiScopes] ON 

GO
INSERT [dbo].[ApiScopes] ([Id], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [ApiResourceId]) VALUES (2, N'test_webapi_auth', N'test_webapi_auth', NULL, 0, 0, 1, 2)
GO
INSERT [dbo].[ApiScopes] ([Id], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [ApiResourceId]) VALUES (5, N'ocelot_administration', N'Ocelot Administration', NULL, 0, 0, 1, 1)
GO
INSERT [dbo].[ApiScopes] ([Id], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [ApiResourceId]) VALUES (6, N'consul_administration', N'Consul Administration', NULL, 0, 0, 1, 3)
GO
SET IDENTITY_INSERT [dbo].[ApiScopes] OFF
GO
SET IDENTITY_INSERT [dbo].[ApiSecrets] ON 

GO
INSERT [dbo].[ApiSecrets] ([Id], [Description], [Value], [Expiration], [Type], [ApiResourceId]) VALUES (4, NULL, N'K7gNU3sdo+OL0wNhqoVWhr3g6s1xYv72ol/pe/Unols=', NULL, N'SharedSecret', 2)
GO
INSERT [dbo].[ApiSecrets] ([Id], [Description], [Value], [Expiration], [Type], [ApiResourceId]) VALUES (12, NULL, N'f8owWWbcbMWc7taWkchBlNidbEu1MAXwNRnWDHAYJR8=', NULL, N'SharedSecret', 1)
GO
INSERT [dbo].[ApiSecrets] ([Id], [Description], [Value], [Expiration], [Type], [ApiResourceId]) VALUES (14, NULL, N'M+FtWvJyJGgaDtpcyNPLTj0u+fnxYFVxVikxqeIrt5s=', NULL, N'SharedSecret', 3)
GO
SET IDENTITY_INSERT [dbo].[ApiSecrets] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientCorsOrigins] ON 

GO
INSERT [dbo].[ClientCorsOrigins] ([Id], [Origin], [ClientId]) VALUES (19, N'http://localhost:9000', 3)
GO
INSERT [dbo].[ClientCorsOrigins] ([Id], [Origin], [ClientId]) VALUES (22, N'http://localhost:61525', 10)
GO
SET IDENTITY_INSERT [dbo].[ClientCorsOrigins] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] ON 

GO
INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (105, N'password', 8)
GO
INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (106, N'implicit', 8)
GO
INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (138, N'implicit', 3)
GO
INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (143, N'password', 10)
GO
INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (144, N'implicit', 10)
GO
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientPostLogoutRedirectUris] ON 

GO
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [PostLogoutRedirectUri], [ClientId]) VALUES (22, N'http: //localhost:9000/signout-callback-oidc', 3)
GO
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [PostLogoutRedirectUri], [ClientId]) VALUES (25, N'http://localhost:61525/index.html', 10)
GO
SET IDENTITY_INSERT [dbo].[ClientPostLogoutRedirectUris] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientRedirectUris] ON 

GO
INSERT [dbo].[ClientRedirectUris] ([Id], [RedirectUri], [ClientId]) VALUES (25, N'http://localhost:9000/signin-oidc', 3)
GO
INSERT [dbo].[ClientRedirectUris] ([Id], [RedirectUri], [ClientId]) VALUES (28, N'http://localhost:61525/callback.html', 10)
GO
SET IDENTITY_INSERT [dbo].[ClientRedirectUris] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

GO
INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt]) VALUES (3, 1, N'identity_admin', N'oidc', 1, N'Identity Admin', NULL, N'http://localhost:9000', NULL, 1, 1, 0, 0, 0, 1, N'http://localhost:9000/signout-oidc', 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL)
GO
INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt]) VALUES (8, 1, N'testclient4', N'oidc', 0, N'testclient4', NULL, NULL, NULL, 1, 1, 0, 0, 0, 1, NULL, 1, NULL, 1, 1, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL)
GO
INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt]) VALUES (10, 1, N'ocelot_consul_admin', N'oidc', 1, N'Ocelot Consul Administration', NULL, N'http://localhost:61525', NULL, 1, 1, 0, 0, 0, 1, N'http://localhost:61525/index.html', 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL)
GO
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientScopes] ON 

GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (184, N'openid', 8)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (185, N'roles', 8)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (218, N'openid', 3)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (219, N'roles', 3)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (220, N'email', 3)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (225, N'openid', 10)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (226, N'roles', 10)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (227, N'ocelot_administration', 10)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (228, N'consul_administration', 10)
GO
SET IDENTITY_INSERT [dbo].[ClientScopes] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientSecrets] ON 

GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [ClientId]) VALUES (13, NULL, N'K7gNU3sdo+OL0wNhqoVWhr3g6s1xYv72ol/pe/Unols=', NULL, N'SharedSecret', 8)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [ClientId]) VALUES (19, NULL, N'nWHrGhJpYx+wWEADCCm6aQz1Is17cFgRtPn7xcRNBxs=', NULL, N'SharedSecret', 10)
GO
SET IDENTITY_INSERT [dbo].[ClientSecrets] OFF
GO
SET IDENTITY_INSERT [dbo].[IdentityClaims] ON 

GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (1, N'sub', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (2, N'email', 4)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (3, N'name', 4)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (4, N'email_verified', 3)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (5, N'email', 3)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (6, N'updated_at', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (7, N'locale', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (8, N'zoneinfo', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (9, N'birthdate', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (10, N'location', 4)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (11, N'gender', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (12, N'picture', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (13, N'profile', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (14, N'preferred_username', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (15, N'nickname', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (16, N'middle_name', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (17, N'given_name', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (18, N'family_name', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (19, N'name', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (20, N'website', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (21, N'role', 5)
GO
SET IDENTITY_INSERT [dbo].[IdentityClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[IdentityResources] ON 

GO
INSERT [dbo].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument]) VALUES (1, 1, N'openid', N'Your user identifier', NULL, 1, 0, 1)
GO
INSERT [dbo].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument]) VALUES (2, 1, N'profile', N'User profile', N'Your user profile information (first name, last name, etc.)', 0, 1, 1)
GO
INSERT [dbo].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument]) VALUES (3, 1, N'email', N'Your email address', NULL, 0, 1, 1)
GO
INSERT [dbo].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument]) VALUES (4, 1, N'custom.profile', N'custom.profile', NULL, 0, 0, 1)
GO
INSERT [dbo].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument]) VALUES (5, 1, N'roles', N'Roles', NULL, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[IdentityResources] OFF
GO
SET IDENTITY_INSERT [dbo].[Log] ON 

GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (1, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-03T18:42:10.4870000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: Response status code does not indicate success: 500 (Internal Server Error).
   at System.Net.Http.HttpResponseMessage.EnsureSuccessStatusCode()
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-03T18:42:10.4861392+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: Response status code does not indicate success: 500 (Internal Server Error).\r\n   at System.Net.Http.HttpResponseMessage.EnsureSuccessStatusCode()\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (2, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-03T19:34:09.9230000+00:00' AS DateTimeOffset), N'System.NullReferenceException: Object reference not set to an instance of an object.
   at Skoruba.IdentityServer4.Admin.Helpers.StartupHelpers.OnRedirectToIdentityProvider(RedirectContext n) in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Helpers\StartupHelpers.cs:line 297
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectEvents.RedirectToIdentityProvider(RedirectContext context)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-03T19:34:09.9227559+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at Skoruba.IdentityServer4.Admin.Helpers.StartupHelpers.OnRedirectToIdentityProvider(RedirectContext n) in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Helpers\\StartupHelpers.cs:line 297\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectEvents.RedirectToIdentityProvider(RedirectContext context)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (3, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-03T19:36:54.2930000+00:00' AS DateTimeOffset), N'System.NullReferenceException: Object reference not set to an instance of an object.
   at Skoruba.IdentityServer4.Admin.Helpers.StartupHelpers.OnRedirectToIdentityProvider(RedirectContext n) in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Helpers\StartupHelpers.cs:line 297
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectEvents.RedirectToIdentityProvider(RedirectContext context)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-03T19:36:54.2935070+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at Skoruba.IdentityServer4.Admin.Helpers.StartupHelpers.OnRedirectToIdentityProvider(RedirectContext n) in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Helpers\\StartupHelpers.cs:line 297\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectEvents.RedirectToIdentityProvider(RedirectContext context)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (4, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T10:04:14.2400000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http: //localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http: //localhost:5000/.well-known/openid-configuration''. ---> System.InvalidOperationException: An invalid request URI was provided. The request URI must either be an absolute URI or BaseAddress must be set.
   at System.Net.Http.HttpClient.PrepareRequestMessage(HttpRequestMessage request)
   at System.Net.Http.HttpClient.SendAsync(HttpRequestMessage request, HttpCompletionOption completionOption, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.GetAsync(Uri requestUri, HttpCompletionOption completionOption, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.GetAsync(String requestUri, CancellationToken cancellationToken)
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T10:04:14.2408863+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http: //localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http: //localhost:5000/.well-known/openid-configuration''. ---> System.InvalidOperationException: An invalid request URI was provided. The request URI must either be an absolute URI or BaseAddress must be set.\r\n   at System.Net.Http.HttpClient.PrepareRequestMessage(HttpRequestMessage request)\r\n   at System.Net.Http.HttpClient.SendAsync(HttpRequestMessage request, HttpCompletionOption completionOption, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.GetAsync(Uri requestUri, HttpCompletionOption completionOption, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.GetAsync(String requestUri, CancellationToken cancellationToken)\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (5, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T10:23:50.5170000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http: //localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http: //localhost:5000/.well-known/openid-configuration''. ---> System.InvalidOperationException: An invalid request URI was provided. The request URI must either be an absolute URI or BaseAddress must be set.
   at System.Net.Http.HttpClient.PrepareRequestMessage(HttpRequestMessage request)
   at System.Net.Http.HttpClient.SendAsync(HttpRequestMessage request, HttpCompletionOption completionOption, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.GetAsync(Uri requestUri, HttpCompletionOption completionOption, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.GetAsync(String requestUri, CancellationToken cancellationToken)
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T10:23:50.5170785+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http: //localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http: //localhost:5000/.well-known/openid-configuration''. ---> System.InvalidOperationException: An invalid request URI was provided. The request URI must either be an absolute URI or BaseAddress must be set.\r\n   at System.Net.Http.HttpClient.PrepareRequestMessage(HttpRequestMessage request)\r\n   at System.Net.Http.HttpClient.SendAsync(HttpRequestMessage request, HttpCompletionOption completionOption, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.GetAsync(Uri requestUri, HttpCompletionOption completionOption, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.GetAsync(String requestUri, CancellationToken cancellationToken)\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (6, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T13:48:47.7470000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: Response status code does not indicate success: 500 (Internal Server Error).
   at System.Net.Http.HttpResponseMessage.EnsureSuccessStatusCode()
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T13:48:47.7452053+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: Response status code does not indicate success: 500 (Internal Server Error).\r\n   at System.Net.Http.HttpResponseMessage.EnsureSuccessStatusCode()\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (7, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T14:21:51.0970000+00:00' AS DateTimeOffset), N'System.Exception: An error was encountered while handling the remote login. ---> System.Exception: Correlation failed.
   --- End of inner exception stack trace ---
   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T14:21:51.0965115+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.Exception: An error was encountered while handling the remote login. ---> System.Exception: Correlation failed.\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (8, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T14:40:07.0630000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: RenderSection invocation in ''/Views/Account/AccessDenied.cshtml'' is invalid. RenderSection can only be called from a layout page.
   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.EnsureMethodCanBeInvoked(String methodName)
   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.RenderSection(String name, Boolean required)
   at AspNetCore.Views_Account_AccessDenied.<ExecuteAsync>b__21_0() in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Views\Account\AccessDenied.cshtml:line 24
   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()
   at AspNetCore.Views_Account_AccessDenied.ExecuteAsync() in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Views\Account\AccessDenied.cshtml:line 6
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)
   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T14:40:07.0628658+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: RenderSection invocation in ''/Views/Account/AccessDenied.cshtml'' is invalid. RenderSection can only be called from a layout page.\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.EnsureMethodCanBeInvoked(String methodName)\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.RenderSection(String name, Boolean required)\r\n   at AspNetCore.Views_Account_AccessDenied.<ExecuteAsync>b__21_0() in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Views\\Account\\AccessDenied.cshtml:line 24\r\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()\r\n   at AspNetCore.Views_Account_AccessDenied.ExecuteAsync() in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Views\\Account\\AccessDenied.cshtml:line 6\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)\r\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)\r\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)\r\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)\r\n   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (9, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T14:41:29.9500000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: RenderSection invocation in ''/Views/Account/AccessDenied.cshtml'' is invalid. RenderSection can only be called from a layout page.
   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.EnsureMethodCanBeInvoked(String methodName)
   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.RenderSection(String name, Boolean required)
   at AspNetCore.Views_Account_AccessDenied.<ExecuteAsync>b__21_0() in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Views\Account\AccessDenied.cshtml:line 24
   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()
   at AspNetCore.Views_Account_AccessDenied.ExecuteAsync() in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Views\Account\AccessDenied.cshtml:line 6
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)
   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T14:41:29.9500990+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: RenderSection invocation in ''/Views/Account/AccessDenied.cshtml'' is invalid. RenderSection can only be called from a layout page.\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.EnsureMethodCanBeInvoked(String methodName)\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.RenderSection(String name, Boolean required)\r\n   at AspNetCore.Views_Account_AccessDenied.<ExecuteAsync>b__21_0() in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Views\\Account\\AccessDenied.cshtml:line 24\r\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()\r\n   at AspNetCore.Views_Account_AccessDenied.ExecuteAsync() in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Views\\Account\\AccessDenied.cshtml:line 6\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)\r\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)\r\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)\r\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)\r\n   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (10, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T14:43:34.5030000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: RenderSection invocation in ''/Views/Account/AccessDenied.cshtml'' is invalid. RenderSection can only be called from a layout page.
   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.EnsureMethodCanBeInvoked(String methodName)
   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.RenderSection(String name, Boolean required)
   at AspNetCore.Views_Account_AccessDenied.<ExecuteAsync>b__21_0() in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Views\Account\AccessDenied.cshtml:line 24
   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()
   at AspNetCore.Views_Account_AccessDenied.ExecuteAsync() in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Views\Account\AccessDenied.cshtml:line 6
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)
   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T14:43:34.5041049+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: RenderSection invocation in ''/Views/Account/AccessDenied.cshtml'' is invalid. RenderSection can only be called from a layout page.\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.EnsureMethodCanBeInvoked(String methodName)\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorPage.RenderSection(String name, Boolean required)\r\n   at AspNetCore.Views_Account_AccessDenied.<ExecuteAsync>b__21_0() in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Views\\Account\\AccessDenied.cshtml:line 24\r\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()\r\n   at AspNetCore.Views_Account_AccessDenied.ExecuteAsync() in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Views\\Account\\AccessDenied.cshtml:line 6\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)\r\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)\r\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)\r\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)\r\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)\r\n   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (11, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T18:59:18.5930000+00:00' AS DateTimeOffset), N'System.Exception: An error was encountered while handling the remote login. ---> System.Exception: Correlation failed.
   --- End of inner exception stack trace ---
   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T18:59:18.5946408+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.Exception: An error was encountered while handling the remote login. ---> System.Exception: Correlation failed.\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (12, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T20:18:15.1870000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   --- End of inner exception stack trace ---
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)
   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T20:18:15.1873222+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)\r\n   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (13, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T20:18:21.4300000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T20:18:21.4308369+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (14, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T20:18:24.4570000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T20:18:24.4576014+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (15, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T20:18:27.0000000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T20:18:26.9992957+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (16, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T20:18:28.2570000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T20:18:28.2575226+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (17, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T20:18:31.1170000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T20:18:31.1181601+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (18, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T20:18:32.8700000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T20:18:32.8714300+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (19, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-04T20:56:47.2570000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   --- End of inner exception stack trace ---
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)
   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-04T20:56:47.2555133+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)\r\n   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (20, N'Message contains error: ''"access_denied"'', error_description: ''"error_description is null"'', error_uri: ''"error_uri is null"''.', N'Message contains error: ''{Error}'', error_description: ''{ErrorDescription}'', error_uri: ''{ErrorUri}''.', N'Error', CAST(N'2018-09-05T15:59:18.4230000+00:00' AS DateTimeOffset), NULL, N'{"Timestamp":"2018-09-05T15:59:18.4216723+08:00","Level":"Error","MessageTemplate":"Message contains error: ''{Error}'', error_description: ''{ErrorDescription}'', error_uri: ''{ErrorUri}''.","Properties":{"Error":"access_denied","ErrorDescription":"error_description is null","ErrorUri":"error_uri is null","EventId":{"Id":12},"SourceContext":"Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (21, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-05T15:59:18.8670000+00:00' AS DateTimeOffset), N'System.Exception: An error was encountered while handling the remote login. ---> Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectProtocolException: Message contains error: ''access_denied'', error_description: ''error_description is null'', error_uri: ''error_uri is null''.
   --- End of inner exception stack trace ---
   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-05T15:59:18.8677196+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.Exception: An error was encountered while handling the remote login. ---> Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectProtocolException: Message contains error: ''access_denied'', error_description: ''error_description is null'', error_uri: ''error_uri is null''.\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (22, N'Message contains error: ''"access_denied"'', error_description: ''"error_description is null"'', error_uri: ''"error_uri is null"''.', N'Message contains error: ''{Error}'', error_description: ''{ErrorDescription}'', error_uri: ''{ErrorUri}''.', N'Error', CAST(N'2018-09-05T16:03:01.2470000+00:00' AS DateTimeOffset), NULL, N'{"Timestamp":"2018-09-05T16:03:01.2472712+08:00","Level":"Error","MessageTemplate":"Message contains error: ''{Error}'', error_description: ''{ErrorDescription}'', error_uri: ''{ErrorUri}''.","Properties":{"Error":"access_denied","ErrorDescription":"error_description is null","ErrorUri":"error_uri is null","EventId":{"Id":12},"SourceContext":"Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (23, N'Message contains error: ''"access_denied"'', error_description: ''"error_description is null"'', error_uri: ''"error_uri is null"''.', N'Message contains error: ''{Error}'', error_description: ''{ErrorDescription}'', error_uri: ''{ErrorUri}''.', N'Error', CAST(N'2018-09-05T16:03:37.0330000+00:00' AS DateTimeOffset), NULL, N'{"Timestamp":"2018-09-05T16:03:37.0348428+08:00","Level":"Error","MessageTemplate":"Message contains error: ''{Error}'', error_description: ''{ErrorDescription}'', error_uri: ''{ErrorUri}''.","Properties":{"Error":"access_denied","ErrorDescription":"error_description is null","ErrorUri":"error_uri is null","EventId":{"Id":12},"SourceContext":"Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (24, N'Message contains error: ''"access_denied"'', error_description: ''"error_description is null"'', error_uri: ''"error_uri is null"''.', N'Message contains error: ''{Error}'', error_description: ''{ErrorDescription}'', error_uri: ''{ErrorUri}''.', N'Error', CAST(N'2018-09-05T16:03:39.2430000+00:00' AS DateTimeOffset), NULL, N'{"Timestamp":"2018-09-05T16:03:39.2433999+08:00","Level":"Error","MessageTemplate":"Message contains error: ''{Error}'', error_description: ''{ErrorDescription}'', error_uri: ''{ErrorUri}''.","Properties":{"Error":"access_denied","ErrorDescription":"error_description is null","ErrorUri":"error_uri is null","EventId":{"Id":12},"SourceContext":"Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (25, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-05T16:50:13.5130000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   --- End of inner exception stack trace ---
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)
   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-05T16:50:13.5126715+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)\r\n   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (26, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-05T16:51:12.8300000+00:00' AS DateTimeOffset), N'System.Exception: An error was encountered while handling the remote login. ---> System.Exception: Correlation failed.
   --- End of inner exception stack trace ---
   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-05T16:51:12.8294541+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.Exception: An error was encountered while handling the remote login. ---> System.Exception: Correlation failed.\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (27, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-05T16:51:24.5000000+00:00' AS DateTimeOffset), N'System.Exception: An error was encountered while handling the remote login. ---> System.Exception: Correlation failed.
   --- End of inner exception stack trace ---
   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-05T16:51:24.4983515+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.Exception: An error was encountered while handling the remote login. ---> System.Exception: Correlation failed.\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.AspNetCore.Authentication.RemoteAuthenticationHandler`1.HandleRequestAsync()\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (28, N'The remote signout request was ignored because the ''sid'' parameter didn''t match the expected value, which may indicate an unsolicited logout.', N'The remote signout request was ignored because the ''sid'' parameter didn''t match the expected value, which may indicate an unsolicited logout.', N'Error', CAST(N'2018-09-05T16:51:33.3500000+00:00' AS DateTimeOffset), NULL, N'{"Timestamp":"2018-09-05T16:51:33.3499086+08:00","Level":"Error","MessageTemplate":"The remote signout request was ignored because the ''sid'' parameter didn''t match the expected value, which may indicate an unsolicited logout.","Properties":{"EventId":{"Id":48},"SourceContext":"Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (29, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-05T17:05:48.5070000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.SignOutAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.SignOutAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.SignOutResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-05T17:05:48.5075022+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.SignOutAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.SignOutAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.SignOutResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (30, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-05T17:05:49.2870000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   --- End of inner exception stack trace ---
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)
   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.SignOutAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.SignOutAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.SignOutResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-05T17:05:49.2881099+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)\r\n   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.SignOutAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.SignOutAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.SignOutResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (31, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-05T17:06:13.1930000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.SignOutAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.SignOutAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.SignOutResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-05T17:06:13.1934606+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''.\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.SignOutAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.SignOutAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.SignOutResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResultFilterAsync[TFilter,TFilterAsync]()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (32, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-05T17:15:27.4130000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   --- End of inner exception stack trace ---
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)
   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-05T17:15:27.4119999+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)\r\n   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (33, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T08:03:23.0400000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   --- End of inner exception stack trace ---
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)
   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-06T08:03:23.0384272+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)\r\n   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (34, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T10:50:41.2470000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, Cookies, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler]("Bearer",...)?
   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)
   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)
   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-06T10:50:41.2476311+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, Cookies, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler](\"Bearer\",...)?\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)\r\n   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)\r\n   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (35, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T10:55:30.8330000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: The MetadataAddress or Authority must use HTTPS unless disabled for development by setting RequireHttpsMetadata=false.
   at Microsoft.AspNetCore.Authentication.JwtBearer.JwtBearerPostConfigureOptions.PostConfigure(String name, JwtBearerOptions options)
   at Microsoft.Extensions.Options.OptionsFactory`1.Create(String name)
   at Microsoft.Extensions.Options.OptionsMonitor`1.<>c__DisplayClass10_0.<Get>b__0()
   at System.Lazy`1.ViaFactory(LazyThreadSafetyMode mode)
   at System.Lazy`1.ExecutionAndPublication(LazyHelper executionAndPublication, Boolean useDefaultConstructor)
   at System.Lazy`1.CreateValue()
   at Microsoft.Extensions.Options.OptionsCache`1.GetOrAdd(String name, Func`1 createOptions)
   at Microsoft.Extensions.Options.OptionsMonitor`1.Get(String name)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.InitializeAsync(AuthenticationScheme scheme, HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandlerProvider.GetHandlerAsync(HttpContext context, String authenticationScheme)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)
   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)
   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-06T10:55:30.8317715+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: The MetadataAddress or Authority must use HTTPS unless disabled for development by setting RequireHttpsMetadata=false.\r\n   at Microsoft.AspNetCore.Authentication.JwtBearer.JwtBearerPostConfigureOptions.PostConfigure(String name, JwtBearerOptions options)\r\n   at Microsoft.Extensions.Options.OptionsFactory`1.Create(String name)\r\n   at Microsoft.Extensions.Options.OptionsMonitor`1.<>c__DisplayClass10_0.<Get>b__0()\r\n   at System.Lazy`1.ViaFactory(LazyThreadSafetyMode mode)\r\n   at System.Lazy`1.ExecutionAndPublication(LazyHelper executionAndPublication, Boolean useDefaultConstructor)\r\n   at System.Lazy`1.CreateValue()\r\n   at Microsoft.Extensions.Options.OptionsCache`1.GetOrAdd(String name, Func`1 createOptions)\r\n   at Microsoft.Extensions.Options.OptionsMonitor`1.Get(String name)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.InitializeAsync(AuthenticationScheme scheme, HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandlerProvider.GetHandlerAsync(HttpContext context, String authenticationScheme)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)\r\n   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)\r\n   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (36, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T13:30:49.4470000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler]("Bearer",...)?
   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)
   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)
   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-06T13:30:49.4477447+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler](\"Bearer\",...)?\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)\r\n   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)\r\n   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (37, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T13:30:53.4600000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler]("Bearer",...)?
   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)
   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)
   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-06T13:30:53.4598951+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler](\"Bearer\",...)?\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)\r\n   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)\r\n   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (38, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T13:31:37.6800000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler]("Bearer",...)?
   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)
   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)
   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-06T13:31:37.6791868+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler](\"Bearer\",...)?\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)\r\n   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)\r\n   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (39, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T13:31:49.7870000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler]("Bearer",...)?
   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)
   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)
   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-06T13:31:49.7858850+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler](\"Bearer\",...)?\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)\r\n   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)\r\n   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (40, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T13:32:20.8330000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler]("Bearer",...)?
   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)
   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)
   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-06T13:32:20.8341296+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, IdentityBearerIdentityServerAuthenticationJwt, IdentityBearerIdentityServerAuthenticationIntrospection, IdentityBearer, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler](\"Bearer\",...)?\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)\r\n   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)\r\n   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (41, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T13:43:21.8770000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, Cookies, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler]("Bearer",...)?
   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)
   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)
   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-06T13:43:21.8769712+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: No authentication handler is registered for the scheme ''Bearer''. The registered schemes are: Identity.Application, Identity.External, Identity.TwoFactorRememberMe, Identity.TwoFactorUserId, Cookies, oidc. Did you forget to call AddAuthentication().Add[SomeAuthHandler](\"Bearer\",...)?\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.AuthenticateAsync(HttpContext context, String scheme)\r\n   at Microsoft.AspNetCore.Authorization.Policy.PolicyEvaluator.AuthenticateAsync(AuthorizationPolicy policy, HttpContext context)\r\n   at Microsoft.AspNetCore.Mvc.Authorization.AuthorizeFilter.OnAuthorizationAsync(AuthorizationFilterContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (42, N'An exception occurred in the database while iterating the results of a query for context type ''"Skoruba.IdentityServer4.Admin.EntityFramework.DbContexts.AdminDbContext"''."
""System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)
   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)
ClientConnectionId:057be6d2-0eac-4003-8417-ef22f6cee01b
Error Number:245,State:1,Class:16"', N'An exception occurred in the database while iterating the results of a query for context type ''{contextType}''.{newline}{error}', N'Error', CAST(N'2018-09-06T19:48:12.7970000+00:00' AS DateTimeOffset), N'System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)
   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)
ClientConnectionId:057be6d2-0eac-4003-8417-ef22f6cee01b
Error Number:245,State:1,Class:16', N'{"Timestamp":"2018-09-06T19:48:12.7980807+08:00","Level":"Error","MessageTemplate":"An exception occurred in the database while iterating the results of a query for context type ''{contextType}''.{newline}{error}","Exception":"System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。\r\n   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)\r\n   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)\r\n   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)\r\n   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)\r\n   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)\r\n--- End of stack trace from previous location where exception was thrown ---\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)\r\nClientConnectionId:057be6d2-0eac-4003-8417-ef22f6cee01b\r\nError Number:245,State:1,Class:16","Properties":{"contextType":"Skoruba.IdentityServer4.Admin.EntityFramework.DbContexts.AdminDbContext","newline":"\r\n","error":"System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。\r\n   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)\r\n   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)\r\n   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)\r\n   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)\r\n   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)\r\n--- End of stack trace from previous location where exception was thrown ---\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)\r\nClientConnectionId:057be6d2-0eac-4003-8417-ef22f6cee01b\r\nError Number:245,State:1,Class:16","EventId":{"Id":10100,"Name":"Microsoft.EntityFrameworkCore.Query.QueryIterationFailed"},"SourceContext":"Microsoft.EntityFrameworkCore.Query","ActionId":"e5b76d45-5c11-48a9-bb87-3dc6c6305a9c","ActionName":"Skoruba.IdentityServer4.Admin.Controllers.GrantController.PersistedGrants (Skoruba.IdentityServer4.Admin)"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (43, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-06T19:48:14.6430000+00:00' AS DateTimeOffset), N'System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)
   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)
   at System.Linq.AsyncEnumerable.Aggregate_[TSource,TAccumulate,TResult](IAsyncEnumerable`1 source, TAccumulate seed, Func`3 accumulator, Func`2 resultSelector, CancellationToken cancellationToken)
   at Skoruba.IdentityServer4.Admin.BusinessLogic.Repositories.PersistedGrantRepository.GetPersitedGrantsByUsers(String search, Int32 page, Int32 pageSize) in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin.BusinessLogic\Repositories\PersistedGrantRepository.cs:line 42
   at Skoruba.IdentityServer4.Admin.BusinessLogic.Services.PersistedGrantService.GetPersitedGrantsByUsers(String search, Int32 page, Int32 pageSize) in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin.BusinessLogic\Services\PersistedGrantService.cs:line 24
   at Skoruba.IdentityServer4.Admin.Controllers.GrantController.PersistedGrants(Nullable`1 page, String search) in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Controllers\GrantController.cs:line 35
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextExceptionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)
ClientConnectionId:057be6d2-0eac-4003-8417-ef22f6cee01b
Error Number:245,State:1,Class:16', N'{"Timestamp":"2018-09-06T19:48:14.6429744+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。\r\n   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)\r\n   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)\r\n   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)\r\n   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)\r\n   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)\r\n--- End of stack trace from previous location where exception was thrown ---\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)\r\n   at System.Linq.AsyncEnumerable.Aggregate_[TSource,TAccumulate,TResult](IAsyncEnumerable`1 source, TAccumulate seed, Func`3 accumulator, Func`2 resultSelector, CancellationToken cancellationToken)\r\n   at Skoruba.IdentityServer4.Admin.BusinessLogic.Repositories.PersistedGrantRepository.GetPersitedGrantsByUsers(String search, Int32 page, Int32 pageSize) in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin.BusinessLogic\\Repositories\\PersistedGrantRepository.cs:line 42\r\n   at Skoruba.IdentityServer4.Admin.BusinessLogic.Services.PersistedGrantService.GetPersitedGrantsByUsers(String search, Int32 page, Int32 pageSize) in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin.BusinessLogic\\Services\\PersistedGrantService.cs:line 24\r\n   at Skoruba.IdentityServer4.Admin.Controllers.GrantController.PersistedGrants(Nullable`1 page, String search) in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Controllers\\GrantController.cs:line 35\r\n   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextExceptionFilterAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)\r\nClientConnectionId:057be6d2-0eac-4003-8417-ef22f6cee01b\r\nError Number:245,State:1,Class:16","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (44, N'An exception occurred in the database while iterating the results of a query for context type ''"Skoruba.IdentityServer4.Admin.EntityFramework.DbContexts.AdminDbContext"''."
""System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)
   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)
ClientConnectionId:3d729ea5-c2c6-40c8-84ed-abbea43e8c45
Error Number:245,State:1,Class:16"', N'An exception occurred in the database while iterating the results of a query for context type ''{contextType}''.{newline}{error}', N'Error', CAST(N'2018-09-10T08:32:06.5970000+00:00' AS DateTimeOffset), N'System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)
   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)
ClientConnectionId:3d729ea5-c2c6-40c8-84ed-abbea43e8c45
Error Number:245,State:1,Class:16', N'{"Timestamp":"2018-09-10T08:32:06.5975420+08:00","Level":"Error","MessageTemplate":"An exception occurred in the database while iterating the results of a query for context type ''{contextType}''.{newline}{error}","Exception":"System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。\r\n   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)\r\n   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)\r\n   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)\r\n   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)\r\n   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)\r\n--- End of stack trace from previous location where exception was thrown ---\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)\r\nClientConnectionId:3d729ea5-c2c6-40c8-84ed-abbea43e8c45\r\nError Number:245,State:1,Class:16","Properties":{"contextType":"Skoruba.IdentityServer4.Admin.EntityFramework.DbContexts.AdminDbContext","newline":"\r\n","error":"System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。\r\n   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)\r\n   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)\r\n   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)\r\n   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)\r\n   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)\r\n--- End of stack trace from previous location where exception was thrown ---\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)\r\nClientConnectionId:3d729ea5-c2c6-40c8-84ed-abbea43e8c45\r\nError Number:245,State:1,Class:16","EventId":{"Id":10100,"Name":"Microsoft.EntityFrameworkCore.Query.QueryIterationFailed"},"SourceContext":"Microsoft.EntityFrameworkCore.Query","ActionId":"c5972078-e13b-43d5-88fd-b6b1e8f5b030","ActionName":"Skoruba.IdentityServer4.Admin.Controllers.GrantController.PersistedGrants (Skoruba.IdentityServer4.Admin)"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (45, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-10T08:32:08.5730000+00:00' AS DateTimeOffset), N'System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)
   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)
   at System.Linq.AsyncEnumerable.Aggregate_[TSource,TAccumulate,TResult](IAsyncEnumerable`1 source, TAccumulate seed, Func`3 accumulator, Func`2 resultSelector, CancellationToken cancellationToken)
   at Skoruba.IdentityServer4.Admin.BusinessLogic.Repositories.PersistedGrantRepository.GetPersitedGrantsByUsers(String search, Int32 page, Int32 pageSize) in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin.BusinessLogic\Repositories\PersistedGrantRepository.cs:line 42
   at Skoruba.IdentityServer4.Admin.BusinessLogic.Services.PersistedGrantService.GetPersitedGrantsByUsers(String search, Int32 page, Int32 pageSize) in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin.BusinessLogic\Services\PersistedGrantService.cs:line 24
   at Skoruba.IdentityServer4.Admin.Controllers.GrantController.PersistedGrants(Nullable`1 page, String search) in E:\_TFS\IdentityServer4.Admin\src\Skoruba.IdentityServer4.Admin\Controllers\GrantController.cs:line 35
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextExceptionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)
ClientConnectionId:3d729ea5-c2c6-40c8-84ed-abbea43e8c45
Error Number:245,State:1,Class:16', N'{"Timestamp":"2018-09-10T08:32:08.5726951+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.Data.SqlClient.SqlException (0x80131904): 在将 nvarchar 值 ''ADMIN'' 转换成数据类型 int 时失败。\r\n   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)\r\n   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)\r\n   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)\r\n   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)\r\n   at System.Data.SqlClient.SqlDataReader.<>c__DisplayClass190_0.<ReadAsync>b__1(Task t)\r\n   at System.Data.SqlClient.SqlDataReader.InvokeRetryable[T](Func`2 moreFunc, TaskCompletionSource`1 source, IDisposable objectToDispose)\r\n--- End of stack trace from previous location where exception was thrown ---\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.BufferlessMoveNext(DbContext _, Boolean buffer, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncQueryingEnumerable`1.AsyncEnumerator.MoveNext(CancellationToken cancellationToken)\r\n   at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext(CancellationToken cancellationToken)\r\n   at System.Linq.AsyncEnumerable.Aggregate_[TSource,TAccumulate,TResult](IAsyncEnumerable`1 source, TAccumulate seed, Func`3 accumulator, Func`2 resultSelector, CancellationToken cancellationToken)\r\n   at Skoruba.IdentityServer4.Admin.BusinessLogic.Repositories.PersistedGrantRepository.GetPersitedGrantsByUsers(String search, Int32 page, Int32 pageSize) in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin.BusinessLogic\\Repositories\\PersistedGrantRepository.cs:line 42\r\n   at Skoruba.IdentityServer4.Admin.BusinessLogic.Services.PersistedGrantService.GetPersitedGrantsByUsers(String search, Int32 page, Int32 pageSize) in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin.BusinessLogic\\Services\\PersistedGrantService.cs:line 24\r\n   at Skoruba.IdentityServer4.Admin.Controllers.GrantController.PersistedGrants(Nullable`1 page, String search) in E:\\_TFS\\IdentityServer4.Admin\\src\\Skoruba.IdentityServer4.Admin\\Controllers\\GrantController.cs:line 35\r\n   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextExceptionFilterAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)\r\nClientConnectionId:3d729ea5-c2c6-40c8-84ed-abbea43e8c45\r\nError Number:245,State:1,Class:16","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [LogEvent], [Properties]) VALUES (46, N'An unhandled exception has occurred while executing the request.', N'An unhandled exception has occurred while executing the request.', N'Error', CAST(N'2018-09-17T14:22:08.7170000+00:00' AS DateTimeOffset), N'System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   --- End of inner exception stack trace ---
   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)
   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   --- End of inner exception stack trace ---
   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)
   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)
   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)
   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'{"Timestamp":"2018-09-17T14:22:08.7179106+08:00","Level":"Error","MessageTemplate":"An unhandled exception has occurred while executing the request.","Exception":"System.InvalidOperationException: IDX20803: Unable to obtain configuration from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.IO.IOException: IDX20804: Unable to retrieve document from: ''http://localhost:5000/.well-known/openid-configuration''. ---> System.Net.Http.HttpRequestException: No connection could be made because the target machine actively refused it ---> System.Net.Sockets.SocketException: No connection could be made because the target machine actively refused it\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.Http.ConnectHelper.ConnectAsync(String host, Int32 port, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.CreateConnectionAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.WaitForCreatedConnectionAsync(ValueTask`1 creationTask)\r\n   at System.Threading.Tasks.ValueTask`1.get_Result()\r\n   at System.Net.Http.HttpConnectionPool.SendWithRetryAsync(HttpRequestMessage request, Boolean doRequestAuth, CancellationToken cancellationToken)\r\n   at System.Net.Http.RedirectHandler.SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)\r\n   at System.Net.Http.HttpClient.FinishSendAsyncBuffered(Task`1 sendTask, HttpRequestMessage request, CancellationTokenSource cts, Boolean disposeCts)\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.HttpDocumentRetriever.GetDocumentAsync(String address, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.OpenIdConnect.OpenIdConnectConfigurationRetriever.GetAsync(String address, IDocumentRetriever retriever, CancellationToken cancel)\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   --- End of inner exception stack trace ---\r\n   at Microsoft.IdentityModel.Protocols.ConfigurationManager`1.GetConfigurationAsync(CancellationToken cancel)\r\n   at Microsoft.AspNetCore.Authentication.OpenIdConnect.OpenIdConnectHandler.HandleChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationHandler`1.ChallengeAsync(AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationService.ChallengeAsync(HttpContext context, String scheme, AuthenticationProperties properties)\r\n   at Microsoft.AspNetCore.Mvc.ChallengeResult.ExecuteResultAsync(ActionContext context)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeResultAsync(IActionResult result)\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAlwaysRunResultFilters()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()\r\n   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()\r\n   at Microsoft.AspNetCore.Builder.RouterMiddleware.Invoke(HttpContext httpContext)\r\n   at Microsoft.AspNetCore.Localization.RequestLocalizationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.CspMiddleware.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at NWebsec.AspNetCore.Middleware.Middleware.MiddlewareBase.Invoke(HttpContext context)\r\n   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)","Properties":{"EventId":{"Id":1,"Name":"UnhandledException"},"SourceContext":"Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware"}}
', NULL)
GO
SET IDENTITY_INSERT [dbo].[Log] OFF
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'86Da+HcpS3sQigMuy5IiVbBiRa0So6LdnaVcmAnASik=', N'user_consent', N'2', N'ocelot_consul_admin', CAST(N'2018-09-17T08:18:59.0000000' AS DateTime2), NULL, N'{"SubjectId":"2","ClientId":"ocelot_consul_admin","Scopes":["openid","roles","ocelot_administration","consul_administration"],"CreationTime":"2018-09-17T08:18:59Z","Expiration":null}')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'Js6wJdqTchG5+1Y0zj7NvsqWWwFLet6ooz9W5ExBBGI=', N'user_consent', N'2', N'identity_admin', CAST(N'2018-09-17T07:04:24.0000000' AS DateTime2), NULL, N'{"SubjectId":"2","ClientId":"identity_admin","Scopes":["openid","email","roles"],"CreationTime":"2018-09-17T07:04:24Z","Expiration":null}')
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'identity_administrator', N'IDENTITY_ADMINISTRATOR', N'b76f549f-8a69-4136-afd1-af7177acf2cc')
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'ocelot_administrator', N'OCELOT_ADMINISTRATOR', N'40e6b87a-1478-4e3f-90bc-77f53b798cc7')
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (4, N'test_webapi_access', N'TEST_WEBAPI_ACCESS', N'b276b63b-3a00-44ec-a893-f96fd08aa88e')
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (5, N'consul_administrator', N'CONSUL_ADMINISTRATOR', N'a5feecd9-72b9-4562-9ec9-bfbb9c8a1e51')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (2, 2)
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (2, 3)
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (4, 4)
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (2, 5)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, N'admin', N'ADMIN', N'admin@example.com', N'ADMIN@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEHSr3B3fBHOfNJ49OgNjntdwzSSnqPGQajL82h1eNizpQgzAlaugY2d6XBzayKpRaQ==', N'VKTTKF5XCJYQMT6VYYAEEMWQT47JS2CC', N'bd03eeaf-4130-496d-abb8-8513dc4f7def', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (4, N'user_test_webapi', N'USER_TEST_WEBAPI', N'user_test_webapi@email.com', N'USER_TEST_WEBAPI@EMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGaBZ5vN0NgCYMu7ofndWZwkiZhiIHna/IHPknCQQ69UcbGrW55sSBSFoLF5vEZQeQ==', N'P42TZIJBSVU4H36ZCI73WXMG53ULMWHD', N'cf6ce38d-abd9-4a4a-b4ec-4842b31b80ad', NULL, 0, 0, CAST(N'2018-09-07T08:18:44.6506557+00:00' AS DateTimeOffset), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_ApiClaims_ApiResourceId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApiClaims_ApiResourceId] ON [dbo].[ApiClaims]
(
	[ApiResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApiResources_Name]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ApiResources_Name] ON [dbo].[ApiResources]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiScopeClaims_ApiScopeId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApiScopeClaims_ApiScopeId] ON [dbo].[ApiScopeClaims]
(
	[ApiScopeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiScopes_ApiResourceId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApiScopes_ApiResourceId] ON [dbo].[ApiScopes]
(
	[ApiResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApiScopes_Name]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ApiScopes_Name] ON [dbo].[ApiScopes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiSecrets_ApiResourceId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApiSecrets_ApiResourceId] ON [dbo].[ApiSecrets]
(
	[ApiResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientClaims_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientClaims_ClientId] ON [dbo].[ClientClaims]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientCorsOrigins_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientCorsOrigins_ClientId] ON [dbo].[ClientCorsOrigins]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientGrantTypes_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientGrantTypes_ClientId] ON [dbo].[ClientGrantTypes]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientIdPRestrictions_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientIdPRestrictions_ClientId] ON [dbo].[ClientIdPRestrictions]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientPostLogoutRedirectUris_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientPostLogoutRedirectUris_ClientId] ON [dbo].[ClientPostLogoutRedirectUris]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientProperties_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientProperties_ClientId] ON [dbo].[ClientProperties]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientRedirectUris_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientRedirectUris_ClientId] ON [dbo].[ClientRedirectUris]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Clients_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Clients_ClientId] ON [dbo].[Clients]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientScopes_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientScopes_ClientId] ON [dbo].[ClientScopes]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientSecrets_ClientId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientSecrets_ClientId] ON [dbo].[ClientSecrets]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentityClaims_IdentityResourceId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_IdentityClaims_IdentityResourceId] ON [dbo].[IdentityClaims]
(
	[IdentityResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IdentityResources_Name]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_IdentityResources_Name] ON [dbo].[IdentityResources]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_ClientId_Type]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_SubjectId_ClientId_Type] ON [dbo].[PersistedGrants]
(
	[SubjectId] ASC,
	[ClientId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoleClaims_RoleId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [dbo].[RoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Roles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserClaims_UserId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [dbo].[UserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLogins_UserId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId] ON [dbo].[UserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserRoles_RoleId]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId] ON [dbo].[UserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Users]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/21/2018 2:10:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Users]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApiClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApiClaims_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiClaims] CHECK CONSTRAINT [FK_ApiClaims_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiScopeClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ApiScopeId] FOREIGN KEY([ApiScopeId])
REFERENCES [dbo].[ApiScopes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiScopeClaims] CHECK CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ApiScopeId]
GO
ALTER TABLE [dbo].[ApiScopes]  WITH CHECK ADD  CONSTRAINT [FK_ApiScopes_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiScopes] CHECK CONSTRAINT [FK_ApiScopes_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiSecrets]  WITH CHECK ADD  CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiSecrets] CHECK CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ClientClaims]  WITH CHECK ADD  CONSTRAINT [FK_ClientClaims_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientClaims] CHECK CONSTRAINT [FK_ClientClaims_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientCorsOrigins]  WITH CHECK ADD  CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientCorsOrigins] CHECK CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientGrantTypes]  WITH CHECK ADD  CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientGrantTypes] CHECK CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientIdPRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientIdPRestrictions] CHECK CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientPostLogoutRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientPostLogoutRedirectUris] CHECK CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientProperties]  WITH CHECK ADD  CONSTRAINT [FK_ClientProperties_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientProperties] CHECK CONSTRAINT [FK_ClientProperties_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientRedirectUris] CHECK CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientScopes]  WITH CHECK ADD  CONSTRAINT [FK_ClientScopes_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientScopes] CHECK CONSTRAINT [FK_ClientScopes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientSecrets]  WITH CHECK ADD  CONSTRAINT [FK_ClientSecrets_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientSecrets] CHECK CONSTRAINT [FK_ClientSecrets_Clients_ClientId]
GO
ALTER TABLE [dbo].[IdentityClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityClaims_IdentityResources_IdentityResourceId] FOREIGN KEY([IdentityResourceId])
REFERENCES [dbo].[IdentityResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityClaims] CHECK CONSTRAINT [FK_IdentityClaims_IdentityResources_IdentityResourceId]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [IdentityServer4Admin] SET  READ_WRITE 
GO
