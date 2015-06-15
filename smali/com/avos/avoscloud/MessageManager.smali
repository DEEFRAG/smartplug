.class Lcom/avos/avoscloud/MessageManager;
.super Ljava/lang/Object;
.source "MessageManager.java"


# instance fields
.field private lastAckTime:J

.field private messageReceived:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avos/avoscloud/MessageManager;->lastAckTime:J

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avoscloud/MessageManager;->messageReceived:I

    return-void
.end method


# virtual methods
.method public ackSent()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avoscloud/MessageManager;->messageReceived:I

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/MessageManager;->lastAckTime:J

    .line 29
    return-void
.end method

.method public messageReceived()V
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/avos/avoscloud/MessageManager;->messageReceived:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/MessageManager;->messageReceived:I

    .line 14
    return-void
.end method

.method public toSendAck()Z
    .locals 4

    .prologue
    .line 17
    iget v0, p0, Lcom/avos/avoscloud/MessageManager;->messageReceived:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/avos/avoscloud/MessageManager;->lastAckTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/MessageManager;->messageReceived:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toSendAck(I)Z
    .locals 1
    .param p1, "remoteCount"    # I

    .prologue
    .line 23
    iget v0, p0, Lcom/avos/avoscloud/MessageManager;->messageReceived:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
