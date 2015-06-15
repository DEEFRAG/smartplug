.class public abstract Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.super Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.source "AbstractSocksLogicHandler.java"


# instance fields
.field protected final request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;


# direct methods
.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 47
    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    .line 48
    return-void
.end method
