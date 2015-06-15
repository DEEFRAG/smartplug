.class public Lorg/apache/mina/core/session/ExpiringSessionRecycler;
.super Ljava/lang/Object;
.source "ExpiringSessionRecycler.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionRecycler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/session/ExpiringSessionRecycler$1;,
        Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;
    }
.end annotation


# instance fields
.field private mapExpirer:Lorg/apache/mina/util/ExpiringMap$Expirer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/util/ExpiringMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">.Expirer;"
        }
    .end annotation
.end field

.field private sessionMap:Lorg/apache/mina/util/ExpiringMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/util/ExpiringMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;-><init>(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeToLive"    # I

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;-><init>(II)V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "timeToLive"    # I
    .param p2, "expirationInterval"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/mina/util/ExpiringMap;

    invoke-direct {v0, p1, p2}, Lorg/apache/mina/util/ExpiringMap;-><init>(II)V

    iput-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    .line 53
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap;->getExpirer()Lorg/apache/mina/util/ExpiringMap$Expirer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->mapExpirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    .line 54
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    new-instance v1, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;-><init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;Lorg/apache/mina/core/session/ExpiringSessionRecycler$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/ExpiringMap;->addExpirationListener(Lorg/apache/mina/util/ExpirationListener;)V

    .line 55
    return-void
.end method

.method private generateKey(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v0, "key":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object v0
.end method

.method private generateKey(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/Object;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 97
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->generateKey(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExpirationInterval()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap;->getExpirationInterval()I

    move-result v0

    return v0
.end method

.method public getTimeToLive()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public put(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 58
    iget-object v1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->mapExpirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-virtual {v1}, Lorg/apache/mina/util/ExpiringMap$Expirer;->startExpiringIfNotStarted()V

    .line 60
    invoke-direct {p0, p1}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->generateKey(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExpiringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v1, v0, p1}, Lorg/apache/mina/util/ExpiringMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    return-void
.end method

.method public recycle(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->generateKey(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/ExpiringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-direct {p0, p1}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->generateKey(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/ExpiringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public setExpirationInterval(I)V
    .locals 1
    .param p1, "expirationInterval"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/ExpiringMap;->setExpirationInterval(I)V

    .line 90
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 1
    .param p1, "timeToLive"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/ExpiringMap;->setTimeToLive(I)V

    .line 94
    return-void
.end method

.method public stopExpiring()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->mapExpirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->stopExpiring()V

    .line 78
    return-void
.end method
