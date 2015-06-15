.class Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$1;
.super Landroid/os/Handler;
.source "SuperProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 16
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimeOutListener:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->access$0(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimeOutListener:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->access$0(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-interface {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;->onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 22
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 24
    :cond_0
    return-void
.end method
