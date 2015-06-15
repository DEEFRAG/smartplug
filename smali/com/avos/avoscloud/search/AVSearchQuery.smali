.class public Lcom/avos/avoscloud/search/AVSearchQuery;
.super Ljava/lang/Object;
.source "AVSearchQuery.java"


# static fields
.field public static final AVOSCLOUD_DATA_EXTRA_SEARCH_KEY:Ljava/lang/String; = "com.avos.avoscloud.search.key"

.field private static final URL:Ljava/lang/String; = "search/select"


# instance fields
.field private className:Ljava/lang/String;

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hightlights:Ljava/lang/String;

.field private hits:I

.field private limit:I

.field private order:Ljava/lang/String;

.field private queryString:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private sortBuilder:Lcom/avos/avoscloud/search/AVSearchSortBuilder;

.field private titleAttribute:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->limit:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->limit:I

    .line 61
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->queryString:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/search/AVSearchQuery;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/search/AVSearchQuery;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/search/AVSearchQuery;->processContent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getParameters(Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 264
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sid:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const-string v1, "sid"

    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->hightlights:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 269
    const-string v1, "highlights"

    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->hightlights:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->fields:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 274
    const-string v1, "fields"

    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->fields:Ljava/util/List;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->limit:I

    if-lez v1, :cond_2

    .line 277
    const-string v1, "limit"

    iget v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->limit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 280
    const-string v1, "order"

    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    const-string v1, "clazz"

    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sortBuilder:Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    if-eqz v1, :cond_5

    .line 286
    const-string v1, "sort"

    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sortBuilder:Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    invoke-virtual {v2}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->getSortFields()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_5
    return-object v0

    .line 271
    :cond_6
    const-string v1, "highlights"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processContent(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 205
    :cond_0
    return-object v6

    .line 189
    :cond_1
    new-instance v5, Lcom/avos/avoscloud/search/AVSearchResponse;

    invoke-direct {v5}, Lcom/avos/avoscloud/search/AVSearchResponse;-><init>()V

    .line 190
    .local v5, "resp":Lcom/avos/avoscloud/search/AVSearchResponse;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "resp":Lcom/avos/avoscloud/search/AVSearchResponse;
    check-cast v5, Lcom/avos/avoscloud/search/AVSearchResponse;

    .line 191
    .restart local v5    # "resp":Lcom/avos/avoscloud/search/AVSearchResponse;
    iget-object v7, v5, Lcom/avos/avoscloud/search/AVSearchResponse;->sid:Ljava/lang/String;

    iput-object v7, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sid:Ljava/lang/String;

    .line 192
    iget v7, v5, Lcom/avos/avoscloud/search/AVSearchResponse;->hits:I

    iput v7, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->hits:I

    .line 193
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 194
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    iget-object v0, v5, Lcom/avos/avoscloud/search/AVSearchResponse;->results:[Ljava/util/Map;

    .local v0, "arr$":[Ljava/util/Map;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 195
    .local v2, "item":Ljava/util/Map;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 197
    new-instance v4, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v4}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 198
    .local v4, "object":Lcom/avos/avoscloud/AVObject;
    invoke-static {v2, v4}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 199
    const-string v7, "highlight_avoscloud_"

    const-string v8, "_highlight"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string v7, "app_url_avoscloud_"

    const-string v8, "_app_url"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v7, "deep_link_avoscloud_"

    const-string v8, "_deeplink"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v4    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public find()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 140
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->queryString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/search/AVSearchQuery;->getParameters(Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/avos/avoscloud/search/AVSearchQuery$1;

    invoke-direct {v3, p0, v0}, Lcom/avos/avoscloud/search/AVSearchQuery$1;-><init>(Lcom/avos/avoscloud/search/AVSearchQuery;Ljava/util/List;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/avos/avoscloud/search/AVSearchQuery;->getSearchResult(Lcom/loopj/android/http/RequestParams;ZLcom/avos/avoscloud/FindCallback;)V

    .line 151
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 154
    :cond_0
    return-object v0
.end method

.method public findInBackgroud(Lcom/avos/avoscloud/FindCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVObject;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->queryString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/search/AVSearchQuery;->getParameters(Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/avos/avoscloud/search/AVSearchQuery;->getSearchResult(Lcom/loopj/android/http/RequestParams;ZLcom/avos/avoscloud/FindCallback;)V

    .line 164
    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
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
    .line 259
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getHightLights()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->hightlights:Ljava/lang/String;

    return-object v0
.end method

.method public getHits()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->hits:I

    return v0
.end method

.method public getLastId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->limit:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method protected getSearchResult(Lcom/loopj/android/http/RequestParams;ZLcom/avos/avoscloud/FindCallback;)V
    .locals 6
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p3, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVObject;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "search/select"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/search/AVSearchQuery$2;

    invoke-direct {v5, p0, p3}, Lcom/avos/avoscloud/search/AVSearchQuery$2;-><init>(Lcom/avos/avoscloud/search/AVSearchQuery;Lcom/avos/avoscloud/FindCallback;)V

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 183
    return-void
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSortBuilder()Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sortBuilder:Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    return-object v0
.end method

.method public getTitleAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->titleAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public order(Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchQuery;
    .locals 0
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchQuery;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    .line 97
    :goto_0
    return-object p0

    .line 95
    :cond_0
    const-string v0, "%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchQuery;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "-%s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    .line 112
    :goto_0
    return-object p0

    .line 110
    :cond_0
    const-string v0, "%s,-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public search()V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/search/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    const-string v1, "com.avos.avoscloud.search.key"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->className:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setFields(Ljava/util/List;)V
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
    .line 255
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->fields:Ljava/util/List;

    .line 256
    return-void
.end method

.method public setHightLights(Ljava/lang/String;)V
    .locals 0
    .param p1, "hightlights"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->hightlights:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setLastId(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastId"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sid:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->limit:I

    .line 215
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->queryString:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->queryString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->queryString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sid:Ljava/lang/String;

    .line 361
    :cond_2
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->queryString:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sid:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setSortBuilder(Lcom/avos/avoscloud/search/AVSearchSortBuilder;)V
    .locals 0
    .param p1, "sortBuilder"    # Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->sortBuilder:Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    .line 54
    return-void
.end method

.method public setTitleAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleAttribute"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery;->titleAttribute:Ljava/lang/String;

    .line 338
    return-void
.end method
