.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3$1;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;

    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 4
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1189
    return-void
.end method
