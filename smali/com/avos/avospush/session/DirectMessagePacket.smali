.class public Lcom/avos/avospush/session/DirectMessagePacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "DirectMessagePacket.java"


# instance fields
.field private id:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private roomId:Ljava/lang/String;

.field private toPeerIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 24
    const-string v0, "direct"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setCmd(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected genDataMap()Ljava/util/Map;
    .locals 3
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
    .line 70
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 72
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "msg"

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getToPeerIds()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getToPeerIds()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "toPeerIds"

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getToPeerIds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const-string v1, "roomId"

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->isTransient()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "transient"

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->isTransient()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    const-string v1, "id"

    iget-object v2, p0, Lcom/avos/avospush/session/DirectMessagePacket;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_3
    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getToPeerIds()Ljava/util/Collection;
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
    .line 36
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->toPeerIds:Ljava/util/Collection;

    return-object v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->transi:Z

    return v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->roomId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->id:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->msg:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setToPeerIds(Ljava/util/Collection;)V
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
    .line 40
    .local p1, "toPeerIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->toPeerIds:Ljava/util/Collection;

    .line 41
    return-void
.end method

.method public setTransient(Z)V
    .locals 0
    .param p1, "transi"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->transi:Z

    .line 49
    return-void
.end method
