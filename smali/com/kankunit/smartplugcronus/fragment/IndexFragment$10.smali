.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$10;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$10;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$10;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 540
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$10;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 541
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$10;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 543
    return-void
.end method
