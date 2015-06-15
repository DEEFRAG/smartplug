.class public Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;
.super Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.source "Socks5LogicHandler.java"


# static fields
.field private static final GSS_CONTEXT:Ljava/lang/String;

.field private static final GSS_TOKEN:Ljava/lang/String;

.field private static final HANDSHAKE_STEP:Ljava/lang/String;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SELECTED_AUTH_METHOD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SelectedAuthMethod"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".HandshakeStep"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".GSSContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".GSSToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 3
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 82
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 186
    .local v1, "method":B
    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 190
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_1

    .line 199
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getUserName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 200
    .local v3, "user":[B
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPassword()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 201
    .local v2, "pwd":[B
    array-length v4, v3

    add-int/lit8 v4, v4, 0x3

    array-length v5, v2

    add-int/2addr v4, v5

    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 203
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 204
    array-length v4, v3

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 205
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 206
    array-length v4, v2

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 207
    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 14
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v10

    sget-object v11, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v10, v11}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ietf/jgss/GSSContext;

    .line 225
    .local v2, "ctx":Lorg/ietf/jgss/GSSContext;
    if-nez v2, :cond_2

    .line 227
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v6

    .line 228
    .local v6, "manager":Lorg/ietf/jgss/GSSManager;
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getServiceKerberosName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v8

    .line 230
    .local v8, "serverName":Lorg/ietf/jgss/GSSName;
    new-instance v4, Lorg/ietf/jgss/Oid;

    const-string v10, "1.2.840.113554.1.2.2"

    invoke-direct {v4, v10}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 232
    .local v4, "krb5OID":Lorg/ietf/jgss/Oid;
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 233
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "Available mechs:"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v6}, Lorg/ietf/jgss/GSSManager;->getMechs()[Lorg/ietf/jgss/Oid;

    move-result-object v0

    .local v0, "arr$":[Lorg/ietf/jgss/Oid;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v7, v0, v3

    .line 235
    .local v7, "o":Lorg/ietf/jgss/Oid;
    invoke-virtual {v7, v4}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 236
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "Found Kerberos V OID available"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 238
    :cond_0
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "{} with oid = {}"

    invoke-virtual {v6, v7}, Lorg/ietf/jgss/GSSManager;->getNamesForMech(Lorg/ietf/jgss/Oid;)[Lorg/ietf/jgss/Oid;

    move-result-object v12

    invoke-interface {v10, v11, v12, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "arr$":[Lorg/ietf/jgss/Oid;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "o":Lorg/ietf/jgss/Oid;
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v4, v10, v11}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v2

    .line 246
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    .line 247
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Lorg/ietf/jgss/GSSContext;->requestConf(Z)V

    .line 248
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Lorg/ietf/jgss/GSSContext;->requestInteg(Z)V

    .line 250
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v10

    sget-object v11, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v10, v11, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .end local v4    # "krb5OID":Lorg/ietf/jgss/Oid;
    .end local v6    # "manager":Lorg/ietf/jgss/GSSManager;
    .end local v8    # "serverName":Lorg/ietf/jgss/GSSName;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v10

    sget-object v11, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v10, v11}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-object v9, v10

    check-cast v9, [B

    .line 254
    .local v9, "token":[B
    if-eqz v9, :cond_3

    .line 255
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "  Received Token[{}] = {}"

    array-length v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    :cond_3
    const/4 v1, 0x0

    .line 260
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {v2}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v10

    if-nez v10, :cond_5

    .line 262
    if-nez v9, :cond_4

    .line 263
    const/16 v10, 0x20

    new-array v9, v10, [B

    .line 266
    :cond_4
    const/4 v10, 0x0

    array-length v11, v9

    invoke-interface {v2, v9, v10, v11}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object v9

    .line 270
    if-eqz v9, :cond_5

    .line 271
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "  Sending Token[{}] = {}"

    array-length v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v10

    sget-object v11, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v10, v11, v9}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    array-length v10, v9

    add-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 276
    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_0

    invoke-virtual {v1, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 280
    array-length v10, v9

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lorg/apache/mina/proxy/utils/ByteUtilities;->intToNetworkByteOrder(II)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 281
    invoke-virtual {v1, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 285
    :cond_5
    return-object v1

    .line 276
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    .prologue
    .line 106
    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    array-length v2, v2

    int-to-byte v1, v2

    .line 107
    .local v1, "nbMethods":B
    add-int/lit8 v2, v1, 0x2

    invoke-static {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 109
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 110
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 111
    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 113
    return-object v0
.end method

.method private encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v4, 0x6

    .line 127
    .local v4, "len":I
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 128
    .local v1, "adr":Ljava/net/InetSocketAddress;
    const/4 v0, 0x0

    .line 129
    .local v0, "addressType":B
    const/4 v3, 0x0

    .line 131
    .local v3, "host":[B
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_1

    .line 133
    add-int/lit8 v4, v4, 0x10

    .line 134
    const/4 v0, 0x4

    .line 152
    :cond_0
    :goto_0
    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 154
    .local v2, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 155
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getCommandCode()B

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 156
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 157
    invoke-virtual {v2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 159
    if-nez v3, :cond_5

    .line 160
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 166
    :goto_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPort()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 168
    return-object v2

    .line 135
    .end local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 136
    add-int/lit8 v4, v4, 0x4

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ASCII"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 143
    :goto_2
    if-eqz v3, :cond_4

    .line 144
    array-length v5, v3

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 145
    const/4 v0, 0x3

    goto :goto_0

    .line 140
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 147
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "SocksProxyRequest object has no suitable endpoint information"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    .restart local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_5
    array-length v5, v3

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 163
    invoke-virtual {v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1
.end method

.method private writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .param p3, "step"    # I

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez p3, :cond_2

    .line 302
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 312
    :cond_0
    :goto_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 313
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 316
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 317
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;

    .line 322
    :goto_1
    return-void

    .line 303
    :cond_2
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 305
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    if-nez v0, :cond_0

    .line 308
    const/4 p3, 0x2

    goto :goto_0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "Unable to send Socks request: "

    invoke-virtual {p0, v2, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected closeSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ietf/jgss/GSSContext;

    .line 483
    .local v0, "ctx":Lorg/ietf/jgss/GSSContext;
    if-eqz v0, :cond_0

    .line 485
    :try_start_0
    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->closeSession(Ljava/lang/String;)V

    .line 493
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Lorg/ietf/jgss/GSSException;
    invoke-virtual {v1}, Lorg/ietf/jgss/GSSException;->printStackTrace()V

    .line 488
    invoke-super {p0, p1, v1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    .locals 15
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "step"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 365
    const/4 v4, 0x2

    .line 366
    .local v4, "len":I
    if-nez p3, :cond_7

    .line 368
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v5

    .line 370
    .local v5, "method":B
    const/4 v11, -0x1

    if-ne v5, v11, :cond_0

    .line 371
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "No acceptable authentication method to use with the socks proxy server"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 376
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    new-instance v13, Ljava/lang/Byte;

    invoke-direct {v13, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-interface {v11, v12, v13}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .end local v5    # "method":B
    :cond_1
    :goto_0
    if-lez v4, :cond_2

    .line 449
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v11

    add-int/2addr v11, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 454
    :cond_2
    const/4 v3, 0x0

    .line 455
    .local v3, "isAuthenticating":Z
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_4

    .line 456
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v11, v12}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 458
    .restart local v5    # "method":B
    const/4 v11, 0x1

    if-ne v5, v11, :cond_4

    .line 459
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v11, v12}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ietf/jgss/GSSContext;

    .line 461
    .local v2, "ctx":Lorg/ietf/jgss/GSSContext;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v11

    if-nez v11, :cond_4

    .line 462
    :cond_3
    const/4 v3, 0x1

    .line 467
    .end local v2    # "ctx":Lorg/ietf/jgss/GSSContext;
    .end local v5    # "method":B
    :cond_4
    if-nez v3, :cond_5

    .line 468
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 472
    .end local v3    # "isAuthenticating":Z
    :cond_6
    :goto_1
    return-void

    .line 378
    :cond_7
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_c

    .line 380
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v11, v12}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 383
    .restart local v5    # "method":B
    const/4 v11, 0x1

    if-ne v5, v11, :cond_b

    .line 384
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    .line 386
    .local v6, "oldPos":I
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    .line 387
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Authentication failed"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 389
    :cond_8
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v11

    const/16 v12, 0xff

    if-ne v11, v12, :cond_9

    .line 390
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Authentication failed: GSS API Security Context Failure"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 394
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_a

    .line 395
    const/4 v11, 0x2

    new-array v8, v11, [B

    .line 396
    .local v8, "size":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 397
    invoke-static {v8}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([B)I

    move-result v7

    .line 398
    .local v7, "s":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    if-lt v11, v7, :cond_6

    .line 399
    new-array v10, v7, [B

    .line 400
    .local v10, "token":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 401
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v11, v12, v10}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const/4 v4, 0x0

    .line 403
    goto/16 :goto_0

    .line 408
    .end local v7    # "s":I
    .end local v8    # "size":[B
    .end local v10    # "token":[B
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 411
    .end local v6    # "oldPos":I
    :cond_b
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v11

    if-eqz v11, :cond_1

    .line 412
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Authentication failed"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 415
    .end local v5    # "method":B
    :cond_c
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v0, v11, :cond_1

    .line 417
    const/4 v11, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v1

    .line 418
    .local v1, "addressType":B
    const/4 v4, 0x6

    .line 419
    const/4 v11, 0x4

    if-ne v1, v11, :cond_d

    .line 420
    add-int/lit8 v4, v4, 0x10

    .line 429
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    if-lt v11, v4, :cond_6

    .line 431
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v9

    .line 432
    .local v9, "status":B
    sget-object v11, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v12, "  response status: {}"

    invoke-static {v9}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->getReplyCodeAsString(B)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    if-nez v9, :cond_10

    .line 436
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v11

    add-int/2addr v11, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 437
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->setHandshakeComplete()V

    goto/16 :goto_1

    .line 421
    .end local v9    # "status":B
    :cond_d
    const/4 v11, 0x1

    if-ne v1, v11, :cond_e

    .line 422
    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    .line 423
    :cond_e
    const/4 v11, 0x3

    if-ne v1, v11, :cond_f

    .line 424
    const/4 v11, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    goto :goto_2

    .line 426
    :cond_f
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Unknwon address type"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 441
    .restart local v9    # "status":B
    :cond_10
    new-instance v11, Ljava/lang/Exception;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Proxy handshake failed - Code: 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    aput-byte v9, v13, v14

    invoke-static {v13}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public declared-synchronized messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 334
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 337
    .local v1, "step":I
    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    if-eq v2, v5, :cond_1

    .line 339
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wrong socks version running on server"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .end local v1    # "step":I
    :catch_0
    move-exception v0

    .line 352
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Proxy handshake failed: "

    invoke-virtual {p0, v2, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 343
    .restart local v1    # "step":I
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :cond_2
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-lt v2, v4, :cond_3

    .line 346
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 334
    .end local v1    # "step":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 347
    .restart local v1    # "step":I
    :cond_3
    if-ne v1, v4, :cond_0

    :try_start_3
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 349
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
