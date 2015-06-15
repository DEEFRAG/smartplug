.class public Lcom/avos/avospush/session/SessionAckPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "SessionAckPacket.java"


# static fields
.field public static final ACK_KEY:Ljava/lang/String; = "c"


# instance fields
.field id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 17
    const-string v0, "ack"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/SessionAckPacket;->setCmd(Ljava/lang/String;)V

    .line 18
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
    .line 26
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 28
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/avos/avospush/session/SessionAckPacket;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    const-string v1, "id"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionAckPacket;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    return-object v0
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/avos/avospush/session/SessionAckPacket;->id:Ljava/lang/String;

    .line 22
    return-void
.end method
