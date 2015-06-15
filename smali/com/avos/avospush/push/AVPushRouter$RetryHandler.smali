.class Lcom/avos/avospush/push/AVPushRouter$RetryHandler;
.super Ljava/lang/Object;
.source "AVPushRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/push/AVPushRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avospush/push/AVPushRouter;


# direct methods
.method constructor <init>(Lcom/avos/avospush/push/AVPushRouter;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushRouter$RetryHandler;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Networking isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter$RetryHandler;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    # getter for: Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/avos/avospush/push/AVPushRouter;->access$000(Lcom/avos/avospush/push/AVPushRouter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter$RetryHandler;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    # getter for: Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/avos/avospush/push/AVPushRouter;->access$000(Lcom/avos/avospush/push/AVPushRouter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter$RetryHandler;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/push/AVPushRouter;->updateInterval(I)V

    .line 71
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter$RetryHandler;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushRouter;->retryGetPushServer()V

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter$RetryHandler;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter$RetryHandler;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    # getter for: Lcom/avos/avospush/push/AVPushRouter;->installationId:Ljava/lang/String;
    invoke-static {v2}, Lcom/avos/avospush/push/AVPushRouter;->access$100(Lcom/avos/avospush/push/AVPushRouter;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/avos/avospush/push/AVPushRouter;->fetchPushServer(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/avos/avospush/push/AVPushRouter;->access$200(Lcom/avos/avospush/push/AVPushRouter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
