.class Lcom/kankunit/smartplugcronus/view/MenuActivity$10;
.super Ljava/lang/Thread;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;->doReceive(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 1183
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1188
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1189
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1190
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1191
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MenuActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->access$2(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1196
    return-void

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
