.class Lcom/avos/avoscloud/AVSession$3;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;->watchPeers(Ljava/util/List;)Z
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
    .line 296
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession$3;->val$peerIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$900(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$900(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$700(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$3;->val$peerIds:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .param p1, "sig"    # Lcom/avos/avoscloud/Signature;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 300
    if-nez p2, :cond_1

    .line 301
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$3;->val$peerIds:Ljava/util/List;

    .line 302
    .local v0, "peerIdsToWatch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/avos/avoscloud/Signature;->getSignedPeerIds()Ljava/util/List;

    move-result-object v0

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/avos/avoscloud/AVSession;->access$500(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 307
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v2}, Lcom/avos/avoscloud/AVSession;->access$700(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "add"

    invoke-static {v2, v0, v3, p1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v1

    .line 311
    .local v1, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 315
    .end local v0    # "peerIdsToWatch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "scp":Lcom/avos/avospush/session/SessionControlPacket;
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;
    invoke-static {v2}, Lcom/avos/avoscloud/AVSession;->access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-interface {v2, v3, p2}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
