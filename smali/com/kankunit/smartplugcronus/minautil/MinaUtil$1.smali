.class Lcom/kankunit/smartplugcronus/minautil/MinaUtil$1;
.super Ljava/lang/Thread;
.source "MinaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fMinaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private final synthetic val$fMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$1;->val$fMinaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$1;->val$fMsg:Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 22
    :try_start_0
    new-instance v2, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-direct {v2}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;-><init>()V

    .line 24
    .local v2, "connector":Lorg/apache/mina/transport/socket/nio/NioSocketConnector;
    const-wide/16 v4, 0x2328

    invoke-virtual {v2, v4, v5}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->setConnectTimeoutMillis(J)V

    .line 25
    new-instance v1, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;-><init>(Ljava/nio/charset/Charset;)V

    .line 26
    .local v1, "codecFactory":Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;
    const v4, 0x64000

    invoke-virtual {v1, v4}, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->setDecoderMaxLineLength(I)V

    .line 27
    const v4, 0x64000

    invoke-virtual {v1, v4}, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->setEncoderMaxLineLength(I)V

    .line 28
    invoke-virtual {v2}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v4

    const-string v5, "codec"

    new-instance v6, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    invoke-direct {v6, v1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFactory;)V

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 30
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$1;->val$fMinaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-virtual {v2, v4}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->setHandler(Lorg/apache/mina/core/service/IoHandler;)V

    .line 32
    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "kankun-smartplug.com"

    const/16 v6, 0x23a3

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v2, v4}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->connect(Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    .line 33
    .local v0, "cf":Lorg/apache/mina/core/future/ConnectFuture;
    invoke-interface {v0}, Lorg/apache/mina/core/future/ConnectFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;

    .line 34
    invoke-interface {v0}, Lorg/apache/mina/core/future/ConnectFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$1;->val$fMsg:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 35
    invoke-interface {v0}, Lorg/apache/mina/core/future/ConnectFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/session/IoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;

    .line 36
    invoke-virtual {v2}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->dispose()V

    .line 37
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "cf":Lorg/apache/mina/core/future/ConnectFuture;
    .end local v1    # "codecFactory":Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;
    .end local v2    # "connector":Lorg/apache/mina/transport/socket/nio/NioSocketConnector;
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v3

    .line 39
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
