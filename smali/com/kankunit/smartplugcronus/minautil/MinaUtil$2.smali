.class Lcom/kankunit/smartplugcronus/minautil/MinaUtil$2;
.super Ljava/lang/Thread;
.source "MinaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsgWithNoResponse(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$2;->val$fMinaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$2;->val$fMsg:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-direct {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;-><init>()V

    .line 55
    .local v1, "connector":Lorg/apache/mina/transport/socket/nio/NioSocketConnector;
    const-wide/16 v3, 0x2328

    invoke-virtual {v1, v3, v4}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->setConnectTimeoutMillis(J)V

    .line 56
    invoke-virtual {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "codec"

    new-instance v5, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    new-instance v6, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;-><init>(Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFactory;)V

    invoke-virtual {v3, v4, v5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 57
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$2;->val$fMinaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-virtual {v1, v3}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->setHandler(Lorg/apache/mina/core/service/IoHandler;)V

    .line 59
    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "kankun-smartplug.com"

    const/16 v5, 0x23a3

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v1, v3}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->connect(Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    .line 60
    .local v0, "cf":Lorg/apache/mina/core/future/ConnectFuture;
    invoke-interface {v0}, Lorg/apache/mina/core/future/ConnectFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;

    .line 61
    invoke-interface {v0}, Lorg/apache/mina/core/future/ConnectFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$2;->val$fMsg:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 62
    invoke-virtual {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "cf":Lorg/apache/mina/core/future/ConnectFuture;
    .end local v1    # "connector":Lorg/apache/mina/transport/socket/nio/NioSocketConnector;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
