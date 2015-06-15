.class Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;
.super Ljava/lang/Object;
.source "MasterControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

.field private final synthetic val$inputName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;->val$inputName:Landroid/widget/EditText;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x4

    .line 677
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;->val$inputName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 679
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 681
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    const-string v0, "Custom"

    .line 684
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Lcom/kankunit/smartplugcronus/customview/ParamButton;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setTextColor(I)V

    .line 685
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Lcom/kankunit/smartplugcronus/customview/ParamButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamBool(Z)V

    .line 686
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Lcom/kankunit/smartplugcronus/customview/ParamButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 687
    return-void
.end method
