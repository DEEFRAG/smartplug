.class public Lcom/avos/avoscloud/AVPush;
.super Ljava/lang/Object;
.source "AVPush.java"


# static fields
.field private static final DEVICE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final deviceTypeTag:Ljava/lang/String; = "deviceType"


# instance fields
.field private final channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cql:Ljava/lang/String;

.field private expirationTime:J

.field private expirationTimeInterval:J

.field private volatile notification:Lcom/avos/avoscloud/AVObject;

.field private final pushData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pushDate:Ljava/util/Date;

.field private pushQuery:Lcom/avos/avoscloud/AVQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;"
        }
    .end annotation
.end field

.field private final pushTarget:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    .line 33
    sget-object v0, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    const-string v1, "ios"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v0, Lcom/avos/avoscloud/AVPush;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    .line 60
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getQuery()Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVPush;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVPush;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVPush;
    .param p1, "x1"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;

    return-object p1
.end method

.method private expirationDateTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 353
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private postDataMap()Ljava/util/Map;
    .locals 10
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 185
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    if-eqz v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    const-string v5, "deviceType"

    sget-object v6, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    invoke-virtual {v4, v5, v6}, Lcom/avos/avoscloud/AVQuery;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;

    .line 193
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    move-result-object v3

    .line 194
    .local v3, "pushParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 195
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You can\'t use AVQuery and Cloud query at the same time."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    .end local v3    # "pushParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 191
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    const-string v5, "deviceType"

    iget-object v6, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_0

    .line 197
    .restart local v3    # "pushParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, "k":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "k":Ljava/lang/String;
    .end local v3    # "pushParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 202
    const-string v4, "cql"

    iget-object v5, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_4
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 205
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPush;->pushChannelsData()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    :cond_5
    iget-wide v4, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_6

    .line 209
    const-string v4, "expiration_time"

    invoke-direct {p0}, Lcom/avos/avoscloud/AVPush;->expirationDateTime()Ljava/util/Date;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_6
    iget-wide v4, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_7

    .line 212
    const-string v4, "push_time"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v4, "expiration_interval"

    new-instance v5, Ljava/lang/Long;

    iget-wide v6, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_7
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    if-eqz v4, :cond_8

    .line 216
    const-string v4, "push_time"

    iget-object v5, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_8
    iget-object v4, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 220
    return-object v2
.end method

.method private pushChannelsData()Ljava/util/Map;
    .locals 2
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
    .line 181
    const-string v0, "channels"

    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->createStringObjectMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static sendDataInBackground(Lorg/json/JSONObject;Lcom/avos/avoscloud/AVQuery;)V
    .locals 1
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<+Lcom/avos/avoscloud/AVInstallation;>;"
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 134
    .local v0, "push":Lcom/avos/avoscloud/AVPush;
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setData(Lorg/json/JSONObject;)V

    .line 135
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    .line 136
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPush;->sendInBackground()V

    .line 137
    return-void
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/SendCallback;)V
    .locals 2
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/avos/avoscloud/SendCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;",
            "Lcom/avos/avoscloud/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<+Lcom/avos/avoscloud/AVInstallation;>;"
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 157
    .local v0, "push":Lcom/avos/avoscloud/AVPush;
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setData(Lorg/json/JSONObject;)V

    .line 158
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    .line 159
    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 160
    return-void
.end method

.method private sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V
    .locals 7
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/SendCallback;

    .prologue
    .line 230
    move-object v1, p2

    .line 231
    .local v1, "internalCallback":Lcom/avos/avoscloud/SendCallback;
    const-string v4, "push"

    .line 233
    .local v4, "path":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPush;->postDataMap()Ljava/util/Map;

    move-result-object v3

    .line 234
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v5

    new-instance v6, Lcom/avos/avoscloud/AVPush$1;

    invoke-direct {v6, p0, v1}, Lcom/avos/avoscloud/AVPush$1;-><init>(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/SendCallback;)V

    invoke-virtual {v5, v4, v2, p1, v6}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Lcom/avos/avoscloud/AVException;
    if-eqz p2, :cond_0

    .line 254
    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SendCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 256
    :cond_0
    const-string v5, "AVPush sent exception"

    invoke-static {v5, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<+Lcom/avos/avoscloud/AVInstallation;>;"
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 276
    .local v0, "push":Lcom/avos/avoscloud/AVPush;
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setMessage(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    .line 278
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 279
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/SendCallback;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/SendCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;",
            "Lcom/avos/avoscloud/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<+Lcom/avos/avoscloud/AVInstallation;>;"
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 298
    .local v0, "push":Lcom/avos/avoscloud/AVPush;
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setMessage(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    .line 300
    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 301
    return-void
.end method


# virtual methods
.method public clearExpiration()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    .line 106
    iput-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    .line 107
    return-void
.end method

.method public getChannelSet()Ljava/util/Set;
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
    .line 64
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    return-wide v0
.end method

.method public getExpirationTimeInterval()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    return-wide v0
.end method

.method public getNotification()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getPushData()Ljava/util/Map;
    .locals 1
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
    .line 98
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    return-object v0
.end method

.method public getPushDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPushQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    return-object v0
.end method

.method public getPushTarget()Ljava/util/Set;
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
    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    return-object v0
.end method

.method public send()V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 116
    return-void
.end method

.method public sendInBackground()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 168
    return-void
.end method

.method public sendInBackground(Lcom/avos/avoscloud/SendCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SendCallback;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 178
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 310
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 320
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 321
    return-void
.end method

.method public setCloudQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "cql"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 339
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 341
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 343
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 344
    .local v4, "value":Ljava/lang/Object;
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v5, Lcom/avos/avoscloud/AVRuntimeException;

    invoke-direct {v5, v0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 346
    .end local v0    # "exception":Ljava/lang/Exception;
    .restart local v1    # "iter":Ljava/util/Iterator;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    const-string v6, "data"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 350
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 373
    iput-wide p1, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    .line 374
    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 0
    .param p1, "timeInterval"    # J

    .prologue
    .line 384
    iput-wide p1, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    .line 385
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 393
    const-string v1, "alert"

    invoke-static {v1, p1}, Lcom/avos/avoscloud/AVUtils;->createStringObjectMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 394
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method

.method public setPushDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    .line 363
    return-void
.end method

.method public setPushToAndroid(Z)V
    .locals 2
    .param p1, "pushToAndroid"    # Z

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPushToIOS(Z)V
    .locals 2
    .param p1, "pushToIOS"    # Z

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "ios"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "ios"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPushToWindowsPhone(Z)V
    .locals 2
    .param p1, "pushToWP"    # Z

    .prologue
    .line 414
    if-eqz p1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "wp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "wp"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setQuery(Lcom/avos/avoscloud/AVQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<+Lcom/avos/avoscloud/AVInstallation;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    .line 431
    return-void
.end method
