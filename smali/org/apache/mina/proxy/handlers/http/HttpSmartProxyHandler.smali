.class public Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
.source "HttpSmartProxyHandler.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

.field private requestSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->requestSent:Z

    .line 56
    return-void
.end method

.method private autoSelectAuthHandler(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 10
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 103
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v7

    const-string v8, "Proxy-Authenticate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 104
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    .line 106
    .local v5, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 107
    :cond_0
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7, v5}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    .line 186
    :cond_1
    :goto_0
    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-nez v7, :cond_e

    .line 187
    new-instance v7, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown authentication mechanism(s): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 110
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getPreferedOrder()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_8

    .line 112
    const/4 v3, -0x1

    .line 116
    .local v3, "method":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "proxyAuthHeader":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 119
    const-string v7, "ntlm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 120
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v3

    .line 130
    .end local v4    # "proxyAuthHeader":Ljava/lang/String;
    :cond_4
    if-eq v3, v9, :cond_5

    .line 132
    :try_start_0
    invoke-static {v3, v5}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(ILorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_5
    :goto_2
    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-nez v7, :cond_1

    .line 140
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7, v5}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    goto :goto_0

    .line 122
    .restart local v4    # "proxyAuthHeader":Ljava/lang/String;
    :cond_6
    const-string v7, "digest"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v7

    if-eq v3, v7, :cond_7

    .line 124
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v3

    goto :goto_1

    .line 125
    :cond_7
    const-string v7, "basic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-ne v3, v9, :cond_3

    .line 126
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v3

    goto :goto_1

    .line 134
    .end local v4    # "proxyAuthHeader":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->logger:Lorg/slf4j/Logger;

    const-string v8, "Following exception occured:"

    invoke-interface {v7, v8, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 145
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "method":I
    :cond_8
    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getPreferedOrder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    .line 147
    .local v3, "method":Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-nez v7, :cond_1

    .line 151
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v3, v7, :cond_a

    .line 152
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7, v5}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    goto/16 :goto_0

    .line 157
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 158
    .restart local v4    # "proxyAuthHeader":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 162
    :try_start_1
    const-string v7, "basic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v3, v7, :cond_c

    .line 164
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7, v5}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 178
    :catch_1
    move-exception v0

    .line 179
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->logger:Lorg/slf4j/Logger;

    const-string v8, "Following exception occured:"

    invoke-interface {v7, v8, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 167
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_c
    :try_start_2
    const-string v7, "digest"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v3, v7, :cond_d

    .line 169
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7, v5}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    goto :goto_3

    .line 172
    :cond_d
    const-string v7, "ntlm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v3, v7, :cond_b

    .line 174
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v7, v5}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 190
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "method":Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    .end local v4    # "proxyAuthHeader":Ljava/lang/String;
    :cond_e
    return-void
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->logger:Lorg/slf4j/Logger;

    const-string v3, " doHandshake()"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    invoke-virtual {v2, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 91
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->requestSent:Z

    if-eqz v2, :cond_1

    .line 72
    new-instance v2, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v3, "Authentication request already sent"

    invoke-direct {v2, v3}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_1
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->logger:Lorg/slf4j/Logger;

    const-string v3, "  sending HTTP request"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 81
    .local v1, "req":Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 84
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1
    invoke-static {v0}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    .line 85
    invoke-virtual {v1, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    .line 88
    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->requestSent:Z

    goto :goto_0

    .line 81
    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->isHandshakeComplete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "close"

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Proxy-Connection"

    invoke-static {v1, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "close"

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Connection"

    invoke-static {v1, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setReconnectionNeeded(Z)V

    .line 210
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 211
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-nez v0, :cond_2

    .line 212
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->autoSelectAuthHandler(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    .line 214
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    .line 219
    return-void

    .line 216
    :cond_3
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unexpected response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received from proxy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
