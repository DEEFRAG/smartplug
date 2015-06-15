.class public Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.source "HttpNTLMAuthLogicHandler.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private challengePacket:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 4
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    .line 62
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "USER"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "PWD"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "DOMAIN"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "WORKSTATION"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->checkRequiredProperties([Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;
    .locals 5
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .prologue
    .line 139
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Proxy-Authenticate"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 141
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "s":Ljava/lang/String;
    const-string v3, "NTLM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 14
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v5, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, " doHandshake()"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 76
    iget v5, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    if-nez v5, :cond_0

    .line 77
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "NTLM Challenge packet not received"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_0
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast v10, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 81
    .local v10, "req":Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v8

    .line 84
    .local v8, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v5

    const-string v6, "DOMAIN"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "domain":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v5

    const-string v6, "WORKSTATION"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 89
    .local v4, "workstation":Ljava/lang/String;
    iget v5, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    if-lez v5, :cond_2

    .line 90
    sget-object v5, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "  sending NTLM challenge response"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 92
    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    invoke-static {v5}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractChallengeFromType2Message([B)[B

    move-result-object v2

    .line 94
    .local v2, "challenge":[B
    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    invoke-static {v5}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v11

    .line 97
    .local v11, "serverFlags":I
    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v5

    const-string v6, "USER"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v5

    const-string v6, "PWD"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, "password":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->createType3Message(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B

    move-result-object v7

    .line 106
    .local v7, "authenticationPacket":[B
    const-string v5, "Proxy-Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NTLM "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v12, Ljava/lang/String;

    invoke-static {v7}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    invoke-static {v8, v5, v6, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "challenge":[B
    .end local v7    # "authenticationPacket":[B
    .end local v11    # "serverFlags":I
    :goto_1
    invoke-static {v8}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    .line 127
    invoke-virtual {v10, v8}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    .line 129
    invoke-virtual {p0, p1, v10}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 130
    iget v5, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    .line 131
    return-void

    .line 81
    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "workstation":Ljava/lang/String;
    .end local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_0

    .line 113
    .restart local v3    # "domain":Ljava/lang/String;
    .restart local v4    # "workstation":Ljava/lang/String;
    .restart local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    sget-object v5, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "  sending NTLM negotiation packet"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 115
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v3, v5, v6}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->createType1Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B

    move-result-object v9

    .line 117
    .local v9, "negotiationPacket":[B
    const-string v5, "Proxy-Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NTLM "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v12, Ljava/lang/String;

    invoke-static {v9}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    invoke-static {v8, v5, v6, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 5
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 156
    iget v2, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    if-nez v2, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "challengeResponse":Ljava/lang/String;
    iput v4, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    .line 160
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 169
    .end local v0    # "challengeResponse":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    if-ne v2, v4, :cond_4

    .line 172
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0    # "challengeResponse":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_3

    .line 175
    :cond_2
    new-instance v2, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v3, "Unexpected error while reading server challenge !"

    invoke-direct {v2, v3}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_3
    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v3}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v2, 0x2

    iput v2, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v3, "Unable to decode the base64 encoded NTLM challenge"

    invoke-direct {v2, v3, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 189
    .end local v0    # "challengeResponse":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v2, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unexpected response code ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
