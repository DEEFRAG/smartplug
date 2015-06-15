.class public Lcom/avos/avoscloud/AVUser;
.super Lcom/avos/avoscloud/AVObject;
.source "AVUser.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    ignores = {
        "query",
        "password"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    }
.end annotation


# static fields
.field public static final FOLLOWEE_TAG:Ljava/lang/String; = "followee"

.field public static final FOLLOWER_TAG:Ljava/lang/String; = "follower"

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final accessTokenTag:Ljava/lang/String; = "access_token"

.field private static final authDataTag:Ljava/lang/String; = "authData"

.field private static transient enableAutomatic:Z = false

.field private static final expiresAtTag:Ljava/lang/String; = "expires_at"

.field private static mUserPropertyFilter:Lcom/avos/avoscloud/RelationPropertyFilter;

.field private static subClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient anonymous:Z

.field private email:Ljava/lang/String;

.field private transient facebookToken:Ljava/lang/String;

.field private transient isNew:Z

.field private mobilePhoneNumber:Ljava/lang/String;

.field private transient password:Ljava/lang/String;

.field private transient qqWeiboToken:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field private transient sinaWeiboToken:Ljava/lang/String;

.field private transient twitterToken:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 24
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUser;->LOG_TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/avos/avoscloud/RelationPropertyFilter;

    invoke-direct {v0}, Lcom/avos/avoscloud/RelationPropertyFilter;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVUser;->mUserPropertyFilter:Lcom/avos/avoscloud/RelationPropertyFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVUser;->processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->processFollowerAndFollowee(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static alwaysUseSubUserClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1656
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVUser;>;"
    sput-object p0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    .line 1657
    return-void
.end method

.method public static associateWithAuthData(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .param p0, "user"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "userInfo"    # Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1741
    if-nez p1, :cond_1

    .line 1742
    if-eqz p2, :cond_0

    .line 1743
    const/4 v1, -0x1

    const-string v2, "NULL userInfo."

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1754
    :cond_0
    :goto_0
    return-void

    .line 1748
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUser;->authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;

    move-result-object v0

    .line 1749
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1750
    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1752
    :cond_2
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1753
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method private static authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;
    .locals 4
    .param p0, "userInfo"    # Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1660
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1661
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1662
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "access_token"

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    const-string v2, "expires_at"

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1665
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->platformUserIdTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    return-object v1
.end method

.method public static cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 6
    .param p0, "user"    # Lcom/avos/avoscloud/AVUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Lcom/avos/avoscloud/AVUser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1632
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->beginDeserialize()V

    .line 1633
    const/4 v3, 0x6

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    invoke-static {p0, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVUser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    .local v2, "newUser":Lcom/avos/avoscloud/AVUser;, "TT;"
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->endDeserialize()V

    .line 1647
    .end local v1    # "jsonString":Ljava/lang/String;
    .end local v2    # "newUser":Lcom/avos/avoscloud/AVUser;, "TT;"
    :goto_0
    return-object v2

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ClassCast Exception"

    invoke-static {v3, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1645
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->endDeserialize()V

    .line 1647
    const/4 v2, 0x0

    goto :goto_0

    .line 1645
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->endDeserialize()V

    throw v3
.end method

.method public static declared-synchronized changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 7
    .param p0, "newUser"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "save"    # Z

    .prologue
    .line 108
    const-class v3, Lcom/avos/avoscloud/AVUser;

    monitor-enter v3

    if-eqz p0, :cond_0

    .line 109
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    .line 111
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v0

    .line 112
    .local v0, "currentUserArchivePath":Ljava/io/File;
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 114
    sget-object v2, Lcom/avos/avoscloud/AVUser;->mUserPropertyFilter:Lcom/avos/avoscloud/RelationPropertyFilter;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v5, 0x0

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    invoke-static {p0, v2, v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 127
    .end local v1    # "jsonString":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/avos/avoscloud/PaasClient;->setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit v3

    return-void

    .line 123
    :cond_3
    if-eqz p1, :cond_2

    .line 124
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    .end local v0    # "currentUserArchivePath":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1331
    :cond_0
    if-eqz p1, :cond_1

    .line 1332
    const/16 v0, 0xce

    const-string v1, "No valid session token, make sure signUp or login has been called."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1335
    :cond_1
    const/4 v0, 0x0

    .line 1337
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "username"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Blank username."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    const-string v1, "email"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_2
    return-object v0
.end method

.method private static createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Blank username and blank mobile phone number"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    const-string v1, "username"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 383
    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_2
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 386
    const-string v1, "email"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_3
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 389
    const-string v1, "mobilePhoneNumber"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_4
    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 392
    const-string v1, "smsCode"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_5
    return-object v0
.end method

.method private static currentUserArchivePath()Ljava/io/File;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPaasDocumentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/currentUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method public static disableAutomaticUser()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 104
    return-void
.end method

.method public static dissociateAuthData(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 4
    .param p0, "user"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1757
    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1758
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 1759
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    :cond_0
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1762
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1764
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 1771
    :cond_1
    :goto_0
    return-void

    .line 1766
    :cond_2
    if-eqz p2, :cond_1

    .line 1767
    new-instance v1, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0xce

    const-string v3, "the user object missing a valid session"

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public static enableAutomaticUser()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 96
    return-void
.end method

.method public static followeeQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .param p0, "userObjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1519
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1520
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Blank user objectId."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1522
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVFriendshipQuery;

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1523
    .local v1, "query":Lcom/avos/avoscloud/AVFriendshipQuery;
    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFolloweesEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1524
    .local v0, "endPoint":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;->setExternalQueryPath(Ljava/lang/String;)V

    .line 1525
    const-string v2, "followee"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVFriendshipQuery;->setFriendshipTag(Ljava/lang/String;)V

    .line 1526
    return-object v1
.end method

.method public static followerQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .param p0, "userObjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1478
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1479
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Blank user objectId."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1481
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVFriendshipQuery;

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1482
    .local v1, "query":Lcom/avos/avoscloud/AVFriendshipQuery;
    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowersEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    .local v0, "endPoint":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;->setExternalQueryPath(Ljava/lang/String;)V

    .line 1484
    const-string v2, "follower"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVFriendshipQuery;->setFriendshipTag(Ljava/lang/String;)V

    .line 1485
    return-object v1
.end method

.method public static getCurrentUser()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 137
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUser;->getCurrentUser(Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser(Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "userClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 149
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avos/avoscloud/PaasClient;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 150
    .local v3, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 193
    :goto_0
    return-object v4

    .line 154
    :cond_0
    invoke-static {v3, p0}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v4

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userArchiveExist()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    const-class v6, Lcom/avos/avoscloud/AVUser;

    monitor-enter v6

    .line 158
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "jsonString":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 160
    const-string v5, "@type"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-lez v5, :cond_4

    .line 166
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->beginDeserialize()V

    .line 167
    invoke-static {v2, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    move-object v3, v0

    .line 168
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/avos/avoscloud/PaasClient;->setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v3

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/avos/avoscloud/AVUser;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v2, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    .end local v2    # "jsonString":Ljava/lang/String;
    :cond_3
    sget-boolean v5, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    if-nez v5, :cond_5

    move-object v4, v3

    .line 188
    goto :goto_0

    .line 174
    .restart local v2    # "jsonString":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    throw v5

    .line 185
    .end local v2    # "jsonString":Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 178
    .restart local v2    # "jsonString":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    :try_start_6
    invoke-static {p0, v5}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v4

    .line 179
    .local v4, "userObject":Lcom/avos/avoscloud/AVUser;, "TT;"
    invoke-static {v2, v4}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 181
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 182
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 191
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v4    # "userObject":Lcom/avos/avoscloud/AVUser;, "TT;"
    :cond_5
    invoke-static {p0, v7}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 192
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    move-object v4, v3

    .line 193
    goto :goto_0
.end method

.method public static getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUser;->getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getUserQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 216
    .local v0, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    return-object v0
.end method

.method public static isEnableAutomatic()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    return v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 276
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 299
    .local v0, "list":[Lcom/avos/avoscloud/AVUser;
    new-instance v1, Lcom/avos/avoscloud/AVUser$1;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$1;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, v1, p2}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 316
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 319
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 335
    return-void
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 355
    return-void
.end method

.method private static logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 11
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 399
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 400
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, p3

    .line 401
    .local v8, "internalCallback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v10

    .line 402
    .local v10, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-nez v10, :cond_0

    .line 431
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {v10, p0}, Lcom/avos/avoscloud/AVUser;->setUsername(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$2;

    invoke-direct {v5, v10, v8}, Lcom/avos/avoscloud/AVUser$2;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logInPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, "login"

    return-object v0
.end method

.method public static logOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 608
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 609
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PaasClient;->setDefaultACL(Lcom/avos/avoscloud/AVACL;)V

    .line 610
    return-void
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 434
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 442
    .local v0, "list":[Lcom/avos/avoscloud/AVUser;
    new-instance v1, Lcom/avos/avoscloud/AVUser$3;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$3;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, v1, p2}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 458
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 461
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 2
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const/4 v0, 0x0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0, p2, v1}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 467
    return-void
.end method

.method public static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 472
    return-void
.end method

.method private static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 11
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 476
    invoke-static {v6, p1, v6, p0, v6}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 477
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, p3

    .line 478
    .local v8, "internalCallback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v10

    .line 479
    .local v10, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-nez v10, :cond_0

    .line 508
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-virtual {v10, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$4;

    invoke-direct {v5, v10, v8}, Lcom/avos/avoscloud/AVUser$4;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 511
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 517
    .local v0, "list":[Lcom/avos/avoscloud/AVUser;
    new-instance v1, Lcom/avos/avoscloud/AVUser$5;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$5;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, v1, p2}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 533
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 536
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 2
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const/4 v0, 0x0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0, p2, v1}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 542
    return-void
.end method

.method public static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 547
    return-void
.end method

.method private static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 11
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 551
    const-string v0, ""

    invoke-static {v6, v6, v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 552
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, p3

    .line 553
    .local v8, "internalCallback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v10

    .line 554
    .local v10, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-nez v10, :cond_0

    .line 583
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {v10, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$6;

    invoke-direct {v5, v10, v8}, Lcom/avos/avoscloud/AVUser$6;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loginWithAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .param p0, "userInfo"    # Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1681
    .local p1, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V

    .line 1682
    return-void
.end method

.method public static loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 9
    .param p1, "userInfo"    # Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1694
    if-nez p1, :cond_1

    .line 1695
    if-eqz p2, :cond_0

    .line 1696
    const/4 v0, -0x1

    const-string v1, "NULL userInfo."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1703
    .local v8, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "authData"

    invoke-static {p1}, Lcom/avos/avoscloud/AVUser;->authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1705
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "users"

    new-instance v5, Lcom/avos/avoscloud/AVUser$28;

    invoke-direct {v5, p0, p2}, Lcom/avos/avoscloud/AVUser$28;-><init>(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    move v4, v3

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static newAVUser()Lcom/avos/avoscloud/AVUser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 600
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "cb":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    const/4 v2, 0x0

    .line 587
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVUser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    return-object v1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 591
    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    move-object v1, v2

    .line 596
    goto :goto_0

    .line 593
    :cond_0
    new-instance v2, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v3, "Create user instance failed."

    invoke-direct {v2, v3, v0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private processFollowerAndFollowee(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1439
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1440
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1451
    :goto_0
    return-object v2

    .line 1443
    :cond_0
    new-instance v3, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v3}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 1444
    .local v3, "resp":Lcom/avos/avoscloud/AVFollowResponse;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    check-cast v3, Lcom/avos/avoscloud/AVFollowResponse;

    .line 1445
    .restart local v3    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1446
    .local v1, "followers":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1447
    .local v0, "followees":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;"
    iget-object v4, v3, Lcom/avos/avoscloud/AVFollowResponse;->followers:[Ljava/util/Map;

    const-string v5, "follower"

    invoke-direct {p0, v4, v1, v5}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 1448
    iget-object v4, v3, Lcom/avos/avoscloud/AVFollowResponse;->followees:[Ljava/util/Map;

    const-string v5, "followee"

    invoke-direct {p0, v4, v0, v5}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 1449
    const-string v4, "follower"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    const-string v4, "followee"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1428
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1429
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1435
    :goto_0
    return-object v0

    .line 1432
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 1433
    .local v1, "resp":Lcom/avos/avoscloud/AVFollowResponse;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    check-cast v1, Lcom/avos/avoscloud/AVFollowResponse;

    .line 1434
    .restart local v1    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    iget-object v2, v1, Lcom/avos/avoscloud/AVFollowResponse;->results:[Ljava/util/Map;

    invoke-direct {p0, v2, v0, p2}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/util/Map;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1456
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/Map;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 1457
    .local v2, "item":Ljava/util/Map;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1458
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVUser;

    .line 1459
    .local v4, "user":Lcom/avos/avoscloud/AVUser;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    .end local v4    # "user":Lcom/avos/avoscloud/AVUser;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1462
    .end local v2    # "item":Ljava/util/Map;
    :cond_1
    return-void
.end method

.method public static requestEmailVerfiyInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestEmailVerifyCallback;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestEmailVerifyCallback;

    .prologue
    .line 908
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestEmailVerfiyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    .line 909
    return-void
.end method

.method private static requestEmailVerfiyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V
    .locals 10
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestEmailVerifyCallback;

    .prologue
    const/4 v6, 0x0

    .line 913
    move-object v8, p2

    .line 914
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestEmailVerifyCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 915
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7d

    const-string v3, "Invalid Email"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestEmailVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 937
    :goto_0
    return-void

    .line 918
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 919
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "email"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 921
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestEmailVerify"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$14;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$14;-><init>(Lcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestEmailVerify(Ljava/lang/String;)V
    .locals 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 892
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestEmailVerfiyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    .line 893
    return-void
.end method

.method public static requestLoginSmsCode(Ljava/lang/String;)V
    .locals 4
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1030
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 1031
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$17;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$17;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, v3, v1}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1037
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 1038
    aget-object v1, v0, v2

    throw v1

    .line 1040
    :cond_0
    return-void
.end method

.method public static requestLoginSmsCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    .line 1044
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1045
    return-void
.end method

.method private static requestLoginSmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 10
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    const/4 v6, 0x0

    .line 1049
    move-object v8, p2

    .line 1051
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestMobileCodeCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1053
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v3, "Invalid Phone Number"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1077
    :goto_0
    return-void

    .line 1058
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1059
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "mobilePhoneNumber"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestLoginSmsCode"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$18;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$18;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestMobilePhoneVerify(Ljava/lang/String;)V
    .locals 4
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 950
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 951
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$15;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$15;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, v3, v1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 957
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 958
    aget-object v1, v0, v2

    throw v1

    .line 960
    :cond_0
    return-void
.end method

.method public static requestMobilePhoneVerifyInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 973
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 974
    return-void
.end method

.method public static requestMobilePhoneVerifyInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    .line 986
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 987
    return-void
.end method

.method private static requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 10
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    const/4 v6, 0x0

    .line 991
    move-object v8, p2

    .line 993
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestMobileCodeCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v3, "Invalid Phone Number"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1019
    :goto_0
    return-void

    .line 1000
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1001
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "mobilePhoneNumber"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestMobilePhoneVerify"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$16;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$16;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 650
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V

    .line 651
    return-void
.end method

.method public static requestPasswordResetBySmsCode(Ljava/lang/String;)V
    .locals 4
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 760
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 761
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$10;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$10;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, v3, v1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 768
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 769
    aget-object v1, v0, v2

    throw v1

    .line 771
    :cond_0
    return-void
.end method

.method public static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 781
    return-void
.end method

.method protected static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 10
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    const/4 v6, 0x0

    .line 785
    move-object v8, p2

    .line 787
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestMobileCodeCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v3, "Invalid Phone Number"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 813
    :goto_0
    return-void

    .line 794
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 795
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "mobilePhoneNumber"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestPasswordResetBySmsCode"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$11;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$11;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestPasswordResetCallback;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestPasswordResetCallback;

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V

    .line 670
    return-void
.end method

.method private static requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V
    .locals 10
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestPasswordResetCallback;

    .prologue
    const/4 v6, 0x0

    .line 674
    move-object v8, p2

    .line 675
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestPasswordResetCallback;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 676
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "email"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestPasswordReset"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$7;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$7;-><init>(Lcom/avos/avoscloud/RequestPasswordResetCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public static resetPasswordBySmsCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "smsCode"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 826
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 827
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$12;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$12;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, p1, v3, v1}, Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V

    .line 833
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 834
    aget-object v1, v0, v2

    throw v1

    .line 836
    :cond_0
    return-void
.end method

.method public static resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 1
    .param p0, "smsCode"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/UpdatePasswordCallback;

    .prologue
    .line 847
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V

    .line 848
    return-void
.end method

.method protected static resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 10
    .param p0, "smsCode"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/UpdatePasswordCallback;

    .prologue
    const/4 v4, 0x0

    .line 852
    move-object v8, p3

    .line 854
    .local v8, "internalCallback":Lcom/avos/avoscloud/UpdatePasswordCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 855
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x7f

    const-string v3, "Invalid Verify Code"

    invoke-direct {v0, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 878
    :goto_0
    return-void

    .line 860
    :cond_1
    const-string v0, "resetPasswordBySmsCode/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "endpointer":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 863
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "password"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVUser$13;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$13;-><init>(Lcom/avos/avoscloud/UpdatePasswordCallback;)V

    move v3, p2

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setEnableAutomatic(Z)V
    .locals 0
    .param p0, "enableAutomatic"    # Z

    .prologue
    .line 72
    sput-boolean p0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 73
    return-void
.end method

.method private signUp(ZLcom/avos/avoscloud/SignUpCallback;)V
    .locals 2
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/SignUpCallback;

    .prologue
    .line 1206
    if-eqz p1, :cond_1

    .line 1208
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->save()V

    .line 1209
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/SignUpCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e":Lcom/avos/avoscloud/AVException;
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SignUpCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1215
    .end local v0    # "e":Lcom/avos/avoscloud/AVException;
    :cond_1
    new-instance v1, Lcom/avos/avoscloud/AVUser$21;

    invoke-direct {v1, p0, p2}, Lcom/avos/avoscloud/AVUser$21;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/SignUpCallback;)V

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method private signUpPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1202
    const-string v0, "users"

    return-object v0
.end method

.method private updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V
    .locals 9
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/avos/avoscloud/UpdatePasswordCallback;
    .param p4, "sync"    # Z

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/UpdatePasswordCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 749
    :goto_0
    return-void

    .line 731
    :cond_1
    const-string v0, "users/%s/updatePassword"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "relativePath":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 733
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "old_password"

    invoke-interface {v8, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v0, "new_password"

    invoke-interface {v8, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, "paramsString":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVUser$9;

    invoke-direct {v5, p0, p3}, Lcom/avos/avoscloud/AVUser$9;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/UpdatePasswordCallback;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v7

    move v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static userArchiveExist()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static userClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static userFromQQWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "weiboToken"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 1323
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 1324
    .local v0, "user":Lcom/avos/avoscloud/AVUser;
    iput-object p0, v0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 1325
    iput-object p1, v0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 1326
    return-object v0
.end method

.method static userFromSinaWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "weiboToken"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 1316
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 1317
    .local v0, "user":Lcom/avos/avoscloud/AVUser;
    iput-object p0, v0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 1318
    iput-object p1, v0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 1319
    return-object v0
.end method

.method public static verifyMobilePhone(Ljava/lang/String;)V
    .locals 4
    .param p0, "verifyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1087
    new-array v0, v2, [Lcom/avos/avoscloud/AVException;

    .line 1088
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$19;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$19;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {v2, p0, v1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1094
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 1095
    const-string v1, "Exception during mobile phone verfify"

    aget-object v2, v0, v3

    invoke-static {v1, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1096
    aget-object v1, v0, v3

    throw v1

    .line 1098
    :cond_0
    return-void
.end method

.method public static verifyMobilePhoneInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1
    .param p0, "verifyCode"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1109
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1110
    return-void
.end method

.method public static verifyMobilePhoneInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1
    .param p0, "verifyCode"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    .prologue
    .line 1120
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1121
    return-void
.end method

.method private static verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 9
    .param p0, "sync"    # Z
    .param p1, "verifyCode"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1125
    move-object v8, p2

    .line 1127
    .local v8, "internalCallback":Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1128
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x7f

    const-string v3, "Invalid Verify Code"

    invoke-direct {v0, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1150
    :goto_0
    return-void

    .line 1133
    :cond_1
    const-string v0, "verifyMobilePhone/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    .local v1, "endpointer":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVUser$20;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$20;-><init>(Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    move v3, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public followInBackground(Ljava/lang/String;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 1
    .param p1, "userObjectId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/FollowCallback;

    .prologue
    .line 1351
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->followInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FollowCallback;)V

    .line 1352
    return-void
.end method

.method public followInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 5
    .param p1, "userObjectId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/avos/avoscloud/FollowCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/FollowCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1356
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p3}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1359
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, "endPoint":Ljava/lang/String;
    const-string v1, ""

    .line 1361
    .local v1, "paramsString":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1362
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1364
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/AVUser$23;

    invoke-direct {v4, p0, p3}, Lcom/avos/avoscloud/AVUser$23;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public followeeQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1541
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1544
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->followeeQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public followerQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1499
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1500
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1502
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->followerQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->facebookToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowersAndFolloweesInBackground(Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/avos/avoscloud/FollowersAndFolloweesCallback;

    .prologue
    const/4 v2, 0x0

    .line 1602
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1625
    :goto_0
    return-void

    .line 1605
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowersAndFollowees(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1606
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$27;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVUser$27;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public getFollowersInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/avos/avoscloud/FindCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1549
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1572
    :goto_0
    return-void

    .line 1552
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowersEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$25;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVUser$25;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public getMobilePhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMyFolloweesInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/avos/avoscloud/FindCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1576
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1599
    :goto_0
    return-void

    .line 1579
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFolloweesEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1580
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$26;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVUser$26;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getQQWeiboToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getQqWeiboToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSinaWeiboToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->twitterToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method protected headerMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1309
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1310
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    :cond_0
    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobilePhoneVerified()Z
    .locals 1

    .prologue
    .line 1194
    const-string v0, "mobilePhoneVerified"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    return v0
.end method

.method protected onDataSynchronized()V
    .locals 1

    .prologue
    .line 1303
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 1304
    return-void
.end method

.method protected onSaveSuccess()V
    .locals 1

    .prologue
    .line 1298
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 1299
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 622
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 632
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->remove(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method protected setAnonymous(Z)V
    .locals 0
    .param p1, "anonymous"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    .line 257
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    .line 1161
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1162
    return-void
.end method

.method setFacebookToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookToken"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->facebookToken:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMobilePhoneNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "mobilePhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    .line 1190
    const-string v0, "mobilePhoneNumber"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1191
    return-void
.end method

.method setMobilePhoneVerified(Z)V
    .locals 2
    .param p1, "mobilePhoneVerified"    # Z

    .prologue
    .line 1198
    const-string v0, "mobileVerified"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1199
    return-void
.end method

.method setNew(Z)V
    .locals 0
    .param p1, "isNew"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    .line 77
    return-void
.end method

.method setNewFlag(Z)V
    .locals 0
    .param p1, "isNew"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    .line 202
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    .line 1171
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1172
    return-void
.end method

.method setQQWeiboToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 1290
    return-void
.end method

.method setQqWeiboToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "qqWeiboToken"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 63
    return-void
.end method

.method setSessionToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    .line 232
    return-void
.end method

.method setSinaWeiboToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 1282
    return-void
.end method

.method setTwitterToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterToken"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->twitterToken:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 1181
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1182
    return-void
.end method

.method public signUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1241
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVUser$22;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVUser$22;-><init>(Lcom/avos/avoscloud/AVUser;)V

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->signUp(ZLcom/avos/avoscloud/SignUpCallback;)V

    .line 1255
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1258
    :cond_0
    return-void
.end method

.method public signUpInBackground(Lcom/avos/avoscloud/SignUpCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SignUpCallback;

    .prologue
    .line 1277
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->signUp(ZLcom/avos/avoscloud/SignUpCallback;)V

    .line 1278
    return-void
.end method

.method public unfollowInBackground(Ljava/lang/String;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 6
    .param p1, "userObjectId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/FollowCallback;

    .prologue
    const/4 v4, 0x0

    .line 1389
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    :goto_0
    return-void

    .line 1392
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1393
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/AVUser$24;

    invoke-direct {v3, p0, p2}, Lcom/avos/avoscloud/AVUser$24;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 702
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 703
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$8;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVUser$8;-><init>(Lcom/avos/avoscloud/AVUser;[Lcom/avos/avoscloud/AVException;)V

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V

    .line 711
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 712
    aget-object v1, v0, v2

    throw v1

    .line 714
    :cond_0
    return-void
.end method

.method public updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 1
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/avos/avoscloud/UpdatePasswordCallback;

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V

    .line 724
    return-void
.end method
