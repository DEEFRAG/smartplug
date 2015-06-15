.class public Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;
.super Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.source "Socks4LogicHandler.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 0
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 47
    return-void
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .prologue
    .line 55
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)V

    .line 59
    return-void
.end method

.method protected handleResponse(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 7
    .param p1, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    invoke-virtual {p1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v0

    .line 140
    .local v0, "first":B
    if-eqz v0, :cond_0

    .line 141
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Socks response seems to be malformed"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_0
    invoke-virtual {p1, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v1

    .line 147
    .local v1, "status":B
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 149
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    .line 150
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->setHandshakeComplete()V

    .line 156
    return-void

    .line 152
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy handshake failed - Code: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v6, [B

    aput-byte v1, v4, v5

    invoke-static {v4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->getReplyCodeAsString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 121
    invoke-virtual {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->handleResponse(Lorg/apache/mina/core/buffer/IoBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Proxy handshake failed: "

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v6

    sget-object v7, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->FAKE_IP:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 73
    .local v3, "isV4ARequest":Z
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getUserName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ASCII"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 74
    .local v5, "userID":[B
    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ASCII"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 77
    .local v2, "host":[B
    :goto_0
    array-length v6, v5

    add-int/lit8 v4, v6, 0x9

    .line 79
    .local v4, "len":I
    if-eqz v3, :cond_0

    .line 80
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    .line 83
    :cond_0
    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 85
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v6

    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 86
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getCommandCode()B

    move-result v6

    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 87
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPort()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 88
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 89
    invoke-virtual {v0, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 90
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 92
    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 94
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 97
    :cond_1
    if-eqz v3, :cond_3

    .line 98
    sget-object v6, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v7, "  sending SOCKS4a request"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 103
    :goto_1
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 104
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;

    .line 108
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v2    # "host":[B
    .end local v3    # "isV4ARequest":Z
    .end local v4    # "len":I
    .end local v5    # "userID":[B
    :goto_2
    return-void

    .line 74
    .restart local v3    # "isV4ARequest":Z
    .restart local v5    # "userID":[B
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 100
    .restart local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v2    # "host":[B
    .restart local v4    # "len":I
    :cond_3
    sget-object v6, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v7, "  sending SOCKS4 request"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v2    # "host":[B
    .end local v3    # "isV4ARequest":Z
    .end local v4    # "len":I
    .end local v5    # "userID":[B
    :catch_0
    move-exception v1

    .line 106
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "Unable to send Socks request: "

    invoke-virtual {p0, v6, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
