.class public Lcom/avos/avoscloud/PaasClient;
.super Ljava/lang/Object;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/PaasClient$7;,
        Lcom/avos/avoscloud/PaasClient$ForgotCookieStore;
    }
.end annotation


# static fields
.field private static final COOKIE_STORE:Lorg/apache/http/client/CookieStore;

.field public static final DEFAULT_FAIL_STRING:Ljava/lang/String; = "request failed!!!"

.field static apiKeyField:Ljava/lang/String; = null

.field static applicationIdField:Ljava/lang/String; = null

.field private static final defaultContentType:Ljava/lang/String; = "application/json"

.field private static final defaultEncoding:Ljava/lang/String; = "UTF-8"

.field private static fileModifiedDateComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static internalObjectsForEventuallySave:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObjectReferenceCount;",
            ">;"
        }
    .end annotation
.end field

.field private static isCN:Z = false

.field private static isUrulu:Z = false

.field private static lastModify:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastModifyEnabled:Z = false

.field public static final sdkVersion:Ljava/lang/String; = "v2.6.7"

.field static serviceClientMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/PaasClient;",
            ">;"
        }
    .end annotation
.end field

.field static serviceHostMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sessionTokenField:Ljava/lang/String; = null

.field static socketFactory:Lcom/avos/avoscloud/AVOSSSLSocketFactory; = null

.field private static final userAgent:Ljava/lang/String; = "AVOS Cloud android-v2.6.7 SDK"


# instance fields
.field private final apiVersion:Ljava/lang/String;

.field private asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

.field private baseUrl:Ljava/lang/String;

.field private currentUser:Lcom/avos/avoscloud/AVUser;

.field private defaultACL:Lcom/avos/avoscloud/AVACL;

.field private isProduction:Z

.field private syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    new-instance v0, Lcom/avos/avoscloud/PaasClient$ForgotCookieStore;

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/PaasClient$ForgotCookieStore;-><init>(Lcom/avos/avoscloud/PaasClient$1;)V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->COOKIE_STORE:Lorg/apache/http/client/CookieStore;

    .line 56
    sput-object v2, Lcom/avos/avoscloud/PaasClient;->socketFactory:Lcom/avos/avoscloud/AVOSSSLSocketFactory;

    .line 59
    sput-boolean v1, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 60
    sput-boolean v1, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    .line 83
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://api.leancloud.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    .line 906
    new-instance v0, Lcom/avos/avoscloud/PaasClient$6;

    invoke-direct {v0}, Lcom/avos/avoscloud/PaasClient$6;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->fileModifiedDateComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/PaasClient;->isProduction:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    .line 149
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    .line 151
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useUruluServer()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useOfficalParseServer()V

    goto :goto_0
.end method

.method private addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V
    .locals 4
    .param p1, "client"    # Lcom/loopj/android/http/AsyncHttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loopj/android/http/AsyncHttpClient;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 468
    :cond_0
    return-void

    .line 464
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 465
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 466
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "paramString"    # Ljava/lang/String;
    .param p4, "objectId"    # Ljava/lang/String;
    .param p5, "_internalId"    # Ljava/lang/String;

    .prologue
    .line 639
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCommandCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {p4, p5, p1, p2, p3}, Lcom/avos/avoscloud/AVUtils;->getArchiveRequestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 643
    .local v1, "theArchivedFile":Ljava/io/File;
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 644
    .local v0, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "method"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v2, "relativePath"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v2, "paramString"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v2, "objectId"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v2, "_internalId"

    invoke-interface {v0, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->toJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 652
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "did save to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 656
    :cond_0
    return-object v1
.end method

.method private batchRequest(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 529
    .local v0, "requests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "requests"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    return-object v0
.end method

.method private batchSaveRelativeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, "batch/save"

    return-object v0
.end method

.method private batchUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 303
    const-string v0, "%s/%s/batch"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearLastModifyCache()V
    .locals 5

    .prologue
    .line 833
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 834
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 835
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 836
    .local v1, "pairs":Ljava/util/Map$Entry;
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lcom/avos/avoscloud/AVCacheManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    .end local v1    # "pairs":Ljava/util/Map$Entry;
    :cond_0
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 839
    return-void
.end method

.method public static cloudInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->FUNCTION_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method private configHttpClient(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 3
    .param p1, "client"    # Lcom/loopj/android/http/AsyncHttpClient;

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/loopj/android/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 209
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 210
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->COOKIE_STORE:Lorg/apache/http/client/CookieStore;

    invoke-virtual {p1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 211
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getThreadPoolSize()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setThreadPool(Ljava/util/concurrent/ExecutorService;)V

    .line 212
    return-void
.end method

.method private createGetHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 3
    .param p1, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 311
    new-instance v0, Lcom/avos/avoscloud/GetHttpResponseHandler;

    sget-object v1, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V

    .line 313
    .local v0, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    return-object v0
.end method

.method private createGetHandler(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p2, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .param p3, "absoluteURLString"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V

    .line 320
    .local v0, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    return-object v0
.end method

.method private createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 324
    new-instance v0, Lcom/avos/avoscloud/PostHttpResponseHandler;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/PostHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 325
    .local v0, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    return-object v0
.end method

.method private getDebugClientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    .line 760
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "YourAppKey"

    goto :goto_0
.end method

.method public static getLastModify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "absolutURLString"    # Ljava/lang/String;

    .prologue
    .line 817
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    const/4 v0, 0x0

    .line 820
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleArchivedRequest(Ljava/io/File;Z)V
    .locals 1
    .param p1, "archivedFile"    # Ljava/io/File;
    .param p2, "sync"    # Z

    .prologue
    .line 660
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 661
    return-void
.end method

.method private handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 21
    .param p1, "archivedFile"    # Ljava/io/File;
    .param p2, "sync"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 666
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v17

    .line 667
    .local v17, "archivedFileContent":Ljava/lang/String;
    const/16 v19, 0x0

    .line 669
    .local v19, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v19, Ljava/util/Map;

    .line 670
    .restart local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 671
    const-string v3, "method"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 672
    .local v20, "method":Ljava/lang/String;
    const-string v3, "relativePath"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 673
    .local v4, "relativePath":Ljava/lang/String;
    const-string v3, "paramString"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 674
    .local v5, "paramString":Ljava/lang/String;
    const-string v3, "objectId"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 675
    .local v9, "objectId":Ljava/lang/String;
    const-string v3, "_internalId"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 676
    .local v10, "_internalId":Ljava/lang/String;
    new-instance v8, Lcom/avos/avoscloud/PaasClient$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/avos/avoscloud/PaasClient$5;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/io/File;)V

    .line 706
    .local v8, "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    if-nez v20, :cond_0

    .line 707
    new-instance v3, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v6, "Null method."

    invoke-direct {v3, v6}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v8, v3, v6}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 709
    :cond_0
    const-string v3, "post"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 710
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v5, v1, v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 720
    .end local v4    # "relativePath":Ljava/lang/String;
    .end local v5    # "paramString":Ljava/lang/String;
    .end local v8    # "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v9    # "objectId":Ljava/lang/String;
    .end local v10    # "_internalId":Ljava/lang/String;
    .end local v17    # "archivedFileContent":Ljava/lang/String;
    .end local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "method":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 711
    .restart local v4    # "relativePath":Ljava/lang/String;
    .restart local v5    # "paramString":Ljava/lang/String;
    .restart local v8    # "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .restart local v9    # "objectId":Ljava/lang/String;
    .restart local v10    # "_internalId":Ljava/lang/String;
    .restart local v17    # "archivedFileContent":Ljava/lang/String;
    .restart local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "method":Ljava/lang/String;
    :cond_2
    const-string v3, "put"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 712
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 717
    .end local v4    # "relativePath":Ljava/lang/String;
    .end local v5    # "paramString":Ljava/lang/String;
    .end local v8    # "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v9    # "objectId":Ljava/lang/String;
    .end local v10    # "_internalId":Ljava/lang/String;
    .end local v17    # "archivedFileContent":Ljava/lang/String;
    .end local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "method":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 718
    .local v18, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 713
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v4    # "relativePath":Ljava/lang/String;
    .restart local v5    # "paramString":Ljava/lang/String;
    .restart local v8    # "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .restart local v9    # "objectId":Ljava/lang/String;
    .restart local v10    # "_internalId":Ljava/lang/String;
    .restart local v17    # "archivedFileContent":Ljava/lang/String;
    .restart local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "method":Ljava/lang/String;
    :cond_3
    const-string v3, "delete"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v11, p0

    move-object v12, v4

    move/from16 v13, p2

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    .line 714
    invoke-virtual/range {v11 .. v16}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private headerString(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 765
    const-string v5, " -H \"%s: %s\" -H \"%s: %s\" "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v7, v6, v9

    sget-object v7, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v7, v6, v10

    sget-object v7, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v7, v6, v11

    const/4 v7, 0x3

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, "string":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 769
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 770
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 771
    .local v4, "value":Ljava/lang/String;
    const-string v5, " -H \"%s: %s\" "

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v9

    aput-object v4, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    goto :goto_0

    .line 775
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -H \"Content-Type: application/json\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    return-object v3
.end method

.method public static isAVOSCloud()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    return v0
.end method

.method public static isJSONResponse([Lorg/apache/http/Header;)Z
    .locals 6
    .param p0, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 852
    .local v1, "h":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 853
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 856
    .end local v1    # "h":Lorg/apache/http/Header;
    :goto_1
    return v4

    .line 851
    .restart local v1    # "h":Lorg/apache/http/Header;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    .end local v1    # "h":Lorg/apache/http/Header;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isLastModifyEnabled()Z
    .locals 1

    .prologue
    .line 824
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    return v0
.end method

.method public static lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 6
    .param p0, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 843
    .local v1, "h":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Last-Modified"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 844
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 847
    .end local v1    # "h":Lorg/apache/http/Header;
    :goto_1
    return-object v4

    .line 842
    .restart local v1    # "h":Lorg/apache/http/Header;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 847
    .end local v1    # "h":Lorg/apache/http/Header;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "cb"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 494
    if-eqz p2, :cond_0

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 497
    :cond_0
    return-void
.end method

.method protected static registerEventuallyObject(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .param p0, "object"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 876
    if-eqz p0, :cond_0

    .line 877
    monitor-enter p0

    .line 878
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    .line 879
    .local v0, "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    if-eqz v0, :cond_1

    .line 880
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObjectReferenceCount;->increment()I

    .line 885
    :goto_0
    monitor-exit p0

    .line 887
    .end local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :cond_0
    return-void

    .line 882
    .restart local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    .end local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObjectReferenceCount;-><init>(Lcom/avos/avoscloud/AVObject;)V

    .line 883
    .restart local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 885
    .end local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeLastModifyForUrl(Ljava/lang/String;)V
    .locals 1
    .param p0, "absolutURLString"    # Ljava/lang/String;

    .prologue
    .line 872
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    return-void
.end method

.method public static setLastModifyEnabled(Z)V
    .locals 0
    .param p0, "e"    # Z

    .prologue
    .line 828
    sput-boolean p0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    .line 829
    return-void
.end method

.method protected static setServiceHost(Lcom/avos/avoscloud/AVOSServices;Ljava/lang/String;)V
    .locals 2
    .param p0, "service"    # Lcom/avos/avoscloud/AVOSServices;
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 341
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method protected static sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;
    .locals 4
    .param p0, "service"    # Lcom/avos/avoscloud/AVOSServices;

    .prologue
    .line 99
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v3, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 102
    .local v0, "host":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/PaasClient;

    .line 103
    .local v1, "instance":Lcom/avos/avoscloud/PaasClient;
    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/avos/avoscloud/PaasClient;

    .end local v1    # "instance":Lcom/avos/avoscloud/PaasClient;
    invoke-direct {v1}, Lcom/avos/avoscloud/PaasClient;-><init>()V

    .line 105
    .restart local v1    # "instance":Lcom/avos/avoscloud/PaasClient;
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/PaasClient;->setBaseUrl(Ljava/lang/String;)V

    .line 106
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    return-object v1

    .line 99
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "instance":Lcom/avos/avoscloud/PaasClient;
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method private signRequest()Ljava/lang/String;
    .locals 6

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getCurrentTimestamp()J

    move-result-wide v2

    .line 161
    .local v2, "ts":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private declared-synchronized sslSocketFactory()Lcom/avos/avoscloud/AVOSSSLSocketFactory;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 184
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/avos/avoscloud/PaasClient;->socketFactory:Lcom/avos/avoscloud/AVOSSSLSocketFactory;

    if-eqz v3, :cond_0

    .line 185
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->socketFactory:Lcom/avos/avoscloud/AVOSSSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    monitor-exit p0

    return-object v2

    .line 188
    :cond_0
    :try_start_1
    const-string v3, "BKS"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 190
    .local v1, "trustStore":Ljava/security/KeyStore;
    sget-boolean v3, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    if-nez v3, :cond_1

    .line 191
    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "raw/avoscloud_us_ssl"

    const-string v6, "bks"

    sget-object v7, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 198
    :goto_1
    new-instance v3, Lcom/avos/avoscloud/AVOSSSLSocketFactory;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVOSSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    sput-object v3, Lcom/avos/avoscloud/PaasClient;->socketFactory:Lcom/avos/avoscloud/AVOSSSLSocketFactory;

    .line 200
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->socketFactory:Lcom/avos/avoscloud/AVOSSSLSocketFactory;

    goto :goto_0

    .line 196
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 201
    .end local v1    # "trustStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Create SSL socket factory failed"

    invoke-static {v3, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 184
    .end local v0    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static statistisInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->STATISTICS_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method public static storageInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method private switchPushRouter(Ljava/lang/String;)V
    .locals 4
    .param p1, "routerServer"    # Ljava/lang/String;

    .prologue
    .line 269
    :try_start_0
    const-string v3, "com.avos.avospush.push.AVPushRouter"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 270
    .local v0, "avPushRouterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 271
    .local v2, "switchMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0    # "avPushRouterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "switchMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "avpushRouter server didn\'t switched"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static unregisterEvtuallyObject(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .param p0, "object"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 890
    if-eqz p0, :cond_1

    .line 891
    monitor-enter p0

    .line 892
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObjectReferenceCount;

    move-object v0, v1

    .line 896
    .local v0, "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :goto_0
    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObjectReferenceCount;->desc()I

    move-result v1

    if-gtz v1, :cond_0

    .line 898
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :cond_0
    monitor-exit p0

    .line 904
    .end local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :cond_1
    return-void

    .line 892
    :cond_2
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObjectReferenceCount;

    move-object v0, v1

    goto :goto_0

    .line 902
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateHeaders(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 3
    .param p1, "client"    # Lcom/loopj/android/http/AsyncHttpClient;

    .prologue
    .line 169
    const-string v2, "X-Uluru-Application-Production"

    iget-boolean v1, p0, Lcom/avos/avoscloud/PaasClient;->isProduction:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {p1, v2, v1}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 171
    .local v0, "currAVUser":Lcom/avos/avoscloud/AVUser;
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v2, v1}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "AVOS Cloud android-v2.6.7 SDK"

    invoke-virtual {p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 180
    const-string v1, "x-avoscloud-request-sign"

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->signRequest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 169
    .end local v0    # "currAVUser":Lcom/avos/avoscloud/AVUser;
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 171
    .restart local v0    # "currAVUser":Lcom/avos/avoscloud/AVUser;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "absolutURLString"    # Ljava/lang/String;
    .param p1, "ts"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 860
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v0

    .line 864
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method assembleBatchOpsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 519
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 521
    .local v2, "object":Ljava/lang/Object;
    const-string v4, "PUT"

    invoke-virtual {p0, v4, p2, v2}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 522
    .local v3, "opDict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "opDict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v1
.end method

.method batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/Object;
    .param p4, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 504
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "method"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v1, "path"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v1, "body"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    if-eqz p4, :cond_0

    .line 508
    const-string v1, "params"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_0
    return-object v0
.end method

.method public buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v0, "%s/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;
    .locals 2
    .param p1, "sync"    # Z

    .prologue
    .line 215
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/avos/avoscloud/PaasClient$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/PaasClient$1;-><init>(Lcom/avos/avoscloud/PaasClient;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;

    .line 222
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->sslSocketFactory()Lcom/avos/avoscloud/AVOSSSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/SyncHttpClient;->setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    .line 223
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->configHttpClient(Lcom/loopj/android/http/AsyncHttpClient;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/loopj/android/http/AsyncHttpClient;)V

    .line 226
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_0
    monitor-exit p0

    return-object v0

    .line 228
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    .line 230
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->sslSocketFactory()Lcom/avos/avoscloud/AVOSSSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    .line 231
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->configHttpClient(Lcom/loopj/android/http/AsyncHttpClient;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/loopj/android/http/AsyncHttpClient;)V

    .line 234
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p4, "objectId"    # Ljava/lang/String;
    .param p5, "_internalId"    # Ljava/lang/String;

    .prologue
    .line 627
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "isEventually"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p5, "objectId"    # Ljava/lang/String;
    .param p6, "_internalId"    # Ljava/lang/String;

    .prologue
    .line 609
    if-eqz p3, :cond_0

    .line 610
    :try_start_0
    const-string v1, "delete"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 611
    .local v6, "archivedFile":Ljava/io/File;
    invoke-direct {p0, v6, p2, p4}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 623
    .end local v6    # "archivedFile":Ljava/io/File;
    :goto_0
    return-void

    .line 613
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 614
    .local v9, "url":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v9, v1}, Lcom/avos/avoscloud/PaasClient;->dumpHttpDeleteRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_1
    invoke-direct {p0, p4}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v8

    .line 618
    .local v8, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    .end local v8    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .end local v9    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 621
    .local v7, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v7, p4}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public dumpHttpDeleteRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 792
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "curl -X DELETE %s  -d \'%s\' %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public dumpHttpGetRequest(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 742
    const-string v0, ""

    .line 743
    .local v0, "string":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 744
    const-string v1, "curl -X GET -H \"%s: %s\" -H \"%s: %s\" -G --data-urlencode \'%s\' %s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p2}, Lcom/loopj/android/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 753
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 754
    return-void

    .line 749
    :cond_0
    const-string v1, "curl -X GET -H \"%s: %s\" -H \"%s: %s\"  %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p1, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "curl -X POST %s  -d \'%s\' %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method public dumpHttpPutRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 780
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "curl -X PUT %s  -d \' %s \' %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method generateQueryPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;
    .locals 3
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;

    .prologue
    .line 411
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "absolutURLString":Ljava/lang/String;
    return-object v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentUser()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method getDefaultACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->defaultACL:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;
    .locals 17
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .param p7, "maxAgeInMilliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 348
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "absolutURLString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/PaasClient;->updateHeaderForPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, "lastModify":Ljava/lang/String;
    sget-object v4, Lcom/avos/avoscloud/PaasClient$7;->$SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy:[I

    invoke-virtual/range {p6 .. p6}, Lcom/avos/avoscloud/AVQuery$CachePolicy;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 353
    invoke-virtual/range {p0 .. p6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    .line 407
    :goto_0
    return-object v5

    .line 356
    :pswitch_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    move-wide/from16 v6, p7

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 360
    :pswitch_1
    invoke-virtual/range {p0 .. p6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    goto :goto_0

    .line 363
    :pswitch_2
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    new-instance v9, Lcom/avos/avoscloud/PaasClient$2;

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p6

    invoke-direct/range {v9 .. v16}, Lcom/avos/avoscloud/PaasClient$2;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    move-wide/from16 v6, p7

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 377
    :pswitch_3
    new-instance v9, Lcom/avos/avoscloud/PaasClient$3;

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move-object v12, v5

    move-wide/from16 v13, p7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/avos/avoscloud/PaasClient$3;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object v15, v9

    move-object/from16 v16, p6

    invoke-virtual/range {v10 .. v16}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    goto :goto_0

    .line 391
    :pswitch_4
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    new-instance v9, Lcom/avos/avoscloud/PaasClient$4;

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p6

    invoke-direct/range {v9 .. v16}, Lcom/avos/avoscloud/PaasClient$4;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    move-wide/from16 v6, p7

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 7
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 451
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    .line 452
    return-void
.end method

.method public getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V
    .locals 8
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 418
    .local p4, "inputHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-virtual {p6, v0}, Lcom/avos/avoscloud/AVQuery$CachePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Z)V

    .line 420
    return-void

    .line 418
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Z)V
    .locals 13
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .param p7, "retry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p4, "inputHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v11, p4

    .line 427
    .local v11, "myHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p4, :cond_0

    .line 428
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "myHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 430
    .restart local v11    # "myHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0, p1, p2, v11}, Lcom/avos/avoscloud/PaasClient;->updateHeaderForPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Ljava/util/Map;)Ljava/lang/String;

    .line 432
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 433
    .local v12, "url":Ljava/lang/String;
    if-eqz p7, :cond_1

    .line 434
    new-instance v2, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;-><init>(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    .end local p5    # "callback":Lcom/avos/avoscloud/GenericObjectCallback;
    .local v2, "callback":Lcom/avos/avoscloud/GenericObjectCallback;
    move-object/from16 p5, v2

    .line 438
    .end local v2    # "callback":Lcom/avos/avoscloud/GenericObjectCallback;
    .restart local p5    # "callback":Lcom/avos/avoscloud/GenericObjectCallback;
    :cond_1
    const/4 v3, 0x1

    invoke-static {v3, v12, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v0, v1, v3}, Lcom/avos/avoscloud/PaasClient;->createGetHandler(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v10

    .line 441
    .local v10, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    invoke-virtual {p0, v12, p2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpGetRequest(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)V

    .line 444
    :cond_2
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v9

    .line 445
    .local v9, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-direct {p0, v9, v11}, Lcom/avos/avoscloud/PaasClient;->addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V

    .line 446
    invoke-virtual {v9, v12, p2, v10}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 447
    return-void
.end method

.method public handleAllArchivedRequest()V
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->handleAllArchivedRequest(Z)V

    .line 724
    return-void
.end method

.method protected handleAllArchivedRequest(Z)V
    .locals 7
    .param p1, "sync"    # Z

    .prologue
    .line 727
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCommandCacheDir()Ljava/io/File;

    move-result-object v2

    .line 728
    .local v2, "commandCacheDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 729
    .local v0, "archivedRequests":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    .line 730
    sget-object v6, Lcom/avos/avoscloud/PaasClient;->fileModifiedDateComparator:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 731
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 732
    .local v3, "file":Ljava/io/File;
    invoke-direct {p0, v3, p1}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;Z)V

    .line 731
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 735
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-void
.end method

.method public postBatchObject(Ljava/util/List;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 9
    .param p2, "sync"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchUrl()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "url":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->batchRequest(Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 539
    .local v8, "requests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "json":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v1, "UTF-8"

    invoke-virtual {v7, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 541
    .local v3, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {p0, p3, v2, v7}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_0
    new-instance v5, Lcom/avos/avoscloud/PostHttpResponseHandler;

    invoke-direct {v5, p4}, Lcom/avos/avoscloud/PostHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 545
    .local v5, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    .line 546
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/PaasClient;->addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V

    .line 547
    const/4 v1, 0x0

    const-string v4, "application/json"

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v5    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "requests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v6

    .line 549
    .local v6, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v6, p4}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "list"    # Ljava/util/List;
    .param p2, "sync"    # Z
    .param p3, "isEventually"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "objectId"    # Ljava/lang/String;
    .param p7, "_internalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 557
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v14, "params":Ljava/util/Map;
    const-string v2, "requests"

    move-object/from16 v0, p1

    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-static {v14}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "paramString":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 561
    const-string v3, "post"

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchSaveRelativeUrl()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 563
    .local v12, "archivedFile":Ljava/io/File;
    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v12, v0, v1}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 578
    .end local v5    # "paramString":Ljava/lang/String;
    .end local v12    # "archivedFile":Ljava/io/File;
    .end local v14    # "params":Ljava/util/Map;
    :goto_0
    return-void

    .line 565
    .restart local v5    # "paramString":Ljava/lang/String;
    .restart local v14    # "params":Ljava/util/Map;
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchSaveRelativeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 566
    .local v8, "url":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v2, "UTF-8"

    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v9, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 567
    .local v9, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v5}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v11

    .line 571
    .local v11, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v6

    .line 572
    .local v6, "client":Lcom/loopj/android/http/AsyncHttpClient;
    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lcom/avos/avoscloud/PaasClient;->addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V

    .line 573
    const/4 v7, 0x0

    const-string v10, "application/json"

    invoke-virtual/range {v6 .. v11}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v5    # "paramString":Ljava/lang/String;
    .end local v6    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v11    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .end local v14    # "params":Ljava/util/Map;
    :catch_0
    move-exception v13

    .line 576
    .local v13, "exception":Ljava/lang/Exception;
    move-object/from16 v0, p5

    invoke-direct {p0, v13, v0}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 8
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    const/4 v6, 0x0

    .line 602
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "isEventually"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "objectId"    # Ljava/lang/String;
    .param p7, "_internalId"    # Ljava/lang/String;

    .prologue
    .line 583
    if-eqz p4, :cond_0

    .line 584
    :try_start_0
    const-string v1, "post"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 585
    .local v6, "archivedFile":Ljava/io/File;
    invoke-direct {p0, v6, p3, p5}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 598
    .end local v6    # "archivedFile":Ljava/io/File;
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 589
    .local v3, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, p2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_1
    invoke-direct {p0, p5}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v5

    .line 593
    .local v5, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    const-string v4, "application/json"

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v5    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    :catch_0
    move-exception v7

    .line 596
    .local v7, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v7, p5}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "objectId"    # Ljava/lang/String;
    .param p7, "_internalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 457
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "isEventually"    # Z
    .param p6, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p7, "objectId"    # Ljava/lang/String;
    .param p8, "_internalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 474
    .local p5, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 475
    :try_start_0
    const-string v1, "put"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 476
    .local v6, "archivedFile":Ljava/io/File;
    invoke-direct {p0, v6, p3, p6}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 491
    .end local v6    # "archivedFile":Ljava/io/File;
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 480
    .local v3, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-direct {p0, p6}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v5

    .line 481
    .local v5, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {p0, p5, v2, p2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPutRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_1
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    .line 485
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-direct {p0, v0, p5}, Lcom/avos/avoscloud/PaasClient;->addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V

    .line 486
    const/4 v1, 0x0

    const-string v4, "application/json"

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v5    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    :catch_0
    move-exception v7

    .line 489
    .local v7, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v7, p6}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 334
    return-void
.end method

.method setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    .locals 0
    .param p1, "user"    # Lcom/avos/avoscloud/AVUser;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    .line 145
    return-void
.end method

.method setDefaultACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0
    .param p1, "acl"    # Lcom/avos/avoscloud/AVACL;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->defaultACL:Lcom/avos/avoscloud/AVACL;

    .line 129
    return-void
.end method

.method setProduction(Z)V
    .locals 0
    .param p1, "production"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/avos/avoscloud/PaasClient;->isProduction:Z

    .line 91
    return-void
.end method

.method public updateHeaderForPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 802
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 803
    const/4 v2, 0x0

    .line 813
    :cond_0
    :goto_0
    return-object v2

    .line 806
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "absoluteURLString":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->getLastModify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, "modify":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 810
    .local v1, "exist":Z
    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    .line 811
    const-string v3, "If-Modified-Since"

    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public useAVCloudCN()V
    .locals 3

    .prologue
    .line 278
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 279
    const-string v0, "https://api.leancloud.cn"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 280
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v0, "X-avoscloud-Application-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 282
    const-string v0, "X-avoscloud-Application-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 283
    const-string v0, "X-avoscloud-Session-Token"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 285
    const-string v0, "useAVOSCloudCN"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->switchPushRouter(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public useAVCloudUS()V
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 257
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    .line 258
    const-string v0, "https://avoscloud.us"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 259
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "X-avoscloud-Application-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 261
    const-string v0, "X-avoscloud-Application-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 262
    const-string v0, "X-avoscloud-Session-Token"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 263
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeS3:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 264
    const-string v0, "useAVOSCloudUS"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->switchPushRouter(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public useLocalStg()V
    .locals 3

    .prologue
    .line 289
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 290
    const-string v0, "https://cn-stg1.avoscloud.com"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 291
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "X-avoscloud-Application-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 293
    const-string v0, "X-avoscloud-Application-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 294
    const-string v0, "X-avoscloud-Session-Token"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 295
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 296
    return-void
.end method

.method public useOfficalParseServer()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 248
    const-string v0, "https://api.parse.com"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 249
    const-string v0, "X-AVOSCloud-Application-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 250
    const-string v0, "X-AVOSCloud-REST-API-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 251
    const-string v0, "X-AVOSCloud-Session-Token"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 252
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeAV:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 253
    return-void
.end method

.method public useUruluServer()V
    .locals 1

    .prologue
    .line 239
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useAVCloudCN()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useAVCloudUS()V

    goto :goto_0
.end method

.method public userHeaderMap()Ljava/util/Map;
    .locals 2
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
    .line 136
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 137
    .local v0, "user":Lcom/avos/avoscloud/AVUser;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->headerMap()Ljava/util/Map;

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
