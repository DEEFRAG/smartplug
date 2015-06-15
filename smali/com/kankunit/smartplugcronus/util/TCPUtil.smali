.class public Lcom/kankunit/smartplugcronus/util/TCPUtil;
.super Ljava/lang/Object;
.source "TCPUtil.java"


# static fields
.field static mBufferedReaderClient:Ljava/io/BufferedReader;

.field static mBufferedReaderServer:Ljava/io/BufferedReader;

.field static mPrintWriterClient:Ljava/io/PrintWriter;

.field static mPrintWriterServer:Ljava/io/PrintWriter;


# instance fields
.field private CreateClickListener:Landroid/view/View$OnClickListener;

.field private IPText:Landroid/widget/EditText;

.field private editMsgText:Landroid/widget/EditText;

.field private editMsgTextCilent:Landroid/widget/EditText;

.field private isConnecting:Z

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSocketClient:Ljava/net/Socket;

.field private mSocketServer:Ljava/net/Socket;

.field private mThreadClient:Ljava/lang/Thread;

.field private mThreadServer:Ljava/lang/Thread;

.field private mcreateRunnable:Ljava/lang/Runnable;

.field private recvMessageClient:Ljava/lang/String;

.field private recvMessageServer:Ljava/lang/String;

.field private recvText:Landroid/widget/TextView;

.field private serverRuning:Z

.field private serverSocket:Ljava/net/ServerSocket;

.field private startButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mBufferedReaderServer:Ljava/io/BufferedReader;

    .line 46
    sput-object v0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterServer:Ljava/io/PrintWriter;

    .line 47
    sput-object v0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mBufferedReaderClient:Ljava/io/BufferedReader;

    .line 48
    sput-object v0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterClient:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->isConnecting:Z

    .line 41
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadClient:Ljava/lang/Thread;

    .line 42
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadServer:Ljava/lang/Thread;

    .line 43
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;

    .line 44
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageClient:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageServer:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/util/TCPUtil$1;-><init>(Lcom/kankunit/smartplugcronus/util/TCPUtil;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mRunnable:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Lcom/kankunit/smartplugcronus/util/TCPUtil$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/util/TCPUtil$2;-><init>(Lcom/kankunit/smartplugcronus/util/TCPUtil;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    .line 241
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;

    .line 242
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverRuning:Z

    .line 243
    new-instance v0, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/util/TCPUtil$3;-><init>(Lcom/kankunit/smartplugcronus/util/TCPUtil;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->CreateClickListener:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/util/TCPUtil$4;-><init>(Lcom/kankunit/smartplugcronus/util/TCPUtil;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mcreateRunnable:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->IPText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageClient:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/util/TCPUtil;Z)V
    .locals 0

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverRuning:Z

    return-void
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/net/ServerSocket;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;

    return-void
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;

    return-void
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadServer:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mcreateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadServer:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$18(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/util/TCPUtil;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->isConnecting:Z

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/util/TCPUtil;[CI)Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/util/TCPUtil;->getInfoBuff([CI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageClient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/util/TCPUtil;)Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverRuning:Z

    return v0
.end method

.method private getInfoBuff([CI)Ljava/lang/String;
    .locals 3
    .param p1, "buff"    # [C
    .param p2, "count"    # I

    .prologue
    .line 389
    new-array v1, p2, [C

    .line 390
    .local v1, "temp":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 394
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 392
    :cond_0
    aget-char v2, p1, v0

    aput-char v2, v1, v0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLocalIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 350
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 381
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 382
    .local v5, "msg":Landroid/os/Message;
    iput v8, v5, Landroid/os/Message;->what:I

    .line 383
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    const/4 v6, 0x0

    return-object v6

    .line 352
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 353
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 355
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 365
    .local v3, "inetAddress":Ljava/net/InetAddress;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageServer:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Connect IP:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 366
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageServer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 375
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 376
    .local v2, "ex":Ljava/net/SocketException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Get IP address exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvMessageServer:Ljava/lang/String;

    .line 377
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 378
    .restart local v5    # "msg":Landroid/os/Message;
    iput v8, v5, Landroid/os/Message;->what:I

    .line 379
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->isConnecting:Z

    if-eqz v1, :cond_1

    .line 402
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->isConnecting:Z

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 407
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    .line 409
    sget-object v1, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterClient:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 410
    const/4 v1, 0x0

    sput-object v1, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterClient:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadClient:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 418
    :cond_1
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverRuning:Z

    if-eqz v1, :cond_4

    .line 420
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverRuning:Z

    .line 422
    :try_start_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_2

    .line 424
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverSocket:Ljava/net/ServerSocket;

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;

    if-eqz v1, :cond_3

    .line 429
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadServer:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 438
    :cond_4
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 434
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public send(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->isConnecting:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->editMsgTextCilent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "msgText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mContext:Landroid/content/Context;

    const-string v3, "Send content cannot be empty!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 115
    .end local v1    # "msgText":Ljava/lang/String;
    :goto_0
    return-void

    .line 101
    .restart local v1    # "msgText":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterClient:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    sget-object v2, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterClient:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Send exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msgText":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mContext:Landroid/content/Context;

    const-string v3, "No connection"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public send2(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 118
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->serverRuning:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketServer:Ljava/net/Socket;

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->editMsgText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "msgText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mContext:Landroid/content/Context;

    const-string v3, "Send content cannot be empty!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 143
    .end local v1    # "msgText":Ljava/lang/String;
    :goto_0
    return-void

    .line 129
    .restart local v1    # "msgText":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterServer:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    sget-object v2, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterServer:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Send exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msgText":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mContext:Landroid/content/Context;

    const-string v3, "No connection"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->isConnecting:Z

    if-eqz v1, :cond_1

    .line 57
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->isConnecting:Z

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mSocketClient:Ljava/net/Socket;

    .line 64
    sget-object v1, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterClient:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 65
    const/4 v1, 0x0

    sput-object v1, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mPrintWriterClient:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadClient:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 73
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->startButton:Landroid/widget/Button;

    const-string v2, "Start connection"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->IPText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 75
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->recvText:Landroid/widget/TextView;

    const-string v2, "Information:\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->isConnecting:Z

    .line 80
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->startButton:Landroid/widget/Button;

    const-string v2, "Stop connection"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->IPText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 83
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadClient:Ljava/lang/Thread;

    .line 84
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TCPUtil;->mThreadClient:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
