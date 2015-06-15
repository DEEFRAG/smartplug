.class public Lcom/kankunit/smartplugcronus/util/WifiConnector;
.super Ljava/lang/Object;
.source "WifiConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;,
        Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;,
        Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;
    }
.end annotation


# static fields
.field private static final WIFI_CONNECT_TIMEOUT:I = 0x14


# instance fields
.field private mCondition:Ljava/util/concurrent/locks/Condition;

.field private mContext:Landroid/content/Context;

.field private mIsConnnected:Z

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mNetworkID:I

.field private mWifiConnectListener:Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;

.field private mWifiConnectReceiver:Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mIsConnnected:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mNetworkID:I

    .line 43
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    new-instance v0, Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;-><init>(Lcom/kankunit/smartplugcronus/util/WifiConnector;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiConnectReceiver:Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;

    .line 51
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiConnectListener:Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/util/WifiConnector;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mNetworkID:I

    return v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/util/WifiConnector;Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mIsConnnected:Z

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiConnectReceiver:Lcom/kankunit/smartplugcronus/util/WifiConnector$WiFiConncetReceiver;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/util/WifiConnector;)Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiConnectListener:Lcom/kankunit/smartplugcronus/util/WifiConnector$WifiConnectListener;

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/util/WifiConnector$1;-><init>(Lcom/kankunit/smartplugcronus/util/WifiConnector;Ljava/lang/String;Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method

.method protected onConnect(Ljava/lang/String;Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;)Z
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 87
    .local v0, "cfg":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 88
    if-eqz p2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    sget-object v3, Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;->WEP:Lcom/kankunit/smartplugcronus/util/WifiConnector$SecurityMode;

    if-ne p3, v3, :cond_1

    .line 91
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 92
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 98
    :cond_0
    :goto_0
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 101
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mNetworkID:I

    .line 103
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mIsConnnected:Z

    .line 108
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mNetworkID:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 123
    :goto_1
    return v2

    .line 95
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 123
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/util/WifiConnector;->mIsConnnected:Z

    goto :goto_1

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
