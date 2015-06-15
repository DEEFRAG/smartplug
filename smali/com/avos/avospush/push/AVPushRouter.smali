.class public Lcom/avos/avospush/push/AVPushRouter;
.super Ljava/lang/Object;
.source "AVPushRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/push/AVPushRouter$RetryHandler;
    }
.end annotation


# static fields
.field private static final CN_DEFAULT_PUSH_SERVER:Ljava/lang/String; = "ws://push.avoscloud.com/"

.field private static final CN_PUSH_GROUP:Ljava/lang/String; = "g0"

.field private static final CN_ROUTER_SERVICE_FMT:Ljava/lang/String; = "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

.field private static final EXPIRE_AT:Ljava/lang/String; = "expireAt"

.field public static final FAIL:I = -0x1

.field private static final GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final MAX_INTERVAL:I = 0x12c

.field public static final OK:I = 0x0

.field private static final PUSH_SERVER_CACHE_KEY_FMT:Ljava/lang/String; = "com.avos.push.router.server.cache%s"

.field public static final SERVER:Ljava/lang/String; = "server"

.field private static final US_DEFAULT_PUSH_SERVER:Ljava/lang/String; = "ws://push.avoscloud.us/"

.field private static final US_PUSH_GROUP:Ljava/lang/String; = "a0"

.field private static final US_ROUTER_SERVICE_FMT:Ljava/lang/String; = "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

.field private static currentDefaultPushServer:Ljava/lang/String;

.field private static currentPushGroup:Ljava/lang/String;

.field private static currentRouterServiceFMT:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final installationId:Ljava/lang/String;

.field private volatile interval:I

.field private final pushRouterListener:Lcom/avos/avospush/push/AVPushRouterListener;

.field private final reconnectTaskHanlder:Landroid/os/Handler;

.field private final retryHandler:Lcom/avos/avospush/push/AVPushRouter$RetryHandler;

.field private ttlInSecs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "g0"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    .line 46
    const-string v0, "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentRouterServiceFMT:Ljava/lang/String;

    .line 47
    const-string v0, "ws://push.avoscloud.com/"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentDefaultPushServer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avospush/push/AVPushRouterListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installationId"    # Ljava/lang/String;
    .param p3, "pushRouterListener"    # Lcom/avos/avospush/push/AVPushRouterListener;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I

    .line 52
    new-instance v0, Lcom/avos/avospush/push/AVPushRouter$RetryHandler;

    invoke-direct {v0, p0}, Lcom/avos/avospush/push/AVPushRouter$RetryHandler;-><init>(Lcom/avos/avospush/push/AVPushRouter;)V

    iput-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->retryHandler:Lcom/avos/avospush/push/AVPushRouter$RetryHandler;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->reconnectTaskHanlder:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/avos/avospush/push/AVPushRouter;->interval:I

    .line 88
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/avos/avospush/push/AVPushRouter;->installationId:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/avos/avospush/push/AVPushRouter;->pushRouterListener:Lcom/avos/avospush/push/AVPushRouterListener;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avospush/push/AVPushRouter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avospush/push/AVPushRouter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avospush/push/AVPushRouter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/avos/avospush/push/AVPushRouter;->fetchPushServer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/avos/avospush/push/AVPushRouter;)I
    .locals 1
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;

    .prologue
    .line 28
    iget v0, p0, Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I

    return v0
.end method

.method static synthetic access$402(Lcom/avos/avospush/push/AVPushRouter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I

    return p1
.end method

.method static synthetic access$500(Lcom/avos/avospush/push/AVPushRouter;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/avos/avospush/push/AVPushRouter;->cachePushServer(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/avos/avospush/push/AVPushRouter;)Lcom/avos/avospush/push/AVPushRouterListener;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->pushRouterListener:Lcom/avos/avospush/push/AVPushRouterListener;

    return-object v0
.end method

.method private cachePushServer(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pushServerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 204
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    const-string v3, "com.avos.push.router.server.cache%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, "pushServerData":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "groupId"

    const-string v2, "groupId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    const-string v3, "server"

    const-string v2, "server"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    const-string v3, "expireAt"

    const-string v2, "expireAt"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    return-void
.end method

.method private fetchPushServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "installationId"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushRouter;->getPushServerFromCache()Ljava/util/HashMap;

    move-result-object v1

    .line 144
    .local v1, "pushServerCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "expireAt"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 145
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get push server from cache:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "server"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/avos/avospush/push/AVPushRouter;->pushRouterListener:Lcom/avos/avospush/push/AVPushRouterListener;

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/avos/avospush/push/AVPushRouter;->pushRouterListener:Lcom/avos/avospush/push/AVPushRouterListener;

    invoke-interface {v3, v1, p1, p2}, Lcom/avos/avospush/push/AVPushRouterListener;->onResponse(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/avos/avospush/push/AVPushRouter;->updateInterval(I)V

    .line 187
    :goto_0
    return-void

    .line 155
    :cond_2
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushRouter;->getRouterUrl()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "routerUrlStr":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to fetch push server from :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 159
    :cond_3
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getDirectlyClientForUse()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    .line 160
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v3, Lcom/avos/avoscloud/GetHttpResponseHandler;

    new-instance v4, Lcom/avos/avospush/push/AVPushRouter$1;

    invoke-direct {v4, p0, p2}, Lcom/avos/avospush/push/AVPushRouter$1;-><init>(Lcom/avos/avospush/push/AVPushRouter;Ljava/lang/String;)V

    sget-object v5, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-direct {v3, v4, v5, v2}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_0
.end method

.method private getPushServerFromCache()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 190
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v1, "pushServerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    const-string v3, "com.avos.push.router.server.cache%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, "pushServerData":Landroid/content/SharedPreferences;
    const-string v2, "groupId"

    const-string v3, "groupId"

    sget-object v4, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v2, "server"

    const-string v3, "server"

    sget-object v4, Lcom/avos/avospush/push/AVPushRouter;->currentDefaultPushServer:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v2, "expireAt"

    const-string v3, "expireAt"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-object v1
.end method

.method private getRouterUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    sget-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentRouterServiceFMT:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/avos/avospush/push/AVPushRouter;->installationId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useAVOSCloudCN()V
    .locals 1

    .prologue
    .line 232
    const-string v0, "g0"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    .line 233
    const-string v0, "ws://push.avoscloud.com/"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentDefaultPushServer:Ljava/lang/String;

    .line 234
    const-string v0, "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentRouterServiceFMT:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public static useAVOSCloudUS()V
    .locals 1

    .prologue
    .line 238
    const-string v0, "a0"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    .line 239
    const-string v0, "ws://push.avoscloud.us/"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentDefaultPushServer:Ljava/lang/String;

    .line 240
    const-string v0, "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentRouterServiceFMT:Ljava/lang/String;

    .line 241
    return-void
.end method


# virtual methods
.method public retryGetPushServer()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will retry to connect to push server in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/avos/avospush/push/AVPushRouter;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 98
    :cond_0
    iget v0, p0, Lcom/avos/avospush/push/AVPushRouter;->interval:I

    invoke-virtual {p0, v0}, Lcom/avos/avospush/push/AVPushRouter;->retryGetPushServer(I)V

    .line 99
    return-void
.end method

.method public declared-synchronized retryGetPushServer(I)V
    .locals 4
    .param p1, "interval"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 112
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avos/avospush/push/AVPushRouter;->updateInterval(I)V

    .line 113
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->reconnectTaskHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->retryHandler:Lcom/avos/avospush/push/AVPushRouter$RetryHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->reconnectTaskHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->retryHandler:Lcom/avos/avospush/push/AVPushRouter$RetryHandler;

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->reconnectTaskHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->retryHandler:Lcom/avos/avospush/push/AVPushRouter$RetryHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->reconnectTaskHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->retryHandler:Lcom/avos/avospush/push/AVPushRouter$RetryHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateInterval(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/16 v1, 0x12c

    .line 217
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :pswitch_0
    :try_start_0
    iget v0, p0, Lcom/avos/avospush/push/AVPushRouter;->interval:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avospush/push/AVPushRouter;->interval:I

    .line 220
    iget v0, p0, Lcom/avos/avospush/push/AVPushRouter;->interval:I

    if-le v0, v1, :cond_0

    .line 221
    const/16 v0, 0x12c

    iput v0, p0, Lcom/avos/avospush/push/AVPushRouter;->interval:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 225
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/avos/avospush/push/AVPushRouter;->interval:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
