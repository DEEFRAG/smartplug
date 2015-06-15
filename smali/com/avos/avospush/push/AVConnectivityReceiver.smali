.class public Lcom/avos/avospush/push/AVConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVConnectivityReceiver.java"


# instance fields
.field private listener:Lcom/avos/avospush/push/AVConnectivityListener;


# direct methods
.method public constructor <init>(Lcom/avos/avospush/push/AVConnectivityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/avos/avospush/push/AVConnectivityListener;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    .line 18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getConnectivityStatus(Landroid/content/Context;)I

    move-result v0

    .line 22
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 24
    :pswitch_0
    iget-object v1, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    invoke-interface {v1, p1}, Lcom/avos/avospush/push/AVConnectivityListener;->onMobile(Landroid/content/Context;)V

    goto :goto_0

    .line 28
    :pswitch_1
    iget-object v1, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    invoke-interface {v1, p1}, Lcom/avos/avospush/push/AVConnectivityListener;->onWifi(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    :pswitch_2
    iget-object v1, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    invoke-interface {v1, p1}, Lcom/avos/avospush/push/AVConnectivityListener;->onNotConnected(Landroid/content/Context;)V

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
