.class public Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
.super Lorg/apache/mina/proxy/handlers/ProxyRequest;
.source "HttpProxyRequest.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field public final httpURI:Ljava/lang/String;

.field public final httpVerb:Ljava/lang/String;

.field private httpVersion:Ljava/lang/String;

.field private transient properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "httpURI"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "GET"

    const-string v1, "HTTP/1.0"

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "httpURI"    # Ljava/lang/String;
    .param p2, "httpVersion"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpVerb"    # Ljava/lang/String;
    .param p2, "httpURI"    # Ljava/lang/String;
    .param p3, "httpVersion"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "httpVerb"    # Ljava/lang/String;
    .param p2, "httpURI"    # Ljava/lang/String;
    .param p3, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 164
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;-><init>()V

    .line 165
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVerb:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    .line 168
    iput-object p4, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "endpointAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 81
    const-string v0, "HTTP/1.0"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "endpointAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "httpVersion"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "endpointAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/lang/String;",
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
    .line 105
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;-><init>()V

    .line 106
    const-string v0, "CONNECT"

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVerb:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    .line 115
    :goto_0
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    .line 117
    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public varargs checkRequiredProperties([Ljava/lang/String;)V
    .locals 7
    .param p1, "propNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 258
    .local v3, "propertyName":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->properties:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 259
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 263
    const-string v5, "property(ies) missing in request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    new-instance v5, Lorg/apache/mina/proxy/ProxyAuthException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :cond_2
    return-void
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized getHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 206
    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_3
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->logger:Lorg/slf4j/Logger;

    const-string v2, "Malformed URL"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final getHttpURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpVerb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVerb:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 0
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
    .line 234
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    .line 235
    return-void
.end method

.method public setHttpVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpVersion"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->properties:Ljava/util/Map;

    .line 249
    return-void
.end method

.method public toHttpString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, "hostHeaderFound":Z
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 280
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v1, :cond_1

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "host"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 286
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 287
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 292
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HTTP/1.1"

    if-ne v6, v7, :cond_3

    .line 294
    const-string v6, "Host: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_3
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
