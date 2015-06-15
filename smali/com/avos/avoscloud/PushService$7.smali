.class final Lcom/avos/avoscloud/PushService$7;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->setSignatureFactory(Ljava/lang/String;Lcom/avos/avoscloud/SignatureFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$factory:Lcom/avos/avoscloud/SignatureFactory;

.field final synthetic val$peerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$7;->val$peerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/avos/avoscloud/PushService$7;->val$factory:Lcom/avos/avoscloud/SignatureFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 508
    # getter for: Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avospush/push/AVPushConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/PushService$7;->val$peerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avospush/push/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v0

    .line 509
    .local v0, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/avos/avoscloud/PushService$7;->val$factory:Lcom/avos/avoscloud/SignatureFactory;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVSession;->setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V

    .line 512
    :cond_0
    return-void
.end method
