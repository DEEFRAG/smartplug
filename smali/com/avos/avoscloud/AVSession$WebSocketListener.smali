.class Lcom/avos/avoscloud/AVSession$WebSocketListener;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avospush/push/AVWebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketListener"
.end annotation


# static fields
.field private static final CMD_STATUS_OFF:Ljava/lang/String; = "off"

.field private static final CMD_STATUS_ON:Ljava/lang/String; = "on"

.field private static final FROM_PEER_ID:Ljava/lang/String; = "fromPeerId"

.field private static final MSG:Ljava/lang/String; = "msg"

.field private static final ONLINE_SESSION_PEER_IDS:Ljava/lang/String; = "onlineSessionPeerIds"

.field private static final OP_GROUP_INVITED:Ljava/lang/String; = "invited"

.field private static final OP_GROUP_JOINED:Ljava/lang/String; = "joined"

.field private static final OP_GROUP_KICKED:Ljava/lang/String; = "kicked"

.field private static final OP_GROUP_MEMBER_JOIN:Ljava/lang/String; = "members-joined"

.field private static final OP_GROUP_MEMBER_LEFT:Ljava/lang/String; = "members-left"

.field private static final OP_GROUP_QUIT:Ljava/lang/String; = "left"

.field private static final OP_GROUP_REJECT:Ljava/lang/String; = "reject"

.field private static final SESSION_BY_PEER_ID:Ljava/lang/String; = "byPeerIds "

.field private static final SESSION_PEER_IDS:Ljava/lang/String; = "sessionPeerIds"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/AVSession;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/AVSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVSession$1;

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVSession$WebSocketListener;-><init>(Lcom/avos/avoscloud/AVSession;)V

    return-void
.end method


# virtual methods
.method public onAckCommand(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .line 581
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 582
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/util/Map;)V

    .line 584
    :cond_0
    const-string v7, "id"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 585
    .local v3, "messageId":Ljava/lang/String;
    const-string v7, "t"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 586
    .local v5, "timestamp":J
    iget-object v7, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;
    invoke-static {v7}, Lcom/avos/avoscloud/AVSession;->access$1100(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/PendingMessageCache;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v2

    .line 587
    .local v2, "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    iget-object v7, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v7}, Lcom/avos/avoscloud/AVSession;->access$1400(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 588
    iget-object v7, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 589
    iget-object v7, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v8, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    .line 590
    .local v1, "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    new-instance v4, Lcom/avos/avoscloud/AVMessage;

    iget-object v7, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    invoke-direct {v4, v7, v12}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Z)V

    .line 591
    .local v4, "msg":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual {v4, v5, v6}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 592
    iget-object v7, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1, v7, v1, v4}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    .line 602
    .end local v1    # "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    :goto_0
    return-void

    .line 595
    :cond_1
    :try_start_0
    new-instance v4, Lcom/avos/avoscloud/AVMessage;

    iget-object v7, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    iget-object v8, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    const/4 v9, 0x0

    invoke-direct {v4, v7, v8, v9}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 596
    .restart local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual {v4, v5, v6}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 597
    iget-object v7, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v7}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v7

    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v7, v8, v4}, Lcom/avos/avoscloud/SessionListener;->onMessageSent(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v7}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v7

    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v7, v8, v0}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAckReqCommand(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/util/Map;)V

    .line 572
    :cond_0
    const-string v1, "c"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 573
    .local v0, "c":I
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->messageManager:Lcom/avos/avoscloud/MessageManager;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/MessageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/MessageManager;->toSendAck(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    const/4 v2, 0x0

    # invokes: Lcom/avos/avoscloud/AVSession;->genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;
    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVSession;->access$400(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 575
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->messageManager:Lcom/avos/avoscloud/MessageManager;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/MessageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/MessageManager;->ackSent()V

    .line 577
    :cond_1
    return-void
.end method

.method public onDirectCommand(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "msg"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 498
    .local v5, "msg":Ljava/lang/String;
    const-string v8, "fromPeerId"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    .local v1, "fromPeerId":Ljava/lang/String;
    const-string v8, "roomId"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 500
    .local v6, "roomId":Ljava/lang/String;
    const-string v8, "timestamp"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 501
    .local v7, "timestamp":Ljava/lang/Long;
    const-string v8, "id"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 503
    .local v4, "messageId":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->messageManager:Lcom/avos/avoscloud/MessageManager;
    invoke-static {v8}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/MessageManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/avos/avoscloud/MessageManager;->messageReceived()V

    .line 504
    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->messageManager:Lcom/avos/avoscloud/MessageManager;
    invoke-static {v8}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/MessageManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/avos/avoscloud/MessageManager;->toSendAck()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 505
    iget-object v9, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    const-string v8, "id"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    # invokes: Lcom/avos/avoscloud/AVSession;->genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;
    invoke-static {v9, v8}, Lcom/avos/avoscloud/AVSession;->access$400(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 506
    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->messageManager:Lcom/avos/avoscloud/MessageManager;
    invoke-static {v8}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/MessageManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/avos/avoscloud/MessageManager;->ackSent()V

    .line 508
    :cond_0
    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->depot:Lcom/avos/avospush/session/StaleMessageDepot;
    invoke-static {v8}, Lcom/avos/avoscloud/AVSession;->access$1300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avospush/session/StaleMessageDepot;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/avos/avospush/session/StaleMessageDepot;->putStableMessage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 509
    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 510
    new-instance v3, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v3, v5}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;)V

    .line 511
    .local v3, "message":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual {v3, v1}, Lcom/avos/avoscloud/AVMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 513
    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v8}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v8

    iget-object v9, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v8, v9, v3}, Lcom/avos/avoscloud/SessionListener;->onMessage(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    .line 526
    .end local v3    # "message":Lcom/avos/avoscloud/AVMessage;
    :cond_1
    :goto_0
    return-void

    .line 516
    :cond_2
    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v8, v6}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    .line 517
    .local v2, "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    new-instance v3, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v3, v5}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;)V

    .line 518
    .restart local v3    # "message":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 519
    invoke-virtual {v3, v1}, Lcom/avos/avoscloud/AVMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 520
    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8, v2, v3}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    .end local v2    # "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    .end local v3    # "message":Lcom/avos/avoscloud/AVMessage;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v8}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v8

    iget-object v9, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v8, v9, v0}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onGroupCommand(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/util/Map;)V

    .line 625
    :cond_0
    const-string v3, "op"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 626
    .local v2, "op":Ljava/lang/String;
    const-string v3, "roomId"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 628
    .local v1, "groupId":Ljava/lang/String;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v1}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    .line 630
    .local v0, "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    const-string v3, "joined"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 631
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 632
    :cond_2
    const-string v3, "invited"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 633
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v4

    const-string v3, "byPeerIds "

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v0, v3}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_3
    const-string v3, "kicked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 635
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v4

    const-string v3, "byPeerIds "

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v0, v3}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_4
    const-string v3, "reject"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 637
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v0, v2, v4}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 638
    :cond_5
    const-string v3, "left"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 639
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V

    goto :goto_0

    .line 640
    :cond_6
    const-string v3, "members-joined"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 641
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v4

    const-string v3, "roomPeerIds"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v4, v0, v3}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 642
    :cond_7
    const-string v3, "members-left"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v4

    const-string v3, "roomPeerIds"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v4, v0, v3}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public onListenerAdded(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 606
    if-eqz p1, :cond_1

    .line 607
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    # getter for: Lcom/avos/avoscloud/AVSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web socket opened, send session open."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession$WebSocketListener;->onWebSocketOpen()V

    .line 612
    :cond_1
    return-void
.end method

.method public onListenerRemoved()V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public onPresenceCommand(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "status"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    .local v2, "status":Ljava/lang/String;
    const-string v3, "sessionPeerIds"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 477
    .local v1, "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$600(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 480
    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v3, v4, v1}, Lcom/avos/avoscloud/SessionListener;->onStatusOnline(Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v3, v4, v0}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$600(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 488
    :try_start_1
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v3, v4, v1}, Lcom/avos/avoscloud/SessionListener;->onStatusOffline(Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 489
    :catch_1
    move-exception v0

    .line 490
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v3, v4, v0}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSessionCommand(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "op"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 531
    .local v2, "op":Ljava/lang/String;
    const-string v4, "opened"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 532
    const-string v4, "onlineSessionPeerIds"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 533
    .local v1, "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$600(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 536
    :try_start_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$200(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 537
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v4, v5}, Lcom/avos/avoscloud/SessionListener;->onSessionOpen(Lcom/avos/avoscloud/Session;)V

    .line 545
    :goto_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v4, v5, v1}, Lcom/avos/avoscloud/SessionListener;->onStatusOnline(Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    .line 565
    .end local v1    # "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 539
    .restart local v1    # "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    # getter for: Lcom/avos/avoscloud/AVSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$1000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "session resumed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_2
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v4, v5}, Lcom/avos/avoscloud/SessionListener;->onSessionResumed(Lcom/avos/avoscloud/Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v4, v5, v0}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 549
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v4, "added"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 550
    const-string v4, "onlineSessionPeerIds"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 551
    .restart local v1    # "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$600(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 554
    :try_start_1
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v4, v5, v1}, Lcom/avos/avoscloud/SessionListener;->onStatusOnline(Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 555
    :catch_1
    move-exception v0

    .line 556
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v4, v5, v0}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v4, "query-result"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 560
    const-string v4, "onlineSessionPeerIds"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 562
    .local v3, "sessionPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$700(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.avoscloud.session.action"

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x4e29

    invoke-static {v4, v5, v6, v7}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    goto :goto_1
.end method

.method public onWebSocketClose()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 451
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$600(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 452
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$200(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 454
    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v3, v4}, Lcom/avos/avoscloud/SessionListener;->onSessionPaused(Lcom/avos/avoscloud/Session;)V

    .line 455
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1100(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/PendingMessageCache;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1100(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/PendingMessageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/PendingMessageCache;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 456
    :goto_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1100(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/PendingMessageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/PendingMessageCache;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1100(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/PendingMessageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/PendingMessageCache;->poll()Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v2

    .line 458
    .local v2, "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    iget-object v3, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 459
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    .line 460
    .local v1, "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/avos/avoscloud/AVMessage;

    iget-object v5, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v3, v1, v4}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    .end local v1    # "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    .end local v2    # "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v3, v4, v0}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    .line 471
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 462
    .restart local v2    # "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    new-instance v5, Lcom/avos/avoscloud/AVMessage;

    iget-object v6, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    iget-object v7, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v3, v4, v5}, Lcom/avos/avoscloud/SessionListener;->onMessageFailure(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onWebSocketOpen()V
    .locals 5

    .prologue
    .line 419
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    # getter for: Lcom/avos/avoscloud/AVSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "web socket opened, send session open."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;-><init>(Lcom/avos/avoscloud/AVSession$WebSocketListener;)V

    .line 445
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v2, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 447
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :cond_1
    return-void
.end method
