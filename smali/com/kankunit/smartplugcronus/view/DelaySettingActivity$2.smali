.class Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;
.super Ljava/lang/Object;
.source "DelaySettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;)Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c024c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2ee0

    new-instance v5, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2$1;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2$1;-><init>(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 234
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->deleteDelay()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V

    .line 235
    return-void
.end method
