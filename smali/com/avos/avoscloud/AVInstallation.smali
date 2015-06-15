.class public final Lcom/avos/avoscloud/AVInstallation;
.super Lcom/avos/avoscloud/AVObject;
.source "AVInstallation.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/AVClassName;
    value = "_Installation"
.end annotation


# static fields
.field private static final CHANNELSTAG:Ljava/lang/String; = "channel"

.field private static final DEVICETYPETAG:Ljava/lang/String; = "deviceType"

.field private static final INSTALLATION:Ljava/lang/String; = "installation"

.field private static final INSTALLATIONIDTAG:Ljava/lang/String; = "installationId"

.field private static final INSTALLATION_AVNAME:Ljava/lang/String; = "_Installation"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final UUID_LEN:I

.field private static volatile currentInstallation:Lcom/avos/avoscloud/AVInstallation;

.field private static final filter:Lcom/avos/avoscloud/RelationPropertyFilter;


# instance fields
.field private volatile installationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->genInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/avos/avoscloud/AVInstallation;->UUID_LEN:I

    .line 35
    new-instance v0, Lcom/avos/avoscloud/RelationPropertyFilter;

    invoke-direct {v0}, Lcom/avos/avoscloud/RelationPropertyFilter;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVInstallation;->filter:Lcom/avos/avoscloud/RelationPropertyFilter;

    .line 38
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "installations"

    const-string v2, "_Installation"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "_Installation"

    const-string v1, "installations"

    const-string v2, "_Installation"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->registerSubclass(Ljava/lang/Class;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const-string v0, "_Installation"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInstallation;->initialize()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVInstallation;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVInstallation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0}, Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V

    return-void
.end method

.method private static createNewInstallation()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->genInstallationId()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Lcom/avos/avoscloud/AVInstallation;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVInstallation;-><init>()V

    sput-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    .line 68
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->saveCurrentInstalationToLocal()V

    .line 70
    return-void
.end method

.method private static deviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "android"

    return-object v0
.end method

.method private static genInstallationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "id":Ljava/lang/String;
    return-object v0
.end method

.method public static getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/avos/avoscloud/AVInstallation;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->readInstallationFile()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->createNewInstallation()V

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVInstallation;->initialize()V

    .line 62
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_Installation"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<Lcom/avos/avoscloud/AVInstallation;>;"
    return-object v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "installationId"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "installationId"

    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_1
    const-string v0, "deviceType"

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->deviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v0, "timeZone"

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->timezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method protected static readInstallationFile()Lcom/avos/avoscloud/AVInstallation;
    .locals 6

    .prologue
    .line 156
    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 157
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Please call AVOSCloud.initialize at first in Application"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_0
    const-string v2, ""

    .line 161
    .local v2, "json":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "installation"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v1, "installationFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 165
    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 166
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->beginDeserialize()V

    .line 167
    const-class v4, Lcom/avos/avoscloud/AVInstallation;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVInstallation;

    sput-object v4, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    .line 168
    sget-object v4, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "parsedId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/avos/avoscloud/AVInstallation;->UUID_LEN:I

    if-ne v4, v5, :cond_2

    .line 171
    sget-object v4, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    const-string v5, "installationId"

    invoke-virtual {v4, v5, v3}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    sget-object v4, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    .line 191
    .end local v1    # "installationFile":Ljava/io/File;
    .end local v3    # "parsedId":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 175
    .restart local v1    # "installationFile":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/avos/avoscloud/AVInstallation;->UUID_LEN:I

    if-ne v4, v5, :cond_2

    .line 177
    new-instance v4, Lcom/avos/avoscloud/AVInstallation;

    invoke-direct {v4}, Lcom/avos/avoscloud/AVInstallation;-><init>()V

    sput-object v4, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    .line 178
    sget-object v4, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/AVInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->saveCurrentInstalationToLocal()V

    .line 181
    sget-object v4, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    .line 191
    .end local v1    # "installationFile":Ljava/io/File;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    throw v4
.end method

.method private static saveCurrentInstalationToLocal()V
    .locals 2

    .prologue
    .line 79
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-static {v1}, Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 81
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private superSaveEventually(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->saveEventually(Lcom/avos/avoscloud/SaveCallback;)V

    .line 274
    return-void
.end method

.method private static timezone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 103
    .local v0, "defaultTimezone":Ljava/util/TimeZone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "unknown"

    goto :goto_0
.end method

.method protected static updateCurrentInstallation()V
    .locals 3

    .prologue
    .line 279
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const-string v2, "try to update installation to fix date type data"

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 282
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->readInstallationFile()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    .line 283
    .local v0, "currentInstallation":Lcom/avos/avoscloud/AVInstallation;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    new-instance v2, Lcom/avos/avoscloud/AVInstallation$1;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVInstallation$1;-><init>()V

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVInstallation;->fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    const-string v2, "failed to update installation"

    invoke-static {v2, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V
    .locals 6
    .param p0, "installation"    # Lcom/avos/avoscloud/AVInstallation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    if-eqz p0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInstallation;->initialize()V

    .line 197
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "installation"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    .local v0, "installationFile":Ljava/io/File;
    sget-object v2, Lcom/avos/avoscloud/AVInstallation;->filter:Lcom/avos/avoscloud/RelationPropertyFilter;

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 206
    .end local v0    # "installationFile":Ljava/io/File;
    .end local v1    # "jsonString":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected alwaysSaveAllKeyValues()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method protected alwaysUsePost()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method protected onDataSynchronized()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->onDataSynchronized()V

    .line 139
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->onSaveSuccess()V

    .line 140
    return-void
.end method

.method protected onSaveFailure()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "roll back installationId since error there"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 148
    const-class v1, Lcom/avos/avoscloud/AVInstallation;

    monitor-enter v1

    .line 149
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->readInstallationFile()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->createNewInstallation()V

    .line 152
    :cond_0
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSaveSuccess()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 130
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->remove(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public saveEventually(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "cloneObject":Lcom/avos/avoscloud/AVInstallation;
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "jsonString":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->beginDeserialize()V

    .line 263
    const-class v4, Lcom/avos/avoscloud/AVInstallation;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/avos/avoscloud/AVInstallation;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    .line 269
    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/AVInstallation;->superSaveEventually(Lcom/avos/avoscloud/SaveCallback;)V

    .line 270
    :cond_0
    return-void

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    throw v4
.end method

.method setInstallationId(Ljava/lang/String;)V
    .locals 1
    .param p1, "installationId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    .line 48
    const-string v0, "installationId"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method
