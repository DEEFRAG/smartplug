.class public Lorg/apache/mina/proxy/session/ProxyIoSession;
.super Ljava/lang/Object;
.source "ProxyIoSession.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field public static final PROXY_SESSION:Ljava/lang/String;


# instance fields
.field private authenticationFailed:Z

.field private charsetName:Ljava/lang/String;

.field private connector:Lorg/apache/mina/proxy/ProxyConnector;

.field private eventQueue:Lorg/apache/mina/proxy/event/IoSessionEventQueue;

.field private handler:Lorg/apache/mina/proxy/ProxyLogicHandler;

.field private preferedOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;",
            ">;"
        }
    .end annotation
.end field

.field private proxyAddress:Ljava/net/InetSocketAddress;

.field private proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

.field private reconnectionNeeded:Z

.field private request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

.field private session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/ProxyConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ProxySession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lorg/apache/mina/proxy/handlers/ProxyRequest;)V
    .locals 1
    .param p1, "proxyAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/ProxyRequest;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyAddress:Ljava/net/InetSocketAddress;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->reconnectionNeeded:Z

    .line 101
    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->eventQueue:Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    .line 115
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setProxyAddress(Ljava/net/InetSocketAddress;)V

    .line 116
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setRequest(Lorg/apache/mina/proxy/handlers/ProxyRequest;)V

    .line 117
    return-void
.end method

.method private setProxyAddress(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "proxyAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxyAddress object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyAddress:Ljava/net/InetSocketAddress;

    .line 253
    return-void
.end method

.method private setRequest(Lorg/apache/mina/proxy/handlers/ProxyRequest;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/ProxyRequest;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    .line 197
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->charsetName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 289
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->charsetName:Ljava/lang/String;

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnector()Lorg/apache/mina/proxy/ProxyConnector;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->connector:Lorg/apache/mina/proxy/ProxyConnector;

    return-object v0
.end method

.method public getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->eventQueue:Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->handler:Lorg/apache/mina/proxy/ProxyLogicHandler;

    return-object v0
.end method

.method public getPreferedOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->preferedOrder:Ljava/util/List;

    return-object v0
.end method

.method public getProxyAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    return-object v0
.end method

.method public getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    return-object v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public isAuthenticationFailed()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->authenticationFailed:Z

    return v0
.end method

.method public isReconnectionNeeded()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->reconnectionNeeded:Z

    return v0
.end method

.method public setAuthenticationFailed(Z)V
    .locals 0
    .param p1, "authenticationFailed"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->authenticationFailed:Z

    .line 318
    return-void
.end method

.method public setCharsetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->charsetName:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setConnector(Lorg/apache/mina/proxy/ProxyConnector;)V
    .locals 0
    .param p1, "connector"    # Lorg/apache/mina/proxy/ProxyConnector;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->connector:Lorg/apache/mina/proxy/ProxyConnector;

    .line 233
    return-void
.end method

.method public setHandler(Lorg/apache/mina/proxy/ProxyLogicHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/mina/proxy/ProxyLogicHandler;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->handler:Lorg/apache/mina/proxy/ProxyLogicHandler;

    .line 159
    return-void
.end method

.method public setPreferedOrder(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "preferedOrder":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;>;"
    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->preferedOrder:Ljava/util/List;

    .line 143
    return-void
.end method

.method public setProxyFilter(Lorg/apache/mina/proxy/filter/ProxyFilter;)V
    .locals 0
    .param p1, "proxyFilter"    # Lorg/apache/mina/proxy/filter/ProxyFilter;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    .line 177
    return-void
.end method

.method public setReconnectionNeeded(Z)V
    .locals 0
    .param p1, "reconnectionNeeded"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->reconnectionNeeded:Z

    .line 275
    return-void
.end method

.method public setSession(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 214
    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->session:Lorg/apache/mina/core/session/IoSession;

    .line 215
    return-void
.end method
