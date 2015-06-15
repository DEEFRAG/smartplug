.class public Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/WifiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WiFiConncetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;


# direct methods
.method protected constructor <init>(Lcom/kankunit/smartplugcronus/util/WifiConnector;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$0(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$1(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 139
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mNetworkID:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$2(Lcom/kankunit/smartplugcronus/util/WifiConnector;)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_1

    .line 140
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$3(Lcom/kankunit/smartplugcronus/util/WifiConnector;Z)V

    .line 141
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mCondition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$4(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;->this$0:Lcom/kankunit/smartplugcronus/util/WifiConnector;

    # getter for: Lcom/kankunit/smartplugcronus/util/WifiConnector;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/WifiConnector;->access$0(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method
