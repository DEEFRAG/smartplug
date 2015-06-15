.class Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$11;
.super Ljava/util/TimerTask;
.source "DeviceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->doTimerAndDelayAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    .line 1198
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->infoThread()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$15(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    .line 1202
    return-void
.end method
