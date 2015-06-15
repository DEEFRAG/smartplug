.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$3;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$3;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$3;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$3;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$3;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 947
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$3;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$3;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 949
    :cond_0
    return-void
.end method
