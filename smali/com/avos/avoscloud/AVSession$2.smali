.class Lcom/avos/avoscloud/AVSession$2;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;

.field final synthetic val$peerIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession$2;->val$peerIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$900(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$900(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$700(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$2;->val$peerIds:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "sig"    # Lcom/avos/avoscloud/Signature;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 149
    if-nez p2, :cond_1

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$500(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/Signature;->getSignedPeerIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$600(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 157
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$700(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v1

    const-string v2, "open"

    invoke-static {v0, v1, v2, p1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 160
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    :goto_1
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$500(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$2;->val$peerIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v0, v1, p2}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
