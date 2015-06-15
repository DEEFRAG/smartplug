.class Lcom/kankunit/smartplugcronus/util/TCPUtil$3;
.super Ljava/lang/Object;
.source "TCPUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverRuning:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$9(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$10(Lcom/kankunit/smartplugcronus/util/TCPUtil;Z)V

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$11(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$11(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 255
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$12(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/net/ServerSocket;)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$13(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$13(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 260
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$14(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadServer:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$15(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 268
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$6(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Information:\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_1
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$10(Lcom/kankunit/smartplugcronus/util/TCPUtil;Z)V

    .line 273
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->mcreateRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$16(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$17(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/Thread;)V

    .line 274
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadServer:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$15(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
