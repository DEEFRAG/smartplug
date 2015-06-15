.class Lcom/kankunit/smartplugcronus/util/TCPUtil$2;
.super Landroid/os/Handler;
.source "TCPUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/TCPUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/util/TCPUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$2;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$2;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$6(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$2;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageServer:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$7(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$2;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$6(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$2;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageClient:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$8(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
