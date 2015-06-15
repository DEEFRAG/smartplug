.class public Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;
.super Ljava/lang/Thread;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V
    .locals 0

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1507
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/MenuActivity;->getServerVerCode()Z
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Z

    move-result v1

    .line 1508
    .local v1, "result":Z
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1509
    .local v0, "msg":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 1510
    const-string v2, "get ok"

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1514
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$GetThread;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MenuActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->access$2(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1515
    return-void

    .line 1512
    :cond_0
    const-string v2, "get error"

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
