.class Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$1;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->updateDelay()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->access$0(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V

    .line 219
    return-void
.end method
