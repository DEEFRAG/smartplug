.class Lcom/avos/avoscloud/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/avos/avospush/push/AVConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushService;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushService;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$1;->this$0:Lcom/avos/avoscloud/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobile(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    # getter for: Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avospush/push/AVPushConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->initConnection()V

    .line 107
    return-void
.end method

.method public onNotConnected(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    # getter for: Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avospush/push/AVPushConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 117
    return-void
.end method

.method public onWifi(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    # getter for: Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avospush/push/AVPushConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->initConnection()V

    .line 112
    return-void
.end method
