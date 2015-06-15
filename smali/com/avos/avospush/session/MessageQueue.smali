.class public Lcom/avos/avospush/session/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final MESSAGE_ZONE:Ljava/lang/String; = "com.avoscloud.chat.message"

.field private static final QUEUE_KEY:Ljava/lang/String; = "com.avoscloud.chat.message.queue"


# instance fields
.field messages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final queueKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 20
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.avoscloud.chat.message.queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->queueKey:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->restoreMessageQueue()Ljava/util/LinkedList;

    move-result-object v0

    .line 24
    .local v0, "storedMessages":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 27
    :cond_0
    return-void
.end method

.method private declared-synchronized restoreMessageQueue()Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    monitor-enter p0

    const/4 v1, 0x0

    .line 150
    .local v1, "storedMessages":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    const-string v3, "com.avoscloud.chat.message"

    iget-object v4, p0, Lcom/avos/avospush/session/MessageQueue;->queueKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "queueString":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    const-class v2, Ljava/util/LinkedList;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "storedMessages":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    check-cast v1, Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .restart local v1    # "storedMessages":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :cond_0
    monitor-exit p0

    return-object v1

    .line 149
    .end local v0    # "queueString":Ljava/lang/String;
    .end local v1    # "storedMessages":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized storeMessageQueue()V
    .locals 5

    .prologue
    .line 139
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "queueString":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    const-string v2, "com.avoscloud.chat.message"

    iget-object v3, p0, Lcom/avos/avospush/session/MessageQueue;->queueKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 139
    .end local v0    # "queueString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 102
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 32
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 33
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 39
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 40
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "result":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 130
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 109
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "result":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 123
    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "result":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 116
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 66
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 72
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 73
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 79
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 80
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/avos/avospush/session/MessageQueue;, "Lcom/avos/avospush/session/MessageQueue<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
