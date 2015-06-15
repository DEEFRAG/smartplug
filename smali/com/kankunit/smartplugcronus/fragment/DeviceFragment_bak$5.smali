.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;
.super Landroid/os/Handler;
.source "DeviceFragment_bak.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

.field private final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->val$bundle:Landroid/os/Bundle;

    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 420
    iget v11, p1, Landroid/os/Message;->what:I

    if-ne v11, v9, :cond_0

    .line 421
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$13(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;->notifyDataSetChanged()V

    .line 423
    :cond_0
    iget v11, p1, Landroid/os/Message;->what:I

    const/16 v12, 0x190

    if-ne v11, v12, :cond_2

    .line 424
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, "Device offline"

    invoke-static {v11, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 425
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->loadListData()V
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V

    .line 426
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 427
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 429
    :cond_1
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$13(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;->notifyDataSetChanged()V

    .line 431
    :cond_2
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->isActivityOpen:Z
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$15(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, p1, Landroid/os/Message;->arg1:I

    const/16 v12, 0x6f

    if-ne v11, v12, :cond_7

    .line 432
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 433
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 435
    :cond_3
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "backString":Ljava/lang/String;
    const-string v11, "retry"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 437
    new-instance v5, Landroid/widget/EditText;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 438
    .local v5, "inputPassword":Landroid/widget/EditText;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v9, "Please enter your password"

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x108009b

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 440
    const-string v10, "Cancel"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    const-string v9, "Confirm"

    new-instance v10, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;

    invoke-direct {v10, p0, v5}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;Landroid/widget/EditText;)V

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 506
    .end local v1    # "backString":Ljava/lang/String;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "inputPassword":Landroid/widget/EditText;
    :cond_4
    :goto_0
    return-void

    .line 463
    .restart local v1    # "backString":Ljava/lang/String;
    :cond_5
    const-string v11, "%"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "arr":[Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v8, v0, v11

    .line 465
    .local v8, "status":Ljava/lang/String;
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v11

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v12, v12, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    .line 466
    .local v4, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v4, v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 467
    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 468
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v11

    invoke-virtual {v11, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 469
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v12, v12, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    .line 470
    .local v3, "dModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v3, :cond_6

    .line 471
    invoke-virtual {v3, v9}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 472
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v11

    invoke-virtual {v11, v3}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 474
    :cond_6
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->val$bundle:Landroid/os/Bundle;

    const-string v12, "mac"

    iget-object v13, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v13, v13, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v11

    if-ne v11, v9, :cond_9

    .line 476
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->val$bundle:Landroid/os/Bundle;

    const-string v12, "isDirect"

    invoke-virtual {v11, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 480
    :goto_1
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->val$bundle:Landroid/os/Bundle;

    const-string v12, "pwd"

    iget-object v13, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v13, v13, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->pwd:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->val$bundle:Landroid/os/Bundle;

    const-string v12, "port"

    iget-object v13, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v13, v13, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->port:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->val$bundle:Landroid/os/Bundle;

    const-string v12, "versionK"

    iget-object v13, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v13, v13, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->versionK:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->val$bundle:Landroid/os/Bundle;

    const-string v12, "status"

    const-string v13, "open"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    :goto_2
    invoke-virtual {v11, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 484
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v9

    const-class v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-direct {v6, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .local v6, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v6, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 486
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v9, v6}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->startActivity(Landroid/content/Intent;)V

    .line 488
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "backString":Ljava/lang/String;
    .end local v3    # "dModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v4    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "status":Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->isActivityOpen:Z
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$15(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v11, 0x70

    if-ne v9, v11, :cond_4

    .line 489
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 490
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 491
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v9

    const-string v11, "Request timed out"

    invoke-static {v9, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 493
    :cond_8
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 496
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 497
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v7

    .line 498
    .local v7, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v7, v10}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 499
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v9

    invoke-virtual {v9, v7}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 500
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 501
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->deleteAllByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 503
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->loadListData()V
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V

    .line 504
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$13(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 478
    .end local v7    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v0    # "arr":[Ljava/lang/String;
    .restart local v1    # "backString":Ljava/lang/String;
    .restart local v3    # "dModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v4    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v8    # "status":Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->val$bundle:Landroid/os/Bundle;

    const-string v12, "isDirect"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_a
    move v9, v10

    .line 483
    goto/16 :goto_2
.end method
