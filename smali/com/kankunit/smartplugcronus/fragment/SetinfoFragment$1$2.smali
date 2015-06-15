.class Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$2;
.super Ljava/lang/Object;
.source "SetinfoFragment.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$2;->this$1:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;)Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "uuuuuuuuuuu====timeout"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    return-void
.end method
