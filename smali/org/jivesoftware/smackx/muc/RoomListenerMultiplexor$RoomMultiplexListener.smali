.class Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;
.super Ljava/lang/Object;
.source "RoomListenerMultiplexor.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoomMultiplexListener"
.end annotation


# instance fields
.field private roomListenersByAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->roomListenersByAddress:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$1;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addRoom(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;)V
    .locals 2

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->roomListenersByAddress:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 201
    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->roomListenersByAddress:Ljava/util/Map;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;

    .line 208
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public removeRoom(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->roomListenersByAddress:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
