.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 124
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtnDeep:Landroid/widget/Button;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$27(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$28(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 126
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$28(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->stopProgress()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V

    .line 128
    return-void
.end method
