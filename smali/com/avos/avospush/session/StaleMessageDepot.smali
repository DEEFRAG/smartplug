.class public Lcom/avos/avospush/session/StaleMessageDepot;
.super Ljava/lang/Object;
.source "StaleMessageDepot.java"


# static fields
.field private static final MAXLENGTH:I = 0x32


# instance fields
.field messageDepot:Lcom/avos/avospush/session/MessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avospush/session/MessageQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "depotName"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    invoke-direct {v0, p1}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    .line 11
    return-void
.end method


# virtual methods
.method public declared-synchronized putStableMessage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 19
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 22
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v2, p1}, Lcom/avos/avospush/session/MessageQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 23
    .local v0, "isContains":Z
    if-nez v0, :cond_2

    .line 24
    iget-object v2, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v2, p1}, Lcom/avos/avospush/session/MessageQueue;->offer(Ljava/lang/Object;)Z

    .line 25
    :goto_1
    iget-object v2, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v2}, Lcom/avos/avospush/session/MessageQueue;->size()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_2

    .line 26
    iget-object v2, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v2}, Lcom/avos/avospush/session/MessageQueue;->poll()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 19
    .end local v0    # "isContains":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 29
    .restart local v0    # "isContains":Z
    :cond_2
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method
