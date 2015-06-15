.class Lcom/kankunit/smartplugcronus/minautil/MinaHandler$1;
.super Ljava/util/TimerTask;
.source "MinaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 72
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    # getter for: Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isMsgReceived:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->access$0(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    # getter for: Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->access$1(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler$1;->this$0:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    # getter for: Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->access$1(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
