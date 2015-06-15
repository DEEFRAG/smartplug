.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;
.super Landroid/os/Handler;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

.field private final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->val$bundle:Landroid/os/Bundle;

    .line 497
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 500
    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v9, v7, :cond_0

    .line 501
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->notifyDataSetChanged()V

    .line 503
    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x190

    if-ne v9, v10, :cond_2

    .line 505
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->showOffLineDialog()V
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V

    .line 506
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->loadListData()V
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V

    .line 507
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 508
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 510
    :cond_1
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->notifyDataSetChanged()V

    .line 512
    :cond_2
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x191

    if-ne v9, v10, :cond_4

    .line 513
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->loadListData()V
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V

    .line 514
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 515
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 517
    :cond_3
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->notifyDataSetChanged()V

    .line 519
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    const-string v10, "Control permissions"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 521
    const-string v10, "This control has lost access to the device."

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 522
    const-string v10, "Learn more"

    new-instance v11, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3$1;

    invoke-direct {v11, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 532
    const-string v10, "Good"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 533
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 535
    :cond_4
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->isActivityOpen:Z
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0x6f

    if-ne v9, v10, :cond_a

    .line 536
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 537
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 539
    :cond_5
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "backString":Ljava/lang/String;
    const-string v9, "retry"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 614
    .end local v1    # "backString":Ljava/lang/String;
    :cond_6
    :goto_0
    return-void

    .line 567
    .restart local v1    # "backString":Ljava/lang/String;
    :cond_7
    const-string v9, "%"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "arr":[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v6, v0, v9

    .line 570
    .local v6, "status":Ljava/lang/String;
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v10, v10, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 571
    const/4 v9, 0x3

    aget-object v9, v0, v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v6, v9, v8

    .line 573
    :cond_8
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v10, v10, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    .line 574
    .local v3, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v3, v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 575
    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 576
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v9

    invoke-virtual {v9, v3}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 577
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v10, v10, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    .line 578
    .local v2, "dModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v2, :cond_9

    .line 579
    invoke-virtual {v2, v7}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 580
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v9

    invoke-virtual {v9, v2}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 582
    :cond_9
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->val$bundle:Landroid/os/Bundle;

    const-string v10, "mac"

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v11, v11, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v9

    if-ne v9, v7, :cond_c

    .line 584
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->val$bundle:Landroid/os/Bundle;

    const-string v10, "isDirect"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 588
    :goto_1
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->val$bundle:Landroid/os/Bundle;

    const-string v10, "pwd"

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v11, v11, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->pwd:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->val$bundle:Landroid/os/Bundle;

    const-string v10, "port"

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v11, v11, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->port:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->val$bundle:Landroid/os/Bundle;

    const-string v10, "versionK"

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v11, v11, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->versionK:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->val$bundle:Landroid/os/Bundle;

    const-string v10, "status"

    const-string v11, "open"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    :goto_2
    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 592
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v7

    const-class v9, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-direct {v4, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .local v4, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 594
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v7, v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->startActivity(Landroid/content/Intent;)V

    .line 596
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "backString":Ljava/lang/String;
    .end local v2    # "dModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v3    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "status":Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->isActivityOpen:Z
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x70

    if-ne v7, v9, :cond_6

    .line 597
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 598
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 599
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v7

    const-string v9, "Request timed out"

    invoke-static {v7, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 601
    :cond_b
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 604
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 605
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v5

    .line 606
    .local v5, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v5, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 607
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v7

    invoke-virtual {v7, v5}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 608
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 609
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->deleteAllByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 610
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 611
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->loadListData()V
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V

    .line 612
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 586
    .end local v5    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v0    # "arr":[Ljava/lang/String;
    .restart local v1    # "backString":Ljava/lang/String;
    .restart local v2    # "dModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v3    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_c
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->val$bundle:Landroid/os/Bundle;

    const-string v10, "isDirect"

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_d
    move v7, v8

    .line 591
    goto/16 :goto_2
.end method
