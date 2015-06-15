.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;
.super Ljava/lang/Thread;
.source "IndexFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectConnectThread"
.end annotation


# instance fields
.field backOk:Z

.field configBack:Z

.field deviceMac:Ljava/lang/String;

.field number:I

.field ssidStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "deviceMac"    # Ljava/lang/String;

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1742
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->ssidStr:Ljava/lang/String;

    .line 1743
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->deviceMac:Ljava/lang/String;

    .line 1744
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1748
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->openWifi()V

    .line 1750
    const-wide/16 v11, 0x3e8

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1754
    :goto_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->backOk:Z

    .line 1755
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v12}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->ssidStr:Ljava/lang/String;

    const-string v14, ""

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v11

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1757
    .local v1, "connManager1":Landroid/net/ConnectivityManager;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->number:I

    .line 1759
    const-wide/16 v11, 0x3e8

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 1760
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->configBack:Z

    if-eqz v11, :cond_1

    .line 1761
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->backOk:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1858
    :cond_0
    :goto_1
    return-void

    .line 1751
    .end local v1    # "connManager1":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v4

    .line 1752
    .local v4, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1764
    .end local v4    # "e1":Ljava/lang/InterruptedException;
    .restart local v1    # "connManager1":Landroid/net/ConnectivityManager;
    :cond_1
    const-wide/16 v11, 0x3e8

    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 1765
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->configBack:Z

    if-eqz v11, :cond_2

    .line 1766
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->backOk:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1769
    :catch_1
    move-exception v3

    .line 1770
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1774
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_2
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 1775
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    .line 1776
    .local v10, "state1":Landroid/net/NetworkInfo$State;
    if-eqz v10, :cond_3

    const-string v11, "disconnected"

    invoke-virtual {v10}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "DISCONNECTED"

    invoke-virtual {v10}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1777
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v12}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->ssidStr:Ljava/lang/String;

    const-string v14, ""

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1779
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 1780
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v8

    .line 1781
    .local v8, "netname":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1782
    .local v9, "rep":I
    :goto_3
    if-eqz v8, :cond_6

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1802
    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v11, v10, :cond_8

    .line 1803
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->ssidStr:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1831
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 1832
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v11

    invoke-static {v11}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp255(I)Ljava/lang/String;

    move-result-object v7

    .line 1833
    .local v7, "myip":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_b

    const-string v11, "0.0.0.0"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1843
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->deviceMac:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    .line 1844
    .local v2, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 1845
    const-string v11, "open"

    invoke-virtual {v2, v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1846
    const-string v11, "old"

    invoke-virtual {v2, v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 1847
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1848
    .local v5, "msg":Landroid/os/Message;
    const/4 v11, 0x2

    iput v11, v5, Landroid/os/Message;->what:I

    .line 1849
    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1850
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1783
    .end local v2    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "myip":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 1784
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v8

    .line 1785
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->configBack:Z

    if-nez v11, :cond_0

    .line 1787
    const/16 v11, 0x14

    if-le v9, v11, :cond_7

    .line 1788
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 1789
    .local v6, "msgTimeOut":Landroid/os/Message;
    const-string v11, "deviceTimeOut"

    iput-object v11, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1792
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->backOk:Z

    goto/16 :goto_1

    .line 1796
    .end local v6    # "msgTimeOut":Landroid/os/Message;
    :cond_7
    const-wide/16 v11, 0x3e8

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1797
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1798
    :catch_2
    move-exception v3

    .line 1799
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 1807
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_8
    const-wide/16 v11, 0x3e8

    :try_start_4
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 1808
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->configBack:Z

    if-eqz v11, :cond_9

    .line 1809
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->backOk:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 1826
    :catch_3
    move-exception v3

    .line 1827
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 1812
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->number:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->number:I

    .line 1813
    move-object/from16 v0, p0

    iget v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->number:I

    const/16 v12, 0x14

    if-ne v11, v12, :cond_a

    .line 1814
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 1815
    .restart local v6    # "msgTimeOut":Landroid/os/Message;
    const-string v11, "timeout"

    iput-object v11, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1818
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->backOk:Z

    goto/16 :goto_1

    .line 1821
    .end local v6    # "msgTimeOut":Landroid/os/Message;
    :cond_a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->number:I

    rem-int/lit8 v11, v11, 0x3

    if-nez v11, :cond_2

    .line 1822
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v12}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v12

    .line 1823
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->ssidStr:Ljava/lang/String;

    const-string v14, ""

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 1822
    invoke-virtual/range {v12 .. v16}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 1836
    .restart local v7    # "myip":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 1837
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v11

    invoke-static {v11}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp255(I)Ljava/lang/String;

    move-result-object v7

    .line 1838
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->configBack:Z

    if-eqz v11, :cond_5

    .line 1839
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->backOk:Z

    goto/16 :goto_1
.end method
