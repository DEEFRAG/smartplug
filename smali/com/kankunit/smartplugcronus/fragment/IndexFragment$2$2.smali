.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;


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


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 5
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    const/4 v4, 0x0

    .line 891
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 893
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v0

    .line 894
    .local v0, "sModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 896
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 897
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initGridInfo()V

    .line 899
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 901
    .end local v0    # "sModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_1
    return-void
.end method
