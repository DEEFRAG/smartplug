.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showPopWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 667
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 677
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 678
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "devicetype"

    const-string v3, "k1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 680
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 681
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 682
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 686
    return-void
.end method
