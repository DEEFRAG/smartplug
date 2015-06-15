.class Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;
.super Ljava/lang/Object;
.source "Socks5Proxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Socks5ServerProcess"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$1;)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)V

    return-void
.end method

.method private establishConnection(Ljava/net/Socket;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 359
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 360
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 363
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 364
    if-eq v0, v8, :cond_0

    .line 365
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Only SOCKS5 supported"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 372
    new-array v5, v0, [B

    .line 373
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 375
    const/4 v0, 0x2

    new-array v6, v0, [B

    .line 376
    aput-byte v8, v6, v1

    move v0, v1

    .line 380
    :goto_0
    array-length v7, v5

    if-ge v0, v7, :cond_4

    .line 381
    aget-byte v7, v5, v0

    if-nez v7, :cond_1

    move v0, v2

    .line 387
    :goto_1
    if-nez v0, :cond_2

    .line 388
    const/4 v0, -0x1

    aput-byte v0, v6, v2

    .line 389
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 390
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 391
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Authentication method not supported"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_2
    aput-byte v1, v6, v2

    .line 395
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 396
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 399
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->receiveSocks5Message(Ljava/io/DataInputStream;)[B

    move-result-object v0

    .line 402
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x4

    aget-byte v5, v0, v5

    invoke-direct {v4, v0, v8, v5}, Ljava/lang/String;-><init>([BII)V

    .line 405
    iget-object v5, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    # getter for: Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->allowedConnections:Ljava/util/List;
    invoke-static {v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$200(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 406
    aput-byte v8, v0, v2

    .line 407
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 408
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 410
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Connection is not allowed"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_3
    aput-byte v1, v0, v2

    .line 414
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 415
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 418
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    # getter for: Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->connectionMap:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$300(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 319
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    # getter for: Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$100(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    :cond_1
    return-void

    .line 325
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    # getter for: Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$100(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 328
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->establishConnection(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0

    .line 337
    :catch_1
    move-exception v1

    .line 339
    if-eqz v0, :cond_0

    .line 340
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 343
    :catch_2
    move-exception v0

    goto :goto_0
.end method
