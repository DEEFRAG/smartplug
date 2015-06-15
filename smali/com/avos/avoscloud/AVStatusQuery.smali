.class public Lcom/avos/avoscloud/AVStatusQuery;
.super Lcom/avos/avoscloud/AVQuery;
.source "AVStatusQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVQuery",
        "<",
        "Lcom/avos/avoscloud/AVStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final END:Ljava/lang/String; = "end"


# instance fields
.field private count:Z

.field private inboxType:Ljava/lang/String;

.field private maxId:J

.field private owner:Lcom/avos/avoscloud/AVUser;

.field private selfStatusQuery:Z

.field private sinceId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "statuses"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    .line 22
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatusQuery;->getInclude()Ljava/util/List;

    move-result-object v0

    const-string v1, "source"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method private processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V
    .locals 9
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "status"    # Lcom/avos/avoscloud/AVStatus;

    .prologue
    .line 116
    move-object v3, p1

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 117
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v6, "objectId"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getObjectId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/avos/avoscloud/AVStatus;->setObjectId(Ljava/lang/String;)V

    .line 118
    const-string v6, "messageId"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getMessageId()J

    move-result-wide v7

    invoke-static {v3, v6, v7, v8}, Lcom/avos/avoscloud/AVUtils;->getJSONInteger(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcom/avos/avoscloud/AVStatus;->setMessageId(J)V

    .line 119
    const-string v6, "inboxType"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getInboxType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/avos/avoscloud/AVStatus;->setInboxType(Ljava/lang/String;)V

    .line 121
    const-string v7, "createdAt"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {v3, v7, v6}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/avos/avoscloud/AVStatus;->setCreatedAt(Ljava/lang/String;)V

    .line 124
    const-string v6, "image"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/avos/avoscloud/AVStatus;->setImageUrl(Ljava/lang/String;)V

    .line 125
    const-string v6, "message"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/avos/avoscloud/AVStatus;->setMessage(Ljava/lang/String;)V

    .line 128
    const-string v6, "source"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "sourceString":Ljava/lang/String;
    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 131
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/avos/avoscloud/AVStatus;->setSource(Lcom/avos/avoscloud/AVObject;)V

    .line 134
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 136
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    .local v1, "entry":Ljava/util/Map$Entry;
    sget-object v6, Lcom/avos/avoscloud/AVStatus;->ignoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lcom/avos/avoscloud/AVStatus;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 121
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "sourceString":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 141
    .restart local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sourceString":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public assembleParameters()Ljava/util/Map;
    .locals 8
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
    const-wide/16 v6, 0x0

    .line 71
    iget-boolean v3, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 72
    const-string v3, "inboxType"

    iget-object v4, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/avos/avoscloud/AVStatusQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 75
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatusQuery;->getParameters()Ljava/util/Map;

    move-result-object v2

    .line 76
    .local v2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "ownerId":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 79
    .local v1, "ownerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "owner"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v0    # "ownerId":Ljava/lang/String;
    .end local v1    # "ownerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-wide v3, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_2

    .line 82
    const-string v3, "sinceId"

    iget-wide v4, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    if-nez v3, :cond_3

    .line 85
    const-string v3, "inboxType"

    iget-object v4, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_3
    iget-wide v3, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_4

    .line 88
    const-string v3, "maxId"

    iget-wide v4, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_4
    iget-boolean v3, p0, Lcom/avos/avoscloud/AVStatusQuery;->count:Z

    if-eqz v3, :cond_5

    .line 91
    const-string v3, "count"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_5
    return-object v2
.end method

.method protected getInboxType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    return-wide v0
.end method

.method public getOwner()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    return-wide v0
.end method

.method public isCount()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->count:Z

    return v0
.end method

.method protected processAdditionalInfo(Ljava/lang/String;Lcom/avos/avoscloud/FindCallback;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVStatus;>;"
    const-class v3, Lcom/avos/avoscloud/InboxStatusFindCallback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, p2

    .line 147
    check-cast v1, Lcom/avos/avoscloud/InboxStatusFindCallback;

    .line 148
    .local v1, "statusCallback":Lcom/avos/avoscloud/InboxStatusFindCallback;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 149
    .local v0, "results":Lcom/alibaba/fastjson/JSONObject;
    const/4 v2, 0x0

    .line 150
    .local v2, "v":Z
    const-string v3, "end"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const-string v3, "end"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 153
    :cond_0
    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/InboxStatusFindCallback;->setEnd(Z)V

    .line 155
    .end local v0    # "results":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "statusCallback":Lcom/avos/avoscloud/InboxStatusFindCallback;
    .end local v2    # "v":Z
    :cond_1
    return-void
.end method

.method protected processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 111
    :cond_0
    return-object v3

    .line 103
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 104
    .local v4, "results":Lcom/alibaba/fastjson/JSONObject;
    const-string v6, "results"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 105
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 106
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVStatus;>;"
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 107
    .local v2, "item":Ljava/lang/Object;
    new-instance v5, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v5}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 108
    .local v5, "status":Lcom/avos/avoscloud/AVStatus;
    invoke-direct {p0, v2, v5}, Lcom/avos/avoscloud/AVStatusQuery;->processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V

    .line 109
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCount(Z)V
    .locals 0
    .param p1, "count"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->count:Z

    .line 55
    return-void
.end method

.method public setInboxType(Ljava/lang/String;)V
    .locals 0
    .param p1, "inboxType"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMaxId(J)V
    .locals 0
    .param p1, "maxId"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    .line 47
    return-void
.end method

.method public setOwner(Lcom/avos/avoscloud/AVUser;)V
    .locals 0
    .param p1, "owner"    # Lcom/avos/avoscloud/AVUser;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    .line 63
    return-void
.end method

.method protected setSelfQuery(Z)V
    .locals 0
    .param p1, "isSelf"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    .line 67
    return-void
.end method

.method public setSinceId(J)V
    .locals 0
    .param p1, "sinceId"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    .line 27
    return-void
.end method
