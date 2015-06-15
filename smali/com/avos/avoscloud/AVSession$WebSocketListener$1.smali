.class Lcom/avos/avoscloud/AVSession$WebSocketListener$1;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession$WebSocketListener;->onWebSocketOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field peerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/avos/avoscloud/AVSession$WebSocketListener;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession$WebSocketListener;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->this$1:Lcom/avos/avoscloud/AVSession$WebSocketListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 4

    .prologue
    .line 435
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->this$1:Lcom/avos/avoscloud/AVSession$WebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->peerIds:Ljava/util/List;

    .line 436
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->this$1:Lcom/avos/avoscloud/AVSession$WebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$900(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->this$1:Lcom/avos/avoscloud/AVSession$WebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->this$1:Lcom/avos/avoscloud/AVSession$WebSocketListener;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->this$1:Lcom/avos/avoscloud/AVSession$WebSocketListener;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 438
    .local v0, "sig":Lcom/avos/avoscloud/Signature;
    invoke-virtual {v0}, Lcom/avos/avoscloud/Signature;->getSignedPeerIds()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->peerIds:Ljava/util/List;

    .line 439
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->this$1:Lcom/avos/avoscloud/AVSession$WebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->peerIds:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;
    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVSession;->access$502(Lcom/avos/avoscloud/AVSession;Ljava/util/Set;)Ljava/util/Set;

    .line 442
    .end local v0    # "sig":Lcom/avos/avoscloud/Signature;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "sig"    # Lcom/avos/avoscloud/Signature;
    .param p2, "exception"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->this$1:Lcom/avos/avoscloud/AVSession$WebSocketListener;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession$WebSocketListener;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$700(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$WebSocketListener$1;->peerIds:Ljava/util/List;

    const-string v2, "open"

    invoke-static {v0, v1, v2, p1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 431
    return-void
.end method
