.class public Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseUdpBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetStatReceiver"
.end annotation


# instance fields
.field private flag:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;->flag:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 138
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 139
    .local v3, "wifiState":Landroid/net/NetworkInfo$State;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 140
    .local v2, "mobileState":Landroid/net/NetworkInfo$State;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 141
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v3, :cond_0

    .line 142
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v2, :cond_2

    .line 144
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 145
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v3, :cond_1

    .line 146
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v2, :cond_2

    .line 148
    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v3, :cond_2

    .line 153
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-virtual {v4, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "mobileState":Landroid/net/NetworkInfo$State;
    .end local v3    # "wifiState":Landroid/net/NetworkInfo$State;
    :cond_2
    return-void
.end method
