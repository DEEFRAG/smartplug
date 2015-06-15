.class Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$1;
.super Ljava/lang/Thread;
.source "AddShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 122
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 123
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 125
    return-void

    .line 118
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
