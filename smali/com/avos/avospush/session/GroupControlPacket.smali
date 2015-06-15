.class public Lcom/avos/avospush/session/GroupControlPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "GroupControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/GroupControlPacket$GroupControlOp;
    }
.end annotation


# instance fields
.field private groupPeerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private roomId:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 79
    const-string v0, "room"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/GroupControlPacket;->setCmd(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/GroupControlPacket;
    .locals 3
    .param p0, "selfId"    # Ljava/lang/String;
    .param p1, "groupId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "signature"    # Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            ")",
            "Lcom/avos/avospush/session/GroupControlPacket;"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "targetPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/avos/avospush/session/GroupControlPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/GroupControlPacket;-><init>()V

    .line 105
    .local v0, "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/GroupControlPacket;->setAppId(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/GroupControlPacket;->setPeerId(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/GroupControlPacket;->setGroupPeerIds(Ljava/util/List;)V

    .line 108
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/GroupControlPacket;->setOp(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/GroupControlPacket;->setGroupId(Ljava/lang/String;)V

    .line 111
    if-eqz p4, :cond_0

    .line 112
    const-string v1, "leave"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p4}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/GroupControlPacket;->setSignature(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p4}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/GroupControlPacket;->setNonce(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p4}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avospush/session/GroupControlPacket;->setTimestamp(J)V

    .line 118
    :cond_0
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
    .line 84
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 85
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "op"

    iget-object v2, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "roomId"

    iget-object v2, p0, Lcom/avos/avospush/session/GroupControlPacket;->roomId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "invite"

    iget-object v2, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kick"

    iget-object v2, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    const-string v1, "roomPeerIds"

    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getGroupPeerIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 94
    const-string v1, "s"

    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "t"

    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_2
    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupPeerIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->groupPeerIds:Ljava/util/List;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->timestamp:J

    return-wide v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->roomId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setGroupPeerIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "roomPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->groupPeerIds:Ljava/util/List;

    .line 76
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->nonce:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->signature:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->timestamp:J

    .line 52
    return-void
.end method
