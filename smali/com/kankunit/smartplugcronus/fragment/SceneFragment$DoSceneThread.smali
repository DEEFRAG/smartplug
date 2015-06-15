.class Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;
.super Ljava/lang/Thread;
.source "SceneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/SceneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoSceneThread"
.end annotation


# instance fields
.field private sceneId:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;I)V
    .locals 1
    .param p2, "sceneId"    # I

    .prologue
    .line 697
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    .line 698
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 699
    iput p2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->sceneId:I

    .line 701
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-static {p1, v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Ljava/util/concurrent/locks/Lock;)V

    .line 702
    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Ljava/util/concurrent/locks/Condition;)V

    .line 703
    return-void
.end method

.method private getTime(III)J
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 1042
    mul-int/lit8 v0, p2, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    mul-int/lit16 v1, p3, 0x3e8

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private send1K(Ljava/lang/String;I)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    const/4 v7, 0x1

    .line 849
    const-string v10, "open"

    .line 850
    .local v10, "state":Ljava/lang/String;
    if-ne p2, v7, :cond_0

    .line 851
    const-string v10, "close"

    .line 853
    :cond_0
    const-string v9, "nopassowrd"

    .line 854
    .local v9, "pwd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 855
    const-string v5, "%request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 854
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 857
    const-string v5, "%confirm#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 856
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "confirmBeforeCmd":Ljava/lang/String;
    const-string v3, "%request"

    .line 859
    .local v3, "confirmAfterCmd":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 860
    .local v8, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v6, 0x0

    .line 861
    .local v6, "b":Z
    if-eqz v8, :cond_1

    .line 862
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 863
    const/4 v6, 0x1

    .line 865
    :cond_1
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    .line 866
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0xb156

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 865
    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 867
    .local v0, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 868
    return-void
.end method

.method private send2K(Ljava/lang/String;I)V
    .locals 10
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 871
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 872
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "address":Ljava/lang/String;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 875
    .local v9, "pwd":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%open%relay"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, "message":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%close%relay"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 885
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    .line 886
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v4

    const-string v7, ""

    .line 887
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$15(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    .line 885
    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 889
    return-void

    .line 878
    .end local v6    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%open%light"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 880
    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%close%light"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private sendAirControl(ILjava/lang/String;)V
    .locals 12
    .param p1, "airId"    # I
    .param p2, "groupString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 892
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 893
    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 892
    invoke-virtual {v0, v3, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 894
    .local v9, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-nez v9, :cond_0

    .line 908
    :goto_0
    return-void

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 898
    .local v10, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 900
    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "address":Ljava/lang/String;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 902
    .local v11, "pwd":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 903
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#emityun#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 904
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 905
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrandType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    .line 907
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v7, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$15(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    move-object v5, v4

    move-object v6, v4

    .line 906
    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_0
.end method

.method private sendRemoteControl(ILjava/lang/String;)V
    .locals 30
    .param p1, "controlId"    # I
    .param p2, "recordIdx"    # Ljava/lang/String;

    .prologue
    .line 911
    const/16 v19, 0x1

    .line 912
    .local v19, "isSuccess":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 913
    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 912
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 914
    .local v13, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-nez v13, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 918
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 917
    invoke-static {v1, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    .line 919
    .local v7, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v13, :cond_0

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 923
    .local v6, "phoneMac":Ljava/lang/String;
    const-string v1, ":"

    const-string v4, "-"

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 924
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 925
    .local v24, "pwd":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 926
    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 925
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "address":Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 928
    .local v18, "idx":[Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    .line 929
    .local v26, "time":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v1, v0

    move/from16 v0, v16

    if-lt v0, v1, :cond_2

    .line 1033
    if-eqz v19, :cond_10

    .line 1034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 1038
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 930
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->iscancel:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 935
    :cond_3
    aget-object v17, v18, v16

    .line 936
    .local v17, "id":Ljava/lang/String;
    const-string v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 929
    :cond_4
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 939
    :cond_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 940
    .local v14, "d":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 941
    const-class v5, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 940
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 942
    .local v25, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    if-nez v16, :cond_9

    .line 943
    invoke-virtual/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v26

    .line 961
    :goto_4
    invoke-virtual/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "begin"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 962
    invoke-virtual/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "end"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 965
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_6

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_6

    .line 966
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_c

    .line 967
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 968
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%operate#3031#emityun#xiaomi_tv_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 969
    invoke-virtual/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 967
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 970
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_b

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%operate#3031#emityun#apple_tv_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 973
    invoke-virtual/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 971
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 979
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v1

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v5

    const-string v8, ""

    .line 981
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$15(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v9

    .line 979
    invoke-virtual/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 982
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 984
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    const-wide/16 v4, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    .line 985
    .local v10, "b":Z
    if-nez v10, :cond_8

    .line 986
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 987
    .local v20, "m":Landroid/os/Message;
    const/16 v19, 0x0

    .line 988
    const/16 v1, 0x70

    move-object/from16 v0, v20

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 989
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 994
    .end local v10    # "b":Z
    .end local v20    # "m":Landroid/os/Message;
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_3

    .line 945
    .end local v3    # "message":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v21

    .line 946
    .local v21, "nextTime":J
    sub-long v28, v21, v26

    .line 948
    .local v28, "timex":J
    :try_start_1
    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 952
    :goto_7
    const-wide/16 v4, 0x3e8

    cmp-long v1, v28, v4

    if-gez v1, :cond_a

    .line 954
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 959
    :cond_a
    :goto_8
    move-wide/from16 v26, v21

    goto/16 :goto_4

    .line 949
    :catch_0
    move-exception v15

    .line 950
    .local v15, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 955
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v15

    .line 956
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 974
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .end local v21    # "nextTime":J
    .end local v28    # "timex":J
    .restart local v3    # "message":Ljava/lang/String;
    :cond_b
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_7

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 976
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%operate#3031#emityun#gehua_tv_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 977
    invoke-virtual/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 975
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 991
    :catch_2
    move-exception v15

    .line 992
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 997
    .end local v3    # "message":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 998
    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and buttonId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1000
    invoke-virtual/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 999
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 997
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 1001
    .local v12, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v12, :cond_d

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 1002
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 1003
    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and buttonName=\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1005
    invoke-virtual/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1002
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 1007
    :cond_e
    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1010
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 1011
    .local v11, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v23

    .line 1012
    .local v23, "port":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1013
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%operate#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#emit#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1014
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1015
    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1012
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1016
    .restart local v3    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v1

    .line 1017
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v5

    .line 1018
    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$15(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v9

    .line 1016
    invoke-virtual/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 1019
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1021
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    const-wide/16 v4, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    .line 1022
    .restart local v10    # "b":Z
    if-nez v10, :cond_f

    .line 1023
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 1024
    .restart local v20    # "m":Landroid/os/Message;
    const/16 v1, 0x70

    move-object/from16 v0, v20

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1025
    const/16 v19, 0x0

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1031
    .end local v10    # "b":Z
    .end local v20    # "m":Landroid/os/Message;
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_3

    .line 1028
    :catch_3
    move-exception v15

    .line 1029
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 1036
    .end local v3    # "message":Ljava/lang/String;
    .end local v11    # "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    .end local v12    # "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    .end local v14    # "d":I
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .end local v17    # "id":Ljava/lang/String;
    .end local v23    # "port":I
    .end local v25    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;I)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v18

    const-class v19, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "sceneId="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->sceneId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 708
    invoke-virtual/range {v18 .. v20}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Ljava/util/List;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->detailModels:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->sceneId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-class v19, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual/range {v17 .. v19}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 842
    .local v14, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Z)V

    .line 846
    :goto_1
    return-void

    .line 710
    .end local v14    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 711
    .local v10, "model":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->doIndex:I
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;I)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->iscancel:Z
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->sceneId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 714
    const-class v19, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 713
    invoke-virtual/range {v17 .. v19}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 715
    .restart local v14    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v17

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Z)V

    goto/16 :goto_1

    .line 724
    .end local v14    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_2
    const-wide/16 v18, 0x64

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Lcom/kankunit/smartplugcronus/model/SceneDetailModel;)V

    .line 733
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 734
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getHour()I

    move-result v18

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMinute()I

    move-result v19

    .line 735
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getSecond()I

    move-result v20

    .line 734
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->getTime(III)J

    move-result-wide v15

    .line 737
    .local v15, "time":J
    :try_start_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 741
    :goto_3
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 725
    .end local v15    # "time":J
    :catch_0
    move-exception v8

    .line 726
    .local v8, "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 738
    .end local v8    # "exception":Ljava/lang/Exception;
    .restart local v15    # "time":J
    :catch_1
    move-exception v8

    .line 739
    .restart local v8    # "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 747
    .end local v8    # "exception":Ljava/lang/Exception;
    .end local v15    # "time":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 748
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 749
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->send1K(Ljava/lang/String;I)V

    .line 751
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Condition;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 756
    :cond_4
    :goto_4
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v18

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 757
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v18

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 758
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 759
    .local v6, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsAuth()Ljava/lang/String;

    move-result-object v18

    const-string v19, "n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 760
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 761
    .local v9, "message":Landroid/os/Message;
    const/16 v18, 0x1ff

    move/from16 v0, v18

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 778
    .end local v6    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v9    # "message":Landroid/os/Message;
    :cond_6
    :goto_5
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v18

    .line 780
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-class v20, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 779
    invoke-virtual/range {v18 .. v20}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 781
    .local v5, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-nez v5, :cond_8

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 752
    .end local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    :catch_2
    move-exception v7

    .line 753
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 764
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_7
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->send2K(Ljava/lang/String;I)V

    .line 766
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Condition;

    move-result-object v18

    const-wide/16 v19, 0x5

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v18 .. v21}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 767
    .local v4, "b":Z
    if-nez v4, :cond_6

    .line 768
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 769
    .restart local v9    # "message":Landroid/os/Message;
    const/16 v18, 0x70

    move/from16 v0, v18

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    .line 772
    .end local v4    # "b":Z
    .end local v9    # "message":Landroid/os/Message;
    :catch_3
    move-exception v8

    .line 773
    .restart local v8    # "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 789
    .end local v6    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v8    # "exception":Ljava/lang/Exception;
    .restart local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    .line 790
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v19

    const-string v20, "ir_module"

    .line 789
    invoke-static/range {v18 .. v20}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->getDeviceByMacAndPlugName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 791
    .local v12, "pList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_a

    .line 792
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 798
    :cond_a
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v18

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getGroupString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->sendAirControl(ILjava/lang/String;)V

    .line 800
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Condition;

    move-result-object v18

    const-wide/16 v19, 0x5

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v18 .. v21}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 801
    .restart local v4    # "b":Z
    if-nez v4, :cond_b

    .line 802
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 803
    .restart local v9    # "message":Landroid/os/Message;
    const/16 v18, 0x70

    move/from16 v0, v18

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 810
    .end local v4    # "b":Z
    .end local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v9    # "message":Landroid/os/Message;
    .end local v12    # "pList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 811
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v11

    .line 812
    .local v11, "modelType":I
    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v11, v0, :cond_c

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v11, v0, :cond_c

    const/16 v18, 0xb

    move/from16 v0, v18

    if-eq v11, v0, :cond_c

    .line 813
    const/16 v18, 0x5

    move/from16 v0, v18

    if-eq v11, v0, :cond_c

    const/16 v18, 0x7

    move/from16 v0, v18

    if-eq v11, v0, :cond_c

    const/16 v18, 0x8

    move/from16 v0, v18

    if-eq v11, v0, :cond_c

    .line 814
    const/16 v18, 0x9

    move/from16 v0, v18

    if-eq v11, v0, :cond_c

    const/16 v18, 0xc

    move/from16 v0, v18

    if-eq v11, v0, :cond_c

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v11, v0, :cond_0

    .line 815
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v18

    .line 816
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-class v20, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 815
    invoke-virtual/range {v18 .. v20}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 817
    .restart local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    const-string v13, "ir_module"

    .line 818
    .local v13, "plugName":Ljava/lang/String;
    if-nez v5, :cond_d

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 806
    .end local v11    # "modelType":I
    .end local v13    # "plugName":Ljava/lang/String;
    .restart local v12    # "pList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    :catch_4
    move-exception v8

    .line 807
    .restart local v8    # "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 824
    .end local v8    # "exception":Ljava/lang/Exception;
    .end local v12    # "pList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    .restart local v11    # "modelType":I
    .restart local v13    # "plugName":Ljava/lang/String;
    :cond_d
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v18

    const/16 v19, 0xbdb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 825
    const-string v13, "rf_module"

    .line 828
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    .line 829
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v19

    .line 828
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->getDeviceByMacAndPlugName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 830
    .restart local v12    # "pList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    if-eqz v12, :cond_f

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_10

    .line 831
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 836
    :cond_10
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v18

    .line 837
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getRecordIdx()Ljava/lang/String;

    move-result-object v19

    .line 836
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->sendRemoteControl(ILjava/lang/String;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
