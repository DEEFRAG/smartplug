.class Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$1;
.super Ljava/util/TimerTask;
.source "BodyInductionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    .line 128
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 132
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x143

    iput v1, v0, Landroid/os/Message;->what:I

    .line 133
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$0(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method
