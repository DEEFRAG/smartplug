.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$4;
.super Ljava/lang/Object;
.source "WirelessConfigureNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x81

    .line 163
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$31(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->eye:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$32(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02032f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 165
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$31(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$31(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 170
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->eye:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$32(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020330

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
