.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 620
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 621
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 624
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 625
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 626
    return-void
.end method
