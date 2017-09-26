CREATE TABLE [Queue] (
	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,
	 [Name] VARCHAR(255)  NULL,
	 [Closed] BIT  NULL,
	 [OperatorPlaceStr] VARCHAR(255)  NULL,
	 [Actual] BIT  NULL,
	 [Type] UNIQUEIDENTIFIER  NOT NULL,
	 [Operator] UNIQUEIDENTIFIER  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [Operation] (
	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,
	 [OperatorPosStr] VARCHAR(255)  NULL,
	 [Date] DATETIME  NULL,
	 [SomeManStr] VARCHAR(255)  NULL,
	 [Complited] BIT  NULL,
	 [Operator] UNIQUEIDENTIFIER  NOT NULL,
	 [ClientMan] UNIQUEIDENTIFIER  NULL,
	 [OperationType] UNIQUEIDENTIFIER  NOT NULL,
	 [Client] UNIQUEIDENTIFIER  NOT NULL,
	 [PlaceInQueue] UNIQUEIDENTIFIER  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [PlaceInQueue] (
	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,
	 [Number] INT  NULL,
	 [DateOfIssue] DATETIME  NULL,
	 [DateOfService] DATETIME  NULL,
	 [Serviced] BIT  NULL,
	 [ClientStr] VARCHAR(255)  NULL,
	 [Client] UNIQUEIDENTIFIER  NULL,
	 [Queue] UNIQUEIDENTIFIER  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [ClientType] (
	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,
	 [Name] VARCHAR(255)  NULL,
	 [Actual] BIT  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [QueueType] (
	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,
	 [Name] VARCHAR(255)  NULL,
	 [Actual] BIT  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [Operator] (
	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,
	 [FIO] VARCHAR(255)  NULL,
	 [Position] UNIQUEIDENTIFIER  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [Position] (
	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,
	 [Name] VARCHAR(255)  NULL,
	 [Actual] BIT  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [OperationType] (
	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,
	 [Name] VARCHAR(255)  NULL,
	 [Actual] BIT  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [Client] (
	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,
	 [Name] VARCHAR(255)  NULL,
	 [Document] NVARCHAR(MAX)  NULL,
	 [Photo] NVARCHAR(MAX)  NULL,
	 [AppealCount] INT  NULL,
	 [AppealServiced] FLOAT  NULL,
	 [DateReg] DATETIME  NULL,
	 [DateLastVisit] DATETIME  NULL,
	 [Actual] BIT  NULL,
	 [Email] VARCHAR(255)  NULL,
	 [MobilePhoneNumber] VARCHAR(255)  NULL,
	 [Type] UNIQUEIDENTIFIER  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMNETLOCKDATA] (
	 [LockKey] VARCHAR(300)  NOT NULL,
	 [UserName] VARCHAR(300)  NOT NULL,
	 [LockDate] DATETIME  NULL,
	 PRIMARY KEY ([LockKey])
) 
GO

CREATE TABLE [STORMSETTINGS] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [Module] varchar(1000)  NULL,
	 [Name] varchar(255)  NULL,
	 [Value] text  NULL,
	 [User] varchar(255)  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMAdvLimit] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [User] varchar(255)  NULL,
	 [Published] bit  NULL,
	 [Module] varchar(255)  NULL,
	 [Name] varchar(255)  NULL,
	 [Value] text  NULL,
	 [HotKeyData] int  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMFILTERSETTING] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [Name] varchar(255)  NOT NULL,
	 [DataObjectView] varchar(255)  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMWEBSEARCH] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [Name] varchar(255)  NOT NULL,
	 [Order] INT  NOT NULL,
	 [PresentView] varchar(255)  NOT NULL,
	 [DetailedView] varchar(255)  NOT NULL,
	 [FilterSetting_m0] uniqueidentifier  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMFILTERDETAIL] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [Caption] varchar(255)  NOT NULL,
	 [DataObjectView] varchar(255)  NOT NULL,
	 [ConnectMasterProp] varchar(255)  NOT NULL,
	 [OwnerConnectProp] varchar(255)  NULL,
	 [FilterSetting_m0] uniqueidentifier  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMFILTERLOOKUP] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [DataObjectType] varchar(255)  NOT NULL,
	 [Container] varchar(255)  NULL,
	 [ContainerTag] varchar(255)  NULL,
	 [FieldsToView] varchar(255)  NULL,
	 [FilterSetting_m0] uniqueidentifier  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [UserSetting] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [AppName] varchar(256)  NULL,
	 [UserName] varchar(512)  NULL,
	 [UserGuid] uniqueidentifier  NULL,
	 [ModuleName] varchar(1024)  NULL,
	 [ModuleGuid] uniqueidentifier  NULL,
	 [SettName] varchar(256)  NULL,
	 [SettGuid] uniqueidentifier  NULL,
	 [SettLastAccessTime] DATETIME  NULL,
	 [StrVal] varchar(256)  NULL,
	 [TxtVal] varchar(max)  NULL,
	 [IntVal] int  NULL,
	 [BoolVal] bit  NULL,
	 [GuidVal] uniqueidentifier  NULL,
	 [DecimalVal] decimal(20,10)  NULL,
	 [DateTimeVal] DATETIME  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [ApplicationLog] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [Category] varchar(64)  NULL,
	 [EventId] INT  NULL,
	 [Priority] INT  NULL,
	 [Severity] varchar(32)  NULL,
	 [Title] varchar(256)  NULL,
	 [Timestamp] DATETIME  NULL,
	 [MachineName] varchar(32)  NULL,
	 [AppDomainName] varchar(512)  NULL,
	 [ProcessId] varchar(256)  NULL,
	 [ProcessName] varchar(512)  NULL,
	 [ThreadName] varchar(512)  NULL,
	 [Win32ThreadId] varchar(128)  NULL,
	 [Message] varchar(2500)  NULL,
	 [FormattedMessage] varchar(max)  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMAG] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [Name] varchar(80)  NOT NULL,
	 [Login] varchar(50)  NULL,
	 [Pwd] varchar(50)  NULL,
	 [IsUser] bit  NOT NULL,
	 [IsGroup] bit  NOT NULL,
	 [IsRole] bit  NOT NULL,
	 [ConnString] varchar(255)  NULL,
	 [Enabled] bit  NULL,
	 [Email] varchar(80)  NULL,
	 [CreateTime] datetime  NULL,
	 [Creator] varchar(255)  NULL,
	 [EditTime] datetime  NULL,
	 [Editor] varchar(255)  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMLG] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [Group_m0] uniqueidentifier  NOT NULL,
	 [User_m0] uniqueidentifier  NOT NULL,
	 [CreateTime] datetime  NULL,
	 [Creator] varchar(255)  NULL,
	 [EditTime] datetime  NULL,
	 [Editor] varchar(255)  NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMAuObjType] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [Name] nvarchar(255)  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMAuEntity] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [ObjectPrimaryKey] nvarchar(38)  NOT NULL,
	 [OperationTime] DATETIME  NOT NULL,
	 [OperationType] nvarchar(100)  NOT NULL,
	 [ExecutionResult] nvarchar(12)  NOT NULL,
	 [Source] nvarchar(255)  NOT NULL,
	 [SerializedField] nvarchar(max)  NULL,
	 [User_m0] uniqueidentifier  NOT NULL,
	 [ObjectType_m0] uniqueidentifier  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

CREATE TABLE [STORMAuField] (
	 [primaryKey] uniqueidentifier  NOT NULL,
	 [Field] nvarchar(100)  NOT NULL,
	 [OldValue] nvarchar(max)  NULL,
	 [NewValue] nvarchar(max)  NULL,
	 [MainChange_m0] uniqueidentifier  NULL,
	 [AuditEntity_m0] uniqueidentifier  NOT NULL,
	 PRIMARY KEY ([primaryKey])
) 
GO

ALTER TABLE [Queue]
	 ADD CONSTRAINT [Queue_FQueueType_0] FOREIGN KEY ([Type])
	 REFERENCES [QueueType]

GO

CREATE INDEX Queue_IType on [Queue] ([Type])

GO

ALTER TABLE [Queue]
	 ADD CONSTRAINT [Queue_FOperator_0] FOREIGN KEY ([Operator])
	 REFERENCES [Operator]

GO

CREATE INDEX Queue_IOperator on [Queue] ([Operator])

GO

ALTER TABLE [Operation]
	 ADD CONSTRAINT [Operation_FOperator_0] FOREIGN KEY ([Operator])
	 REFERENCES [Operator]

GO

CREATE INDEX Operation_IOperator on [Operation] ([Operator])

GO

ALTER TABLE [Operation]
	 ADD CONSTRAINT [Operation_FClient_0] FOREIGN KEY ([ClientMan])
	 REFERENCES [Client]

GO

CREATE INDEX Operation_IClientMan on [Operation] ([ClientMan])

GO

ALTER TABLE [Operation]
	 ADD CONSTRAINT [Operation_FOperationType_0] FOREIGN KEY ([OperationType])
	 REFERENCES [OperationType]

GO

CREATE INDEX Operation_IOperationType on [Operation] ([OperationType])

GO

ALTER TABLE [Operation]
	 ADD CONSTRAINT [Operation_FClient_1] FOREIGN KEY ([Client])
	 REFERENCES [Client]

GO

CREATE INDEX Operation_IClient on [Operation] ([Client])

GO

ALTER TABLE [Operation]
	 ADD CONSTRAINT [Operation_FPlaceInQueue_0] FOREIGN KEY ([PlaceInQueue])
	 REFERENCES [PlaceInQueue]

GO

CREATE INDEX Operation_IPlaceInQueue on [Operation] ([PlaceInQueue])

GO

ALTER TABLE [PlaceInQueue]
	 ADD CONSTRAINT [PlaceInQueue_FClient_0] FOREIGN KEY ([Client])
	 REFERENCES [Client]

GO

CREATE INDEX PlaceInQueue_IClient on [PlaceInQueue] ([Client])

GO

ALTER TABLE [PlaceInQueue]
	 ADD CONSTRAINT [PlaceInQueue_FQueue_0] FOREIGN KEY ([Queue])
	 REFERENCES [Queue]

GO

CREATE INDEX PlaceInQueue_IQueue on [PlaceInQueue] ([Queue])

GO

ALTER TABLE [Operator]
	 ADD CONSTRAINT [Operator_FPosition_0] FOREIGN KEY ([Position])
	 REFERENCES [Position]

GO

CREATE INDEX Operator_IPosition on [Operator] ([Position])

GO

ALTER TABLE [Client]
	 ADD CONSTRAINT [Client_FClientType_0] FOREIGN KEY ([Type])
	 REFERENCES [ClientType]

GO

CREATE INDEX Client_IType on [Client] ([Type])

GO

ALTER TABLE [STORMWEBSEARCH]
	 ADD CONSTRAINT [STORMWEBSEARCH_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0])
	 REFERENCES [STORMFILTERSETTING]

GO

ALTER TABLE [STORMFILTERDETAIL]
	 ADD CONSTRAINT [STORMFILTERDETAIL_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0])
	 REFERENCES [STORMFILTERSETTING]

GO

ALTER TABLE [STORMFILTERLOOKUP]
	 ADD CONSTRAINT [STORMFILTERLOOKUP_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0])
	 REFERENCES [STORMFILTERSETTING]

GO

ALTER TABLE [STORMLG]
	 ADD CONSTRAINT [STORMLG_FSTORMAG_0] FOREIGN KEY ([Group_m0])
	 REFERENCES [STORMAG]

GO

ALTER TABLE [STORMLG]
	 ADD CONSTRAINT [STORMLG_FSTORMAG_1] FOREIGN KEY ([User_m0])
	 REFERENCES [STORMAG]

GO

ALTER TABLE [STORMAuEntity]
	 ADD CONSTRAINT [STORMAuEntity_FSTORMAG_0] FOREIGN KEY ([User_m0])
	 REFERENCES [STORMAG]

GO

ALTER TABLE [STORMAuEntity]
	 ADD CONSTRAINT [STORMAuEntity_FSTORMAuObjType_0] FOREIGN KEY ([ObjectType_m0])
	 REFERENCES [STORMAuObjType]

GO

ALTER TABLE [STORMAuField]
	 ADD CONSTRAINT [STORMAuField_FSTORMAuField_0] FOREIGN KEY ([MainChange_m0])
	 REFERENCES [STORMAuField]

GO

ALTER TABLE [STORMAuField]
	 ADD CONSTRAINT [STORMAuField_FSTORMAuEntity_0] FOREIGN KEY ([AuditEntity_m0])
	 REFERENCES [STORMAuEntity]

GO


