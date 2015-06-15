.class public Lcom/avos/avoscloud/AVHistoryMessageQuery;
.super Ljava/lang/Object;
.source "AVHistoryMessageQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;
    }
.end annotation


# instance fields
.field convid:Ljava/lang/String;

.field from:Ljava/lang/String;

.field limit:I

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVHistoryMessageQuery;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;Z)V
    .locals 6
    .param p1, "callback"    # Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;
    .param p2, "sync"    # Z

    .prologue
    .line 142
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 143
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    iget v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->limit:I

    if-lez v0, :cond_0

    .line 144
    const-string v0, "limit"

    iget v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->limit:I

    invoke-virtual {v2, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;I)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    const-string v0, "from"

    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 153
    const-string v0, "timestamp"

    iget-wide v3, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->timestamp:J

    invoke-virtual {v2, v0, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;J)V

    .line 156
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "rtm/messages/logs/"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;-><init>(Lcom/avos/avoscloud/AVHistoryMessageQuery;Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;)V

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 175
    return-void

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    const-string v0, "convid"

    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVHistoryMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 189
    .local v1, "historyMessage":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVHistoryMessage;>;"
    const-class v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {p1, v6}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 190
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONObject;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 192
    .local v4, "message":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    new-instance v3, Lcom/avos/avoscloud/AVHistoryMessage;

    invoke-direct {v3}, Lcom/avos/avoscloud/AVHistoryMessage;-><init>()V

    .line 193
    .local v3, "m":Lcom/avos/avoscloud/AVHistoryMessage;
    const-string v6, "conv-id"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/avos/avoscloud/AVHistoryMessage;->setConvid(Ljava/lang/String;)V

    .line 194
    const-string v6, "from"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/avos/avoscloud/AVHistoryMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 195
    const-string v6, "is-room"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "is-room"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v6

    :goto_1
    invoke-virtual {v3, v6}, Lcom/avos/avoscloud/AVHistoryMessage;->setRoom(Z)V

    .line 196
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/avos/avoscloud/AVHistoryMessage;->setMessage(Ljava/lang/String;)V

    .line 197
    const-string v6, "timestamp"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/avos/avoscloud/AVHistoryMessage;->setTimestamp(J)V

    .line 198
    const-string v6, "to"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/avos/avoscloud/AVHistoryMessage;->setToPeerIds(Ljava/util/List;)V

    .line 200
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v3    # "m":Lcom/avos/avoscloud/AVHistoryMessage;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "m":Lcom/avos/avoscloud/AVHistoryMessage;
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 206
    .end local v3    # "m":Lcom/avos/avoscloud/AVHistoryMessage;
    .end local v4    # "message":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public find()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVHistoryMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVHistoryMessage;>;"
    new-instance v1, Lcom/avos/avoscloud/AVHistoryMessageQuery$1;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery$1;-><init>(Lcom/avos/avoscloud/AVHistoryMessageQuery;Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;Z)V

    .line 126
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 129
    :cond_0
    return-object v0
.end method

.method public findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;Z)V

    .line 139
    return-void
.end method

.method protected getConvid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    return-object v0
.end method

.method protected getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    return-object v0
.end method

.method protected getLimit()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->limit:I

    return v0
.end method

.method protected getTimestamp()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->timestamp:J

    return-wide v0
.end method

.method protected setConvid(Ljava/lang/String;)V
    .locals 0
    .param p1, "convid"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t alloc \'from\' and conversation related value at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    .line 65
    return-void
.end method

.method protected setGroupId(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t alloc from and conversation value at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->limit:I

    .line 38
    return-void
.end method

.method public setPeerIds(Ljava/util/List;)V
    .locals 3
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
    .line 88
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t alloc from and conversation value at the same time"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 93
    const-string v1, ":"

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "joinedPeerIds":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    .line 96
    .end local v0    # "joinedPeerIds":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->timestamp:J

    .line 79
    return-void
.end method
