.class Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;
.super Ljava/lang/Object;
.source "DeviceConfigureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "Direct connect configuration"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->menu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;I)V

    move-object v0, p1

    .line 109
    check-cast v0, Landroid/widget/Button;

    .line 110
    .local v0, "btn":Landroid/widget/Button;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 111
    const v1, 0x7f02033b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 112
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 113
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f02033d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->access$4(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)V

    .line 116
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->access$5(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-result-object v2

    const v3, 0x7f0701aa

    invoke-virtual {v1, v2, v3}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->replaceFragment(Landroid/support/v4/app/Fragment;I)V

    .line 117
    return-void
.end method
