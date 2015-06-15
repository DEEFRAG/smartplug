.class Lcom/kankunit/smartplugcronus/util/WifiConnector$1;
.super Ljava/lang/Object;
.source "WifiConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/util/WifiConnector;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

.field private final synthetic val$mode:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/util/WifiConnector;Ljava/lang/String;Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->val$ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->val$mode:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$1(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$1(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$5(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiConnectReceiver:Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$6(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->val$ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->val$mode:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->onConnect(Ljava/lang/String;Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiConnectListener:Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$7(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;->OnWifiConnectCompleted(Z)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$5(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiConnectReceiver:Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$6(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiConnectListener:Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$7(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;->OnWifiConnectCompleted(Z)V

    goto :goto_0
.end method
