.class public Lcom/avos/avoscloud/AVQuery;
.super Ljava/lang/Object;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVQuery$QueryOperation;,
        Lcom/avos/avoscloud/AVQuery$CachePolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CLOUD_QUERY_PATH:Ljava/lang/String; = "cloudQuery"

.field private static final TAG:Ljava/lang/String; = "com.parse.AVQuery"


# instance fields
.field private cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private externalQueryPath:Ljava/lang/String;

.field private include:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Ljava/lang/Boolean;

.field private limit:I

.field private maxCacheAge:J

.field private order:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
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

.field private queryPath:Ljava/lang/String;

.field private selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skip:I

.field private trace:Z

.field where:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVQuery$QueryOperation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .line 352
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 353
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "theClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 356
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 357
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    .line 358
    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    .line 360
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->include:Ljava/util/List;

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVQuery;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVQuery;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVQuery;->processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object v0

    return-object v0
.end method

.method private addOrItems(Lcom/avos/avoscloud/AVQuery$QueryOperation;)Lcom/avos/avoscloud/AVQuery;
    .locals 5
    .param p1, "op"    # Lcom/avos/avoscloud/AVQuery$QueryOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    const-string v4, "$or"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1146
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    if-nez v2, :cond_0

    .line 1147
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1148
    .restart local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    const-string v4, "$or"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1152
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVQuery$QueryOperation;

    .line 1154
    .local v1, "o":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AVQuery$QueryOperation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1155
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1159
    .end local v1    # "o":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    return-object p0
.end method

.method private addWhereItem(Lcom/avos/avoscloud/AVQuery$QueryOperation;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "op"    # Lcom/avos/avoscloud/AVQuery$QueryOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1134
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    iget-object v2, p1, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1135
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    if-nez v0, :cond_0

    .line 1136
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1137
    .restart local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    iget-object v2, p1, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVQuery;->removeDuplications(Lcom/avos/avoscloud/AVQuery$QueryOperation;Ljava/util/List;)V

    .line 1140
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    return-object p0
.end method

.method public static clearAllCachedResults()V
    .locals 0

    .prologue
    .line 428
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->clearAllCache()Z

    .line 429
    return-void
.end method

.method private countInBackground(ZLcom/avos/avoscloud/CountCallback;)V
    .locals 10
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/CountCallback;

    .prologue
    .line 490
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 491
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v2, "count"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v2, "limit"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    move-object v9, p2

    .line 494
    .local v9, "internalCallback":Lcom/avos/avoscloud/CountCallback;
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$3;

    invoke-direct {v5, p0, v9}, Lcom/avos/avoscloud/AVQuery$3;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/CountCallback;)V

    iget-object v6, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v7, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 518
    return-void
.end method

.method private createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "cmp"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 1128
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1129
    .local v0, "dict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    return-object v0
.end method

.method public static doCloudQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 1
    .param p0, "cql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1587
    const-class v0, Lcom/avos/avoscloud/AVObject;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVQuery;->doCloudQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public static doCloudQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .param p0, "cql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1602
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1603
    .local v0, "returnValue":Lcom/avos/avoscloud/AVCloudQueryResult;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$14;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$14;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v2, v3}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1615
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 1618
    :cond_0
    return-object v0
.end method

.method public static varargs doCloudQuery(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .param p0, "cql"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1529
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1530
    .local v0, "returnValue":Lcom/avos/avoscloud/AVCloudQueryResult;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$13;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$13;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const-class v2, Lcom/avos/avoscloud/AVObject;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, p2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1543
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1544
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 1546
    :cond_0
    return-object v0
.end method

.method public static varargs doCloudQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .param p0, "cql"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1498
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1499
    .local v0, "returnValue":Lcom/avos/avoscloud/AVCloudQueryResult;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$12;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$12;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const-class v2, Lcom/avos/avoscloud/AVObject;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, p1}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1511
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1512
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 1514
    :cond_0
    return-object v0
.end method

.method public static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;)V
    .locals 3
    .param p0, "cql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1629
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    const-class v0, Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1630
    return-void
.end method

.method public static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V
    .locals 2
    .param p0, "cql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1641
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1642
    return-void
.end method

.method private static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 11
    .param p0, "cql"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;Z[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1647
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1648
    .local v10, "pvalue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p4, :cond_0

    .line 1649
    move-object v6, p4

    .local v6, "arr$":[Ljava/lang/Object;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v9, v6, v7

    .line 1650
    .local v9, "o":Ljava/lang/Object;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1654
    .end local v6    # "arr$":[Ljava/lang/Object;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1655
    .local v2, "p":Lcom/loopj/android/http/RequestParams;
    const-string v0, "cql"

    invoke-virtual {v2, v0, p0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    invoke-static {v10}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1657
    const-string v0, "pvalues"

    invoke-static {v10}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "cloudQuery"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$15;

    invoke-direct {v5, p1, p2}, Lcom/avos/avoscloud/AVQuery$15;-><init>(Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1682
    return-void
.end method

.method public static varargs doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "cql"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1574
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1575
    return-void
.end method

.method public static varargs doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "cql"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1560
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    const-class v0, Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1561
    return-void
.end method

.method private generateQueryPath()V
    .locals 4

    .prologue
    .line 229
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 231
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 235
    :cond_0
    return-void
.end method

.method private getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V
    .locals 7
    .param p1, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 782
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v1, "limit"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v1, "order"

    const-string v2, "-updatedAt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    move-object v6, p2

    .line 785
    .local v6, "internalCallback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$8;

    invoke-direct {v5, p0, v6}, Lcom/avos/avoscloud/AVQuery$8;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 815
    return-void
.end method

.method private getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V
    .locals 7
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p3, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpointByAVClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, "path":Ljava/lang/String;
    move-object v6, p3

    .line 842
    .local v6, "internalCallback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 843
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$10;

    invoke-direct {v5, p0, v6}, Lcom/avos/avoscloud/AVQuery$10;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 878
    return-void
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p0, "theClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 372
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "com.parse.AVQuery"

    return-object v0
.end method

.method public static getUserQuery()Lcom/avos/avoscloud/AVQuery;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 888
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getQuery()Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public static or(Ljava/util/List;)Lcom/avos/avoscloud/AVQuery;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery<TT;>;>;"
    const/4 v6, 0x0

    .line 964
    const/4 v0, 0x0

    .line 965
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 966
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 968
    :cond_0
    new-instance v3, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 969
    .local v3, "result":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 970
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVQuery;

    .line 971
    .local v2, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    new-instance v4, Lcom/avos/avoscloud/AVQuery$QueryOperation;

    const-string v5, "$or"

    const-string v6, "$or"

    invoke-direct {v2}, Lcom/avos/avoscloud/AVQuery;->whereMap()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/avos/avoscloud/AVQuery$QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lcom/avos/avoscloud/AVQuery;->addOrItems(Lcom/avos/avoscloud/AVQuery$QueryOperation;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_0

    .line 974
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    :cond_1
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVQuery;

    iget-object v4, v4, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVQuery;->setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;

    .line 977
    :cond_2
    return-object v3
.end method

.method private static processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 10
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1686
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v8, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v8}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1687
    .local v8, "result":Lcom/avos/avoscloud/AVCloudQueryResult;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1688
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1689
    .local v1, "emptyResult":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    invoke-virtual {v8, v1}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    .line 1715
    .end local v1    # "emptyResult":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    :goto_0
    return-object v8

    .line 1692
    :cond_0
    new-instance v7, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v7}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 1693
    .local v7, "resp":Lcom/avos/avoscloud/AVResponse;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "resp":Lcom/avos/avoscloud/AVResponse;
    check-cast v7, Lcom/avos/avoscloud/AVResponse;

    .line 1695
    .restart local v7    # "resp":Lcom/avos/avoscloud/AVResponse;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1696
    .local v6, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v9, v7, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    if-eqz v9, :cond_4

    .line 1697
    iget-object v0, v7, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    .local v0, "arr$":[Ljava/util/Map;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .line 1698
    .local v3, "item":Ljava/util/Map;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1700
    if-eqz p1, :cond_3

    .line 1701
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVObject;

    .line 1702
    .local v5, "object":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1703
    iget-object v9, v7, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    .line 1708
    :cond_1
    :goto_2
    invoke-static {v3, v5}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1709
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1697
    .end local v5    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1706
    :cond_3
    new-instance v5, Lcom/avos/avoscloud/AVObject;

    iget-object v9, v7, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-direct {v5, v9}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .restart local v5    # "object":Lcom/avos/avoscloud/AVObject;
    goto :goto_2

    .line 1713
    .end local v0    # "arr$":[Ljava/util/Map;
    .end local v2    # "i$":I
    .end local v3    # "item":Ljava/util/Map;
    .end local v4    # "len$":I
    .end local v5    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_4
    iget v9, v7, Lcom/avos/avoscloud/AVResponse;->count:I

    invoke-virtual {v8, v9}, Lcom/avos/avoscloud/AVCloudQueryResult;->setCount(I)V

    .line 1714
    invoke-virtual {v8, v6}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    goto :goto_0
.end method

.method private queryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    .line 557
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removeDuplications(Lcom/avos/avoscloud/AVQuery$QueryOperation;Ljava/util/List;)V
    .locals 3
    .param p1, "op"    # Lcom/avos/avoscloud/AVQuery$QueryOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$QueryOperation;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVQuery$QueryOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1165
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVQuery$QueryOperation;

    .line 1167
    .local v1, "o":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AVQuery$QueryOperation;->sameOp(Lcom/avos/avoscloud/AVQuery$QueryOperation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1171
    .end local v1    # "o":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    :cond_1
    return-void
.end method

.method private whereMap()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 562
    .local v12, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v13, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 563
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 564
    .local v11, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 565
    .local v7, "key":Ljava/lang/String;
    const-string v13, "$or"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 566
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v9, "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVQuery$QueryOperation;

    .line 568
    .local v8, "op":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVQuery$QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 570
    .end local v8    # "op":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    :cond_1
    const-string v13, "$or"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 571
    .local v2, "existsOr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_2

    .line 572
    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 574
    :cond_2
    const-string v13, "$or"

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 577
    .end local v2    # "existsOr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 588
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .restart local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 590
    .local v10, "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 591
    .local v3, "hasEqual":Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVQuery$QueryOperation;

    .line 592
    .restart local v8    # "op":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    invoke-virtual {v8, v7}, Lcom/avos/avoscloud/AVQuery$QueryOperation;->toResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    const-string v13, "__eq"

    iget-object v14, v8, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 594
    const/4 v3, 0x1

    .line 596
    :cond_5
    if-nez v3, :cond_4

    .line 597
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVQuery$QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v10, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 581
    .end local v3    # "hasEqual":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "op":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    .end local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v10    # "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 582
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 583
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVQuery$QueryOperation;

    .line 584
    .restart local v8    # "op":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVQuery$QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 600
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    .end local v8    # "op":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    .restart local v3    # "hasEqual":Z
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v10    # "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    if-eqz v3, :cond_8

    .line 601
    const-string v13, "$and"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 602
    .local v1, "existsAnd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v1, :cond_7

    .line 603
    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 605
    :cond_7
    const-string v13, "$and"

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 608
    .end local v1    # "existsAnd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_8
    invoke-interface {v12, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 615
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;>;"
    .end local v3    # "hasEqual":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v10    # "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;"
    :cond_9
    return-object v12

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;

    move-result-object p0

    .line 398
    .end local p0    # "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    :goto_0
    return-object p0

    .line 397
    .restart local p0    # "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    :cond_0
    const-string v0, "%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;

    move-result-object p0

    .line 414
    .end local p0    # "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    :goto_0
    return-object p0

    .line 413
    .restart local p0    # "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    :cond_0
    const-string v0, "%s,-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method protected addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1174
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery$QueryOperation;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/AVQuery$QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Lcom/avos/avoscloud/AVQuery$QueryOperation;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public assembleParameters()Ljava/util/Map;
    .locals 5
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
    .line 619
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v3, "where"

    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->whereMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_0
    iget v2, p0, Lcom/avos/avoscloud/AVQuery;->limit:I

    if-lez v2, :cond_1

    .line 623
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v3, "limit"

    iget v4, p0, Lcom/avos/avoscloud/AVQuery;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :cond_1
    iget v2, p0, Lcom/avos/avoscloud/AVQuery;->skip:I

    if-lez v2, :cond_2

    .line 626
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v3, "skip"

    iget v4, p0, Lcom/avos/avoscloud/AVQuery;->skip:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 629
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v3, "order"

    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->include:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->include:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 632
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->include:Ljava/util/List;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v3, "include"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->selectedKeys:Ljava/util/Set;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->selectedKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 636
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->selectedKeys:Ljava/util/Set;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "keys":Ljava/lang/String;
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    const-string v3, "keys"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .end local v0    # "keys":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    return-object v2
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 422
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    return-void
.end method

.method public clearCachedResult()V
    .locals 2

    .prologue
    .line 436
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->generateQueryPath()V

    .line 437
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->delete(Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method public count()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 447
    .local v0, "value":[I
    new-instance v1, Lcom/avos/avoscloud/AVQuery$1;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$1;-><init>(Lcom/avos/avoscloud/AVQuery;[I)V

    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 462
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 465
    :cond_0
    aget v1, v0, v2

    return v1
.end method

.method protected count(Z)I
    .locals 4
    .param p1, "needsLock"    # Z

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 469
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 470
    .local v0, "value":[I
    new-instance v1, Lcom/avos/avoscloud/AVQuery$2;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$2;-><init>(Lcom/avos/avoscloud/AVQuery;[I)V

    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 476
    aget v1, v0, v2

    return v1
.end method

.method public countInBackground(Lcom/avos/avoscloud/CountCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/CountCallback;

    .prologue
    .line 486
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 487
    return-void
.end method

.method public deleteAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 932
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->find()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->deleteAll(Ljava/util/Collection;)V

    .line 933
    return-void
.end method

.method public deleteAllInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 942
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery$11;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVQuery$11;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/DeleteCallback;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVQuery;->findInBackground(Lcom/avos/avoscloud/FindCallback;)V

    .line 955
    return-void
.end method

.method public find()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 527
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 529
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$4;

    invoke-direct {v5, p0, v9}, Lcom/avos/avoscloud/AVQuery$4;-><init>(Lcom/avos/avoscloud/AVQuery;Ljava/util/List;)V

    iget-object v6, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v7, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 547
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 550
    :cond_0
    return-object v9
.end method

.method public findInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 679
    move-object v9, p1

    .line 681
    .local v9, "internalCallback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$5;

    invoke-direct {v5, p0, v9}, Lcom/avos/avoscloud/AVQuery$5;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/FindCallback;)V

    iget-object v6, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v7, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 707
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 4
    .param p1, "theObjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 717
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 718
    .local v0, "result":[Ljava/lang/Object;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$6;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$6;-><init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, v3, v1}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V

    .line 733
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 736
    :cond_0
    aget-object v1, v0, v2

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    return-object v1
.end method

.method public getCachePolicy()Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    return-object v0
.end method

.method getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method getExternalQueryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst()Lcom/avos/avoscloud/AVObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 747
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 748
    .local v0, "result":[Ljava/lang/Object;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$7;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$7;-><init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V

    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V

    .line 763
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 766
    :cond_0
    aget-object v1, v0, v2

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    return-object v1
.end method

.method public getFirstInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V

    .line 778
    return-void
.end method

.method public getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 3
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 827
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    move-object v0, p2

    .line 828
    .local v0, "internalCallback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVQuery$9;

    invoke-direct {v2, p0, v0}, Lcom/avos/avoscloud/AVQuery$9;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V

    .line 836
    return-void
.end method

.method getInclude()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->include:Ljava/util/List;

    return-object v0
.end method

.method getIsRunning()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->isRunning:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget v0, p0, Lcom/avos/avoscloud/AVQuery;->limit:I

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 316
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    return-wide v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    return-object v0
.end method

.method getParameters()Ljava/util/Map;
    .locals 1
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
    .line 143
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getPolicy()Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object v0
.end method

.method getQueryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    return-object v0
.end method

.method getSelectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->selectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 241
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget v0, p0, Lcom/avos/avoscloud/AVQuery;->skip:I

    return v0
.end method

.method getWhere()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVQuery$QueryOperation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    return-object v0
.end method

.method public hasCachedResult()Z
    .locals 2

    .prologue
    .line 895
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->generateQueryPath()V

    .line 896
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public include(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->include:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    return-object p0
.end method

.method public isTrace()Z
    .locals 1

    .prologue
    .line 330
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVQuery;->trace:Z

    return v0
.end method

.method public limit(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setLimit(I)Lcom/avos/avoscloud/AVQuery;

    .line 214
    return-object p0
.end method

.method public order(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;

    .line 277
    return-object p0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 987
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    .line 988
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    .line 999
    return-object p0
.end method

.method protected processAdditionalInfo(Ljava/lang/String;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<TT;>;"
    return-void
.end method

.method protected processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 645
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 663
    :cond_0
    return-object v6

    .line 647
    :cond_1
    new-instance v5, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v5}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 648
    .local v5, "resp":Lcom/avos/avoscloud/AVResponse;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "resp":Lcom/avos/avoscloud/AVResponse;
    check-cast v5, Lcom/avos/avoscloud/AVResponse;

    .line 650
    .restart local v5    # "resp":Lcom/avos/avoscloud/AVResponse;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 651
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, v5, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    .local v0, "arr$":[Ljava/util/Map;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 652
    .local v2, "item":Ljava/util/Map;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 654
    iget-object v7, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    if-eqz v7, :cond_3

    .line 655
    iget-object v7, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVObject;

    .line 659
    .local v4, "object":Lcom/avos/avoscloud/AVObject;
    :goto_1
    invoke-static {v2, v4}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 660
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v4    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    :cond_3
    iget-object v7, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v4

    .restart local v4    # "object":Lcom/avos/avoscloud/AVObject;
    goto :goto_1
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->selectedKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->selectedKeys:Ljava/util/Set;

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->selectedKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 922
    return-object p0
.end method

.method public setCachePolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "cachePolicy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 294
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method setClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    .line 116
    return-void
.end method

.method setExternalQueryPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 163
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    .line 164
    return-void
.end method

.method setInclude(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "include":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->include:Ljava/util/List;

    .line 124
    return-void
.end method

.method setIsRunning(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isRunning"    # Ljava/lang/Boolean;

    .prologue
    .line 139
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->isRunning:Ljava/lang/Boolean;

    .line 140
    return-void
.end method

.method public setLimit(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput p1, p0, Lcom/avos/avoscloud/AVQuery;->limit:I

    .line 204
    return-object p0
.end method

.method public setMaxCacheAge(J)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "maxCacheAge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-wide p1, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 326
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->order:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->parameters:Ljava/util/Map;

    .line 148
    return-void
.end method

.method public setPolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 308
    return-object p0
.end method

.method setQueryPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryPath"    # Ljava/lang/String;

    .prologue
    .line 155
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 156
    return-void
.end method

.method setSelectedKeys(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->selectedKeys:Ljava/util/Set;

    .line 132
    return-void
.end method

.method public setSkip(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput p1, p0, Lcom/avos/avoscloud/AVQuery;->skip:I

    .line 252
    return-object p0
.end method

.method public setTrace(Z)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "trace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVQuery;->trace:Z

    .line 341
    return-object p0
.end method

.method setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVQuery$QueryOperation;",
            ">;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1417
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/AVQuery$QueryOperation;>;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    .line 1418
    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setSkip(I)Lcom/avos/avoscloud/AVQuery;

    .line 224
    return-object p0
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1011
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    const-string v0, "$in"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v1, ".*%s.*"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v1

    return-object v1
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1050
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-string v0, "$all"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1059
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$exists"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1072
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p3, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<*>;"
    const-string v2, "className"

    iget-object v3, p3, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/avos/avoscloud/AVQuery;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1073
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "where"

    invoke-direct {p3}, Lcom/avos/avoscloud/AVQuery;->whereMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const-string v2, "query"

    invoke-direct {p0, v2, v0}, Lcom/avos/avoscloud/AVQuery;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1076
    .local v1, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "key"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const-string v2, "$dontSelect"

    invoke-virtual {p0, p1, v2, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1079
    return-object p0
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1091
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<*>;"
    const-string v1, "className"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1092
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "where"

    invoke-direct {p2}, Lcom/avos/avoscloud/AVQuery;->whereMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    const-string v1, "$notInQuery"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1095
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1107
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, ".*%s$"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1119
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    instance-of v0, p2, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_0

    .line 1120
    const-string v0, "__eq"

    check-cast p2, Lcom/avos/avoscloud/AVObject;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1124
    :goto_0
    return-object p0

    .line 1122
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string v0, "__eq"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1183
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$exists"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$gt"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1207
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$gte"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1219
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$lt"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1231
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$lte"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1243
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$regex"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "modifiers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1257
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->where:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1258
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 1259
    const-string v1, "$regex"

    invoke-direct {p0, v1, p2}, Lcom/avos/avoscloud/AVQuery;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    .line 1261
    :cond_0
    const-string v1, "$options"

    invoke-virtual {p0, p1, v1, p3}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1262
    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1277
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p3, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1278
    .local v0, "inner":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "className"

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    const-string v2, "where"

    invoke-direct {p3}, Lcom/avos/avoscloud/AVQuery;->whereMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    iget v2, p3, Lcom/avos/avoscloud/AVQuery;->skip:I

    if-lez v2, :cond_0

    const-string v2, "skip"

    iget v3, p3, Lcom/avos/avoscloud/AVQuery;->skip:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    :cond_0
    iget v2, p3, Lcom/avos/avoscloud/AVQuery;->limit:I

    if-lez v2, :cond_1

    const-string v2, "limit"

    iget v3, p3, Lcom/avos/avoscloud/AVQuery;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    :cond_1
    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "order"

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1285
    .local v1, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "query"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    const-string v2, "key"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const-string v2, "$select"

    invoke-virtual {p0, p1, v2, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v2

    return-object v2
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1299
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<*>;"
    const-string v1, "where"

    invoke-direct {p2}, Lcom/avos/avoscloud/AVQuery;->whereMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1300
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "className"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iget v1, p2, Lcom/avos/avoscloud/AVQuery;->skip:I

    if-lez v1, :cond_0

    const-string v1, "skip"

    iget v2, p2, Lcom/avos/avoscloud/AVQuery;->skip:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    :cond_0
    iget v1, p2, Lcom/avos/avoscloud/AVQuery;->limit:I

    if-lez v1, :cond_1

    const-string v1, "limit"

    iget v2, p2, Lcom/avos/avoscloud/AVQuery;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    :cond_1
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "order"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    :cond_2
    const-string v1, "$inQuery"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1305
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1317
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1329
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    const-string v0, "$nin"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1341
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$ne"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "$size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v0, "^%s.*"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "southwest"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "northeast"    # Lcom/avos/avoscloud/AVGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1366
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1367
    .local v0, "box":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    const-string v2, "$box"

    invoke-direct {p0, v2, v0}, Lcom/avos/avoscloud/AVQuery;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1370
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "$within"

    invoke-virtual {p0, p1, v2, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v2

    return-object v2
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1383
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v1, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1384
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "$maxDistanceInKilometers"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1386
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1394
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v1, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1395
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "$maxDistanceInMiles"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1397
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1410
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v1, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1411
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "maxDistanceInRadians"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1413
    return-object p0
.end method
