.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;
.super Landroid/os/Handler;
.source "IndexFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

.field private final synthetic val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 959
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 961
    iget v11, p1, Landroid/os/Message;->what:I

    .line 964
    iget v11, p1, Landroid/os/Message;->what:I

    const/16 v12, 0x190

    if-ne v11, v12, :cond_0

    .line 966
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initGridInfo()V

    .line 967
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 968
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 972
    :cond_0
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$15(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget v11, p1, Landroid/os/Message;->arg1:I

    const/16 v12, 0x6f

    if-ne v11, v12, :cond_2

    .line 973
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 974
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 976
    :cond_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "backString":Ljava/lang/String;
    const-string v11, "retry"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 978
    new-instance v5, Landroid/widget/EditText;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 979
    .local v5, "inputPassword":Landroid/widget/EditText;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 980
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v9, "Please enter your password"

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x108009b

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 981
    const-string v10, "Cancel"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 982
    const-string v9, "Confirm"

    new-instance v10, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-direct {v10, p0, v5, v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;Landroid/widget/EditText;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1000
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1031
    .end local v1    # "backString":Ljava/lang/String;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "inputPassword":Landroid/widget/EditText;
    :cond_2
    :goto_0
    return-void

    .line 1003
    .restart local v1    # "backString":Ljava/lang/String;
    :cond_3
    const-string v11, "%"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "arr":[Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v8, v0, v11

    .line 1005
    .local v8, "status":Ljava/lang/String;
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v11

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v12

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v7

    .line 1006
    .local v7, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 1007
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 1009
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v11

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    .line 1010
    .local v4, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v4, v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 1011
    invoke-virtual {v4, v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1012
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1013
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLongclick:Z
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$19(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$15(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1014
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1015
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v11, "mac"

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v11

    if-ne v11, v9, :cond_4

    .line 1017
    const-string v11, "isDirect"

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1021
    :goto_1
    const-string v11, "pwd"

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v11, "port"

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPort()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v11, "versionK"

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v11, "status"

    const-string v12, "open"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    :goto_2
    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1025
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v9

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v9

    const-class v10, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1026
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1027
    invoke-virtual {v6, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1028
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1019
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v11, "isDirect"

    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    move v9, v10

    .line 1024
    goto :goto_2
.end method
