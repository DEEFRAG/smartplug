.class Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$2;
.super Ljava/util/TimerTask;
.source "SuperProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$2;->this$0:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 61
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$2;->this$0:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->access$1(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$2;->this$0:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->access$1(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    return-void
.end method
