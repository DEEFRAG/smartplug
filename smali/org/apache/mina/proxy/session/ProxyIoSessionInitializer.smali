.class public Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;
.super Ljava/lang/Object;
.source "ProxyIoSessionInitializer.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionInitializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/mina/core/future/ConnectFuture;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/session/IoSessionInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field private final wrappedSessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionInitializer;Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 0
    .param p2, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<TT;>;",
            "Lorg/apache/mina/proxy/session/ProxyIoSession;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;, "Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer<TT;>;"
    .local p1, "wrappedSessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->wrappedSessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;

    .line 44
    iput-object p2, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 45
    return-void
.end method


# virtual methods
.method public getProxySession()Lorg/apache/mina/proxy/session/ProxyIoSession;
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;, "Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer<TT;>;"
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-object v0
.end method

.method public initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/ConnectFuture;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;, "Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer<TT;>;"
    .local p2, "future":Lorg/apache/mina/core/future/ConnectFuture;, "TT;"
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->wrappedSessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->wrappedSessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/session/IoSessionInitializer;->initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 58
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    return-void
.end method

.method public bridge synthetic initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "x1"    # Lorg/apache/mina/core/future/IoFuture;

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;, "Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer<TT;>;"
    check-cast p2, Lorg/apache/mina/core/future/ConnectFuture;

    .end local p2    # "x1":Lorg/apache/mina/core/future/IoFuture;
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/ConnectFuture;)V

    return-void
.end method
