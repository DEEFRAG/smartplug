.class public Lcom/avos/avospush/session/SessionControlPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "SessionControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/SessionControlPacket$SessionControlOp;
    }
.end annotation


# instance fields
.field private nonce:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private sessionPeerIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 35
    const-string v0, "session"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/SessionControlPacket;->setCmd(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 3
    .param p0, "selfId"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "signature"    # Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            ")",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/avos/avospush/session/SessionControlPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/SessionControlPacket;-><init>()V

    .line 108
    .local v0, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setAppId(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/SessionControlPacket;->setPeerId(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/SessionControlPacket;->setSessionPeerIds(Ljava/util/Collection;)V

    .line 113
    :cond_0
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/SessionControlPacket;->setOp(Ljava/lang/String;)V

    .line 115
    if-eqz p3, :cond_2

    .line 116
    const-string v1, "open"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "add"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    :cond_1
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setSignature(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setNonce(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avospush/session/SessionControlPacket;->setTimestamp(J)V

    .line 124
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected genDataMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 92
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "op"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "sessionPeerIds"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "s"

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "t"

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionPeerIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->timestamp:J

    return-wide v0
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->nonce:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSessionPeerIds(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "sessionPeerIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    .line 86
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->signature:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->timestamp:J

    .line 62
    return-void
.end method
