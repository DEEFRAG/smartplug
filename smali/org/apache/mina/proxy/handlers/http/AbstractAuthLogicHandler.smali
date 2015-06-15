.class public abstract Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.super Ljava/lang/Object;
.source "AbstractAuthLogicHandler.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field protected request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

.field protected step:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 2
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    .line 67
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 68
    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    .line 70
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    instance-of v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request parameter should be a non null HttpProxyRequest instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    return-void
.end method

.method public static addKeepAliveHeaders(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .line 115
    const-string v0, "Keep-Alive"

    const-string v1, "300"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    const-string v0, "Proxy-Connection"

    const-string v1, "keep-Alive"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    return-void
.end method


# virtual methods
.method public abstract doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation
.end method

.method public abstract handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation
.end method

.method protected writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v1, "  sending HTTP request"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 107
    return-void
.end method
