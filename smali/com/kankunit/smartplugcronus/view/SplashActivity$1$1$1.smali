.class Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1$1;
.super Ljava/util/TimerTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1$1;->this$2:Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;

    .line 92
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1$1;->this$2:Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity;->isNetOk:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1$1;->this$2:Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$2(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 99
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1$1;->this$2:Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->this$1:Lcom/kankunit/smartplugcronus/view/SplashActivity$1;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SplashActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->access$2(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
