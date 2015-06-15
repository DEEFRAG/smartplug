.class public Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor;
.super Ljava/lang/Object;
.source "DeafOccupantInterceptor.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$1;,
        Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3

    .prologue
    .line 48
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 50
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;-><init>(Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$1;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 55
    :cond_0
    return-void
.end method
