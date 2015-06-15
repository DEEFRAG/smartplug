.class Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$1;
.super Ljava/lang/Object;
.source "SetinfoFragment.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;)Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uuuuuuuuuuu====back"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    return-void
.end method
