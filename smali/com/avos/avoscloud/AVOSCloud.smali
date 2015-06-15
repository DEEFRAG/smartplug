.class public Lcom/avos/avoscloud/AVOSCloud;
.super Ljava/lang/Object;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;,
        Lcom/avos/avoscloud/AVOSCloud$ServerHostList;,
        Lcom/avos/avoscloud/AVOSCloud$StorageType;
    }
.end annotation


# static fields
.field public static final AV_CLOUD_API_VERSION_KEY:Ljava/lang/String; = "AV_CLOUD_API_VERSION"

.field public static final AV_CLOUD_API_VERSION_KEY_ZONE:Ljava/lang/String; = "AV_CLOUD_API_VERSION_KEY_ZONE"

.field public static final AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

.field public static final AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY:Ljava/lang/String; = "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

.field public static final AV_CLOUD_CACHE_EXPIRE_DATE_KEY:Ljava/lang/String; = "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

.field public static final AV_CLOUD_CACHE_EXPIRE_KEY_ZONE:Ljava/lang/String; = "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

.field public static final DEFAULT_NETWORK_TIMEOUT:I = 0x3a98

.field public static final DEFAULT_THREAD_POOL_SIZE:I = 0xa

.field public static final LOG_LEVEL_DEBUG:I = 0x4

.field public static final LOG_LEVEL_ERROR:I = 0x20

.field public static final LOG_LEVEL_INFO:I = 0x8

.field public static final LOG_LEVEL_NONE:I = -0x1

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x10

.field private static final URL_HOST_LIST:Ljava/lang/String; = "appHosts"

.field public static applicationContext:Landroid/content/Context;

.field public static applicationId:Ljava/lang/String;

.field public static clientKey:Ljava/lang/String;

.field protected static handler:Landroid/os/Handler;

.field private static hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

.field private static internalDebugLog:Z

.field private static logLevel:I

.field private static networkTimeoutInMills:I

.field private static storageType:Lcom/avos/avoscloud/AVOSCloud$StorageType;

.field private static threadPoolSize:I

.field private static userInternalDebugLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud;->AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/avos/avoscloud/AVOSCloud;->logLevel:I

    .line 47
    sput-boolean v1, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    .line 48
    sput-boolean v1, Lcom/avos/avoscloud/AVOSCloud;->userInternalDebugLog:Z

    .line 54
    const/16 v0, 0x3a98

    sput v0, Lcom/avos/avoscloud/AVOSCloud;->networkTimeoutInMills:I

    .line 56
    const/16 v0, 0xa

    sput v0, Lcom/avos/avoscloud/AVOSCloud;->threadPoolSize:I

    .line 92
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud;->storageType:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    return v0
.end method

.method public static clearLastModifyCache()V
    .locals 0

    .prologue
    .line 216
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->clearLastModifyCache()V

    .line 217
    return-void
.end method

.method public static disableAutoCacheCleaner()V
    .locals 4

    .prologue
    .line 225
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 227
    return-void
.end method

.method public static enableAutoCacheCleaner()V
    .locals 4

    .prologue
    .line 220
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 222
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 176
    sget v0, Lcom/avos/avoscloud/AVOSCloud;->logLevel:I

    return v0
.end method

.method public static getNetworkTimeout()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/avos/avoscloud/AVOSCloud;->networkTimeoutInMills:I

    return v0
.end method

.method private static getSMSCodeEnv(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const-string v1, "op"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    const-string v1, "name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_1
    if-lez p2, :cond_2

    .line 278
    const-string v1, "ttl"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_2
    return-object v0
.end method

.method public static getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->storageType:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    return-object v0
.end method

.method public static getThreadPoolSize()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/avos/avoscloud/AVOSCloud;->threadPoolSize:I

    return v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "clientKey"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 120
    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Please call AVOSCloud.initialize in main thread."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_0
    sput-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    .line 124
    sput-object p2, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    .line 125
    sput-object p0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    .line 127
    :try_start_0
    const-string v3, "com.avos.avoscloud.AVAnalytics"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 128
    .local v2, "statisticsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "start"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 129
    .local v1, "startMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "startMethod":Ljava/lang/reflect/Method;
    .end local v2    # "statisticsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    if-nez v3, :cond_1

    .line 134
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    sput-object v3, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    .line 137
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    const-string v4, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v5, "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    const-string v4, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v5, "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVCacheManager;->clearCacheMoreThanDays(I)Z

    .line 143
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    const-string v4, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v5, "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lcom/avos/avoscloud/AVCacheManager;->clearFileCacheMoreThanDays(I)Z

    .line 147
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->getLocalInstance()Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    move-result-object v3

    sput-object v3, Lcom/avos/avoscloud/AVOSCloud;->hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    .line 148
    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->getSelectedHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 149
    sget-object v3, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->getSelectedHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avos/avoscloud/PaasClient;->setServiceHost(Lcom/avos/avoscloud/AVOSServices;Ljava/lang/String;)V

    .line 151
    :cond_3
    new-instance v3, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;

    invoke-direct {v3}, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;-><init>()V

    new-array v4, v7, [Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    .line 154
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    const-string v4, "AV_CLOUD_API_VERSION_KEY_ZONE"

    const-string v5, "AV_CLOUD_API_VERSION"

    const-string v6, "1"

    invoke-virtual {v3, v4, v5, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avos/avoscloud/AVOSCloud;->onUpgrade(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    const-string v4, "AV_CLOUD_API_VERSION_KEY_ZONE"

    const-string v5, "AV_CLOUD_API_VERSION"

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "statistics library not started since not included"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static isDebugLogEnabled()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->userInternalDebugLog:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLastModifyEnabled()Z
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    return v0
.end method

.method protected static onUpgrade(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "oldVersion"    # Ljava/lang/String;
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1, p0}, Lcom/avos/avoscloud/AVUtils;->compareNumberString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 558
    const-string v4, "1.1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 559
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 560
    const-string v4, "try to do some upgrade work"

    invoke-static {v4}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 562
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    .line 564
    .local v2, "localUser":Lcom/avos/avoscloud/AVUser;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 565
    new-instance v4, Lcom/avos/avoscloud/AVOSCloud$6;

    invoke-direct {v4}, Lcom/avos/avoscloud/AVOSCloud$6;-><init>()V

    invoke-virtual {v2, v4}, Lcom/avos/avoscloud/AVUser;->fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V

    .line 575
    :cond_1
    :try_start_0
    const-string v4, "com.avos.avoscloud.AVInstallation"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 576
    .local v1, "installationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "updateCurrentInstallation"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 577
    .local v3, "updateMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v1    # "installationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "updateMethod":Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->clearAllCache()Z

    .line 584
    .end local v2    # "localUser":Lcom/avos/avoscloud/AVUser;
    :cond_2
    return-void

    .line 578
    .restart local v2    # "localUser":Lcom/avos/avoscloud/AVUser;
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "failed to update local Installation"

    invoke-static {v4}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestSMSCode(Ljava/lang/String;)V
    .locals 2
    .param p0, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 386
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    return-void
.end method

.method public static requestSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    new-array v0, v5, [Lcom/avos/avoscloud/AVException;

    .line 257
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    const/4 v1, 0x0

    invoke-static {p1, p2, p3}, Lcom/avos/avoscloud/AVOSCloud;->getSMSCodeEnv(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/avos/avoscloud/AVOSCloud$1;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVOSCloud$1;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, v1, v2, v5, v3}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 264
    aget-object v1, v0, v4

    if-eqz v1, :cond_0

    .line 265
    aget-object v1, v0, v4

    throw v1

    .line 267
    :cond_0
    return-void
.end method

.method public static requestSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "templateName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 313
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 315
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVOSCloud$2;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVOSCloud$2;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, p1, p2, v3, v1}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 321
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 322
    aget-object v1, v0, v2

    throw v1

    .line 324
    :cond_0
    return-void
.end method

.method public static requestSMSCodeInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 2
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    const/4 v1, 0x0

    .line 399
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0, p1}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 400
    return-void
.end method

.method public static requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 3
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "ttl"    # I
    .param p4, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-static {p1, p2, p3}, Lcom/avos/avoscloud/AVOSCloud;->getSMSCodeEnv(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p4}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 298
    return-void
.end method

.method public static requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "templateName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/RequestMobileCodeCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 337
    return-void
.end method

.method private static requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 9
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "templateName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/avos/avoscloud/RequestMobileCodeCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 341
    move-object v8, p4

    .line 343
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestMobileCodeCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v3, "Invalid Phone Number"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 348
    :cond_1
    if-nez p2, :cond_2

    .line 349
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 351
    .restart local p2    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v0, "mobilePhoneNumber"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 353
    const-string v0, "template"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_3
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestSmsCode"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVOSCloud$3;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVOSCloud$3;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p3

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public static setBaseUrl(Ljava/lang/String;)V
    .locals 1
    .param p0, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/PaasClient;->setBaseUrl(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static setCacheFileAutoExpireDate(I)V
    .locals 4
    .param p0, "expireDays"    # I

    .prologue
    .line 230
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    return-void
.end method

.method public static setDebugLogEnabled(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 192
    sput-boolean p0, Lcom/avos/avoscloud/AVOSCloud;->userInternalDebugLog:Z

    .line 193
    return-void
.end method

.method public static setLastModifyEnabled(Z)V
    .locals 0
    .param p0, "e"    # Z

    .prologue
    .line 212
    invoke-static {p0}, Lcom/avos/avoscloud/PaasClient;->setLastModifyEnabled(Z)V

    .line 213
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .prologue
    .line 180
    sput p0, Lcom/avos/avoscloud/AVOSCloud;->logLevel:I

    .line 181
    return-void
.end method

.method public static setNetworkTimeout(I)V
    .locals 0
    .param p0, "timeoutInMills"    # I

    .prologue
    .line 67
    sput p0, Lcom/avos/avoscloud/AVOSCloud;->networkTimeoutInMills:I

    .line 68
    return-void
.end method

.method public static setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V
    .locals 0
    .param p0, "storageType"    # Lcom/avos/avoscloud/AVOSCloud$StorageType;

    .prologue
    .line 204
    sput-object p0, Lcom/avos/avoscloud/AVOSCloud;->storageType:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    .line 205
    return-void
.end method

.method public static setThreadPoolSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 84
    sput p0, Lcom/avos/avoscloud/AVOSCloud;->threadPoolSize:I

    .line 85
    return-void
.end method

.method static showInternalDebugLog(Z)V
    .locals 0
    .param p0, "show"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    .line 185
    return-void
.end method

.method public static showInternalDebugLog()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    return v0
.end method

.method public static useAVCloudCN()V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->useAVCloudCN()V

    .line 168
    return-void
.end method

.method public static useAVCloudUS()V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->useAVCloudUS()V

    .line 164
    return-void
.end method

.method public static verifySMSCode(Ljava/lang/String;)V
    .locals 4
    .param p0, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 404
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 405
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVOSCloud$4;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVOSCloud$4;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, v3, v1}, Lcom/avos/avoscloud/AVOSCloud;->verifySMSCodeInBackgroud(Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 411
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 412
    aget-object v1, v0, v2

    throw v1

    .line 414
    :cond_0
    return-void
.end method

.method private static verifySMSCodeInBackgroud(Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 9
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 422
    move-object v8, p2

    .line 424
    .local v8, "internalCallback":Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x7f

    const-string v3, "Invalid Verify Code"

    invoke-direct {v0, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 428
    :cond_1
    const-string v0, "verifySmsCode/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "endpointer":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVOSCloud$5;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVOSCloud$5;-><init>(Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public static verifySMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVOSCloud;->verifySMSCodeInBackgroud(Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 418
    return-void
.end method
