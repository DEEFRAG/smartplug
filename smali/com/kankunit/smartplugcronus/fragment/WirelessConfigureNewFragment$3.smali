.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    .line 142
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

    .line 145
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$27(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isStartedConfigure:Z

    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 149
    const/16 v0, 0x1388

    sput v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->configSleepTime:I

    .line 150
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtnDeep:Landroid/widget/Button;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$28(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 152
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->stopProgress()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    .line 154
    return-void
.end method
