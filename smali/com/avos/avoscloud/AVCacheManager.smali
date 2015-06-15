.class public Lcom/avos/avoscloud/AVCacheManager;
.super Ljava/lang/Object;
.source "AVCacheManager.java"


# static fields
.field private static instance:Lcom/avos/avoscloud/AVCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCache()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearCacheMoreThanDays(I)Z

    move-result v0

    return v0
.end method

.method public static clearCacheMoreThanDays(I)Z
    .locals 13
    .param p0, "numberOfDays"    # I

    .prologue
    .line 110
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->keyValueCacheDir()Ljava/io/File;

    move-result-object v4

    .line 111
    .local v4, "keyValueCacheDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 112
    .local v1, "cacheFiles":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 113
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v0, v3

    .line 114
    .local v2, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    sub-long/2addr v7, v9

    int-to-long v9, p0

    const-wide/16 v11, 0x18

    mul-long/2addr v9, v11

    const-wide/16 v11, 0xe10

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 118
    const/4 v7, 0x0

    .line 128
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    :goto_1
    return v7

    .line 120
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "path":Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 113
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    const-string v7, "Cache Directory Failure"

    invoke-static {v7}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 128
    :cond_3
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public static clearCacheMoreThanOneDay()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearCacheMoreThanDays(I)Z

    move-result v0

    return v0
.end method

.method public static clearFileCacheMoreThanDays(I)Z
    .locals 14
    .param p0, "numberOfDays"    # I

    .prologue
    const/4 v7, 0x0

    .line 132
    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v8, :cond_1

    .line 133
    const-string v8, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v8}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return v7

    .line 136
    :cond_1
    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 137
    .local v4, "keyValueCacheDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 138
    .local v1, "cacheFiles":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 139
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, v0, v3

    .line 140
    .local v2, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long/2addr v8, v10

    int-to-long v10, p0

    const-wide/16 v12, 0x18

    mul-long/2addr v10, v12

    const-wide/16 v12, 0xe10

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 142
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 146
    invoke-static {v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 139
    .end local v6    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    const-string v7, "File Cache Directory Failure"

    invoke-static {v7}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 154
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private static getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->keyValueCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ts"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->fileCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 48
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private static keyValueCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "PaasKeyValueCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    return-object v0
.end method

.method public static declared-synchronized sharedInstance()Lcom/avos/avoscloud/AVCacheManager;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/avos/avoscloud/AVCacheManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/avos/avoscloud/AVCacheManager;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCacheManager;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 68
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    const-string v2, "{}"

    invoke-static {v2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fileCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ts"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "maxAgeInMilliseconds"    # J
    .param p4, "ts"    # Ljava/lang/String;
    .param p5, "getCallback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-direct {p0, p1, p4}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, p2

    if-lez v2, :cond_1

    .line 57
    :cond_0
    const/16 v2, 0x78

    const-string v3, "Cache Missing"

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {p5, v2, v6}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p5, v0, v6}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public hasCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ts"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public haveCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ts"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 86
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    const-string v2, "{}"

    invoke-static {v2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "lastModifyTs"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p3}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "cacheFile":Ljava/io/File;
    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    return v1
.end method
