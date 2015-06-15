.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

.field private final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->val$mac:Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 340
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 341
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "phoneMac":Ljava/lang/String;
    const-string v4, ":"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->val$mac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "msg":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteFriends:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsgWithNoResponse(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "phoneMac":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->val$mac:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByDevicemac(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->val$mac:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->val$mac:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->deleteDeviceByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->val$mac:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->deleteAllByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->val$mac:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->deleteByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v4

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->loadListData()V
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V

    .line 372
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    return-void

    .line 347
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "phoneMac":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 361
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "phoneMac":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "initInfo"

    const-string v6, "needUpdateFriends"

    const-string v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
