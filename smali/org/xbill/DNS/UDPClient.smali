.class final Lorg/xbill/DNS/UDPClient;
.super Lorg/xbill/DNS/Client;
.source "UDPClient.java"


# static fields
.field private static final EPHEMERAL_RANGE:I = 0xfbff

.field private static final EPHEMERAL_START:I = 0x400

.field private static final EPHEMERAL_STOP:I = 0xffff

.field private static prng:Ljava/security/SecureRandom;

.field private static volatile prng_initializing:Z


# instance fields
.field private bound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/xbill/DNS/UDPClient;->prng:Ljava/security/SecureRandom;

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lorg/xbill/DNS/UDPClient;->prng_initializing:Z

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/xbill/DNS/UDPClient$1;

    invoke-direct {v1}, Lorg/xbill/DNS/UDPClient$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/Client;-><init>(Ljava/nio/channels/SelectableChannel;J)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/xbill/DNS/UDPClient;->prng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 11
    sput-boolean p0, Lorg/xbill/DNS/UDPClient;->prng_initializing:Z

    return p0
.end method

.method private bind_random(Ljava/net/InetSocketAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    sget-boolean v0, Lorg/xbill/DNS/UDPClient;->prng_initializing:Z

    if-eqz v0, :cond_1

    .line 55
    const-wide/16 v0, 0x2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :goto_0
    sget-boolean v0, Lorg/xbill/DNS/UDPClient;->prng_initializing:Z

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 66
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    const/16 v1, 0x400

    if-ge v2, v1, :cond_0

    .line 68
    :try_start_1
    sget-object v1, Lorg/xbill/DNS/UDPClient;->prng:Ljava/security/SecureRandom;

    const v3, 0xfbff

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    add-int/lit16 v3, v1, 0x400

    .line 70
    if-eqz p1, :cond_2

    .line 71
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 75
    :goto_3
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 66
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 74
    :cond_2
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 57
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v1, Lorg/xbill/DNS/UDPClient;

    invoke-direct {v1, p4, p5}, Lorg/xbill/DNS/UDPClient;-><init>(J)V

    .line 147
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/xbill/DNS/UDPClient;->bind(Ljava/net/SocketAddress;)V

    .line 148
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/UDPClient;->connect(Ljava/net/SocketAddress;)V

    .line 149
    invoke-virtual {v1, p2}, Lorg/xbill/DNS/UDPClient;->send([B)V

    .line 150
    invoke-virtual {v1, p3}, Lorg/xbill/DNS/UDPClient;->recv(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 153
    invoke-virtual {v1}, Lorg/xbill/DNS/UDPClient;->cleanup()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/xbill/DNS/UDPClient;->cleanup()V

    throw v0
.end method

.method static sendrecv(Ljava/net/SocketAddress;[BIJ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/UDPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, p1

    .line 90
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0}, Lorg/xbill/DNS/UDPClient;->bind_random(Ljava/net/InetSocketAddress;)V

    .line 91
    iget-boolean v0, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    if-eqz v0, :cond_2

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 97
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    goto :goto_0
.end method

.method connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/UDPClient;->bind(Ljava/net/SocketAddress;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 107
    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 108
    return-void
.end method

.method recv(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 119
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 120
    new-array v1, p1, [B

    .line 121
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 123
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v3, p0, Lorg/xbill/DNS/UDPClient;->endTime:J

    invoke-static {v2, v3, v4}, Lorg/xbill/DNS/UDPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_0
    throw v0

    .line 127
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 130
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v2, v0

    .line 131
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 132
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 133
    :cond_3
    long-to-int v0, v2

    .line 134
    new-array v2, v0, [B

    .line 135
    invoke-static {v1, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    const-string v0, "UDP read"

    invoke-static {v0, v2}, Lorg/xbill/DNS/UDPClient;->verboseLog(Ljava/lang/String;[B)V

    .line 137
    return-object v2
.end method

.method send([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 113
    const-string v1, "UDP write"

    invoke-static {v1, p1}, Lorg/xbill/DNS/UDPClient;->verboseLog(Ljava/lang/String;[B)V

    .line 114
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 115
    return-void
.end method
