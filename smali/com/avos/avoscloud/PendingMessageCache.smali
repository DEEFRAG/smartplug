.class Lcom/avos/avoscloud/PendingMessageCache;
.super Ljava/lang/Object;
.source "PendingMessageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/PendingMessageCache$Message;
    }
.end annotation


# instance fields
.field messages:Lcom/avos/avospush/session/MessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avospush/session/MessageQueue",
            "<",
            "Lcom/avos/avoscloud/PendingMessageCache$Message;",
            ">;"
        }
    .end annotation
.end field

.field msgMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/PendingMessageCache$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    invoke-direct {v0, p1}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    .line 23
    invoke-direct {p0}, Lcom/avos/avoscloud/PendingMessageCache;->setupMapping()V

    .line 24
    return-void
.end method

.method private setupMapping()V
    .locals 4

    .prologue
    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    .line 29
    iget-object v2, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v2}, Lcom/avos/avospush/session/MessageQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 30
    .local v1, "msg":Lcom/avos/avoscloud/PendingMessageCache$Message;
    iget-object v2, v1, Lcom/avos/avoscloud/PendingMessageCache$Message;->msgId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    iget-object v3, v1, Lcom/avos/avoscloud/PendingMessageCache$Message;->msgId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    .end local v1    # "msg":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->clear()V

    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public offer(Lcom/avos/avoscloud/PendingMessageCache$Message;)V
    .locals 2
    .param p1, "msg"    # Lcom/avos/avoscloud/PendingMessageCache$Message;

    .prologue
    .line 37
    iget-object v0, p1, Lcom/avos/avoscloud/PendingMessageCache$Message;->msgId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    iget-object v1, p1, Lcom/avos/avoscloud/PendingMessageCache$Message;->msgId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/MessageQueue;->offer(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public poll()Lcom/avos/avoscloud/PendingMessageCache$Message;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    return-object v0
.end method

.method public poll(Ljava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 46
    .local v0, "returnValue":Lcom/avos/avoscloud/PendingMessageCache$Message;
    iget-object v1, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v1, v0}, Lcom/avos/avospush/session/MessageQueue;->remove(Ljava/lang/Object;)Z

    .line 49
    .end local v0    # "returnValue":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/PendingMessageCache;->poll()Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v0

    goto :goto_0
.end method
