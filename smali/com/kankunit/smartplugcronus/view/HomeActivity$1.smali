.class Lcom/kankunit/smartplugcronus/view/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HomeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HomeActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/HomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/HomeActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 61
    .local v0, "btn":Landroid/widget/Button;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/HomeActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 62
    const v1, 0x7f02033b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 63
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/HomeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HomeActivity;->wirelessConfigureBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->access$1(Lcom/kankunit/smartplugcronus/view/HomeActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/HomeActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 64
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/HomeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HomeActivity;->wirelessConfigureBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->access$1(Lcom/kankunit/smartplugcronus/view/HomeActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f02033d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 66
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/HomeActivity;

    const/4 v2, 0x1

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;-><init>()V

    const/4 v4, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->applyRotation(ZLandroid/support/v4/app/Fragment;FF)V

    .line 67
    return-void
.end method
