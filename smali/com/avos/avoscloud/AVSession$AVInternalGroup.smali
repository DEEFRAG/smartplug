.class Lcom/avos/avoscloud/AVSession$AVInternalGroup;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/Group;
.implements Lcom/avos/avoscloud/GroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AVInternalGroup"
.end annotation


# instance fields
.field pendingCommand:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/avos/avospush/session/GroupControlPacket;",
            ">;"
        }
    .end annotation
.end field

.field roomId:Ljava/lang/String;

.field roomIdAsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selfId:Ljava/lang/String;

.field session:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V
    .locals 3
    .param p1, "selfId"    # Ljava/lang/String;
    .param p2, "roomId"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p3, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    .line 705
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iput-object p2, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    .line 710
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomIdAsList:Ljava/util/List;

    .line 711
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomIdAsList:Ljava/util/List;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->selfId:Ljava/lang/String;

    .line 713
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->pendingCommand:Ljava/util/Queue;

    .line 714
    return-void

    .line 708
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 883
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please open session first before Group operation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 887
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$200(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    new-instance v0, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v0}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 889
    .local v0, "se":Lcom/avos/avoscloud/SessionPausedException;
    packed-switch p1, :pswitch_data_0

    .line 911
    :goto_0
    throw v0

    .line 891
    :pswitch_0
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->INVITE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 892
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 895
    :pswitch_1
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->JOIN:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 896
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 899
    :pswitch_2
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->KICK:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 900
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 903
    :pswitch_3
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->QUIT:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 904
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 907
    :pswitch_4
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->SEND_MESSAGE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 908
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/SessionPausedException;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 913
    .end local v0    # "se":Lcom/avos/avoscloud/SessionPausedException;
    :cond_1
    return-void

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getGroupGeneString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 926
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 927
    .local v0, "groupGene":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 929
    const-string v1, "groupId"

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 1

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSelfId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$700(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inviteMember(Ljava/util/List;)V
    .locals 6
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
    .line 832
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x271d

    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 834
    new-instance v0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$3;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVSession$AVInternalGroup$3;-><init>(Lcom/avos/avoscloud/AVSession$AVInternalGroup;Ljava/util/List;)V

    .line 860
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v3, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :goto_0
    return-void

    .line 861
    :catch_0
    move-exception v1

    .line 862
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p0, v1}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public join()V
    .locals 6

    .prologue
    .line 719
    const/16 v2, 0x271a

    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 720
    new-instance v0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup$1;-><init>(Lcom/avos/avoscloud/AVSession$AVInternalGroup;)V

    .line 748
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v3, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :goto_0
    return-void

    .line 749
    :catch_0
    move-exception v1

    .line 750
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p0, v1}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public kickMember(Ljava/util/List;)V
    .locals 6
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
    .line 795
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x271c

    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 796
    new-instance v0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;-><init>(Lcom/avos/avoscloud/AVSession$AVInternalGroup;Ljava/util/List;)V

    .line 822
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v3, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p0, v1}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/16 v2, 0x7538

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 1021
    return-void
.end method

.method public onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "byPeerId"    # Ljava/lang/String;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->pendingCommand:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 944
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/16 v2, 0x7532

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 946
    return-void
.end method

.method public onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;

    .prologue
    .line 936
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->pendingCommand:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 937
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/4 v2, 0x0

    const/16 v3, 0x7531

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 939
    return-void
.end method

.method public onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "byPeerId"    # Ljava/lang/String;

    .prologue
    .line 950
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->pendingCommand:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 951
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/16 v2, 0x7533

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 953
    return-void
.end method

.method public onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1026
    .local p3, "joinedPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x753b

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 1030
    return-void
.end method

.method public onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p3, "leftPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x753c

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 1037
    return-void
.end method

.method public onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "message"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "groupGeneString":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v2, "com.avoscloud.group.action"

    const/16 v3, 0x7535

    invoke-static {v0, v2, v1, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 988
    return-void
.end method

.method public onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "message"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "groupGeneString":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v2, "com.avoscloud.group.action"

    const/16 v3, 0x753a

    invoke-static {v0, v2, v1, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 976
    return-void
.end method

.method public onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "message"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "groupGeneString":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v2, "com.avoscloud.group.action"

    const/16 v3, 0x7539

    invoke-static {v0, v2, v1, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 965
    return-void
.end method

.method public onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->pendingCommand:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 993
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$1700(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p2}, Lcom/avos/avoscloud/Group;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/4 v2, 0x0

    const/16 v3, 0x7534

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 1000
    return-void
.end method

.method public onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1004
    .local p4, "targetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->pendingCommand:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avospush/session/GroupControlPacket;

    .line 1005
    .local v1, "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    invoke-virtual {v1}, Lcom/avos/avospush/session/GroupControlPacket;->getGroupPeerIds()Ljava/util/List;

    move-result-object v3

    .line 1006
    .local v3, "targetPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/avos/avospush/session/GroupControlPacket;->getOp()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "cmdOP":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1009
    .local v2, "rejectParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "groupOperation"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string v4, "GROUP_PARAM_FROMPEERID"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.avoscloud.group.action"

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x7536

    invoke-static {v4, v5, v6, v7}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 1015
    return-void
.end method

.method public quit()V
    .locals 7

    .prologue
    .line 869
    const/16 v2, 0x271e

    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 871
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->selfId:Ljava/lang/String;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const-string v5, "leave"

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/avos/avospush/session/GroupControlPacket;->genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/GroupControlPacket;

    move-result-object v1

    .line 874
    .local v1, "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->pendingCommand:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 875
    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .end local v1    # "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    :goto_0
    return-void

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p0, v0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    const/4 v6, 0x0

    .line 766
    const/16 v4, 0x271b

    iget-object v5, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomIdAsList:Ljava/util/List;

    invoke-direct {p0, v4, v5, v6}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 768
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getRandomMessageId()Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "messageId":Ljava/lang/String;
    new-instance v1, Lcom/avos/avospush/session/DirectMessagePacket;

    invoke-direct {v1}, Lcom/avos/avospush/session/DirectMessagePacket;-><init>()V

    .line 770
    .local v1, "dmp":Lcom/avos/avospush/session/DirectMessagePacket;
    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/avos/avospush/session/DirectMessagePacket;->setAppId(Ljava/lang/String;)V

    .line 771
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/avos/avospush/session/DirectMessagePacket;->setPeerId(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/avos/avospush/session/DirectMessagePacket;->setMsg(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/avos/avospush/session/DirectMessagePacket;->setTransient(Z)V

    .line 774
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/avos/avospush/session/DirectMessagePacket;->setGroupId(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v1, v3}, Lcom/avos/avospush/session/DirectMessagePacket;->setId(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v1}, Lcom/avos/avospush/session/DirectMessagePacket;->toJson()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v0, v4

    .line 779
    .local v0, "commandLength":I
    const/16 v4, 0x1388

    if-le v0, v4, :cond_1

    .line 780
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Message exceeds message length maximum limit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v0    # "commandLength":I
    .end local v1    # "dmp":Lcom/avos/avospush/session/DirectMessagePacket;
    .end local v3    # "messageId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 788
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v4, p0, v2}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    .line 790
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_0
    return-void

    .line 782
    .restart local v0    # "commandLength":I
    .restart local v1    # "dmp":Lcom/avos/avospush/session/DirectMessagePacket;
    .restart local v3    # "messageId":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 784
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v4

    if-nez v4, :cond_0

    .line 785
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/avos/avoscloud/AVSession;->storeMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->sendMessage(Ljava/lang/String;Z)V

    .line 757
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "isTransient"    # Z

    .prologue
    .line 761
    new-instance v0, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v0, p1, p2}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    .line 762
    return-void
.end method
