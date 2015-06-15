.class Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;
.super Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
.source "DelayMiniActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayCount"
.end annotation


# instance fields
.field private delayState:Ljava/lang/String;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;JJLjava/lang/String;)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J
    .param p6, "delayState"    # Ljava/lang/String;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    .line 511
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;-><init>(JJ)V

    .line 512
    iput-object p6, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;->delayState:Ljava/lang/String;

    .line 513
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->initView()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$0(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)V

    .line 518
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v2, 0x1

    .line 522
    const-string v0, "open"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;->delayState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2, v2}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2, v2}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
