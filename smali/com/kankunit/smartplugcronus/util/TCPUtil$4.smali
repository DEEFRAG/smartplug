.class Lcom/kankunit/smartplugcronus/util/TCPUtil$4;
.super Ljava/lang/Object;
.source "TCPUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 286
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    new-instance v6, Ljava/net/ServerSocket;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$12(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/net/ServerSocket;)V

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "address":Ljava/net/SocketAddress;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$11(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/ServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/ServerSocket;->isBound()Z

    move-result v5

    if-nez v5, :cond_0

    .line 291
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$11(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/ServerSocket;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 295
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->getLocalIpAddress()Ljava/lang/String;

    .line 298
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$11(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/ServerSocket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$14(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/net/Socket;)V

    .line 301
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$13(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v5, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mBufferedReaderServer:Ljava/io/BufferedReader;

    .line 303
    new-instance v5, Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$13(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v5, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterServer:Ljava/io/PrintWriter;

    .line 306
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 307
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->what:I

    .line 308
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    const-string v6, "Client is already connected!\n"

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$18(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 309
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    const/16 v5, 0x100

    new-array v1, v5, [C

    .line 321
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .line 322
    .local v2, "count":I
    :goto_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverRuning:Z
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$9(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 344
    .end local v0    # "address":Ljava/net/SocketAddress;
    .end local v1    # "buffer":[C
    .end local v2    # "count":I
    :goto_1
    return-void

    .line 311
    .end local v4    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 315
    .restart local v4    # "msg":Landroid/os/Message;
    iput v8, v4, Landroid/os/Message;->what:I

    .line 316
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Create an exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$18(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 317
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 327
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "address":Ljava/net/SocketAddress;
    .restart local v1    # "buffer":[C
    .restart local v2    # "count":I
    :cond_1
    :try_start_1
    sget-object v5, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mBufferedReaderServer:Ljava/io/BufferedReader;

    invoke-virtual {v5, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    if-lez v2, :cond_2

    .line 329
    :cond_2
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    # invokes: Lcom/kankunit/smartplugcronus/util/TCPUtil;->getInfoBuff([CI)Ljava/lang/String;
    invoke-static {v7, v1, v2}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$5(Lcom/kankunit/smartplugcronus/util/TCPUtil;[CI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$18(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 330
    new-instance v4, Landroid/os/Message;

    .end local v4    # "msg":Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 331
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->what:I

    .line 332
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 335
    .end local v4    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v3

    .line 337
    .local v3, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->access$18(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V

    .line 338
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 339
    .restart local v4    # "msg":Landroid/os/Message;
    iput v8, v4, Landroid/os/Message;->what:I

    .line 340
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;->this$0:Lcom/kankunit/smartplugcronus/util/TCPUtil;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
