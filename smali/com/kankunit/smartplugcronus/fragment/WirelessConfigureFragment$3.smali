.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$3;
.super Ljava/lang/Object;
.source "WirelessConfigureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x81

    .line 157
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->eye:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$31(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02032f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 159
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 164
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->eye:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$31(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020330

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
