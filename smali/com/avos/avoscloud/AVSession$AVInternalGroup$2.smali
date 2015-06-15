.class Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession$AVInternalGroup;->kickMember(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

.field final synthetic val$peerIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession$AVInternalGroup;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->val$peerIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 6

    .prologue
    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "sig":Lcom/avos/avoscloud/Signature;
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$900(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$900(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->selfId:Ljava/lang/String;

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->val$peerIds:Ljava/util/List;

    const-string v5, "kick"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/avos/avoscloud/SignatureFactory;->createGroupSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 819
    :cond_0
    return-object v0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .param p1, "sig"    # Lcom/avos/avoscloud/Signature;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 800
    if-nez p2, :cond_0

    .line 801
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->selfId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->roomId:Ljava/lang/String;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->val$peerIds:Ljava/util/List;

    const-string v4, "kick"

    invoke-static {v1, v2, v3, v4, p1}, Lcom/avos/avospush/session/GroupControlPacket;->genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/GroupControlPacket;

    move-result-object v0

    .line 804
    .local v0, "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->pendingCommand:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 805
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 809
    .end local v0    # "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$AVInternalGroup$2;->this$0:Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    invoke-virtual {v1, v2, v3, p2}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
