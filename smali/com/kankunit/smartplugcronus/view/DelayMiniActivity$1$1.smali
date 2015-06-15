.class Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1$1;
.super Ljava/lang/Object;
.source "DelayMiniActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;)Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$8(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v0

    const-string v1, "y"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;)Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->oldAllEn:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$4(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;)Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;)Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    return-void
.end method
