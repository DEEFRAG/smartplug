.class Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOpenSidFilter;
.super Lorg/jivesoftware/smack/filter/PacketTypeFilter;
.source "IBBTransferNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IBBOpenSidFilter"
.end annotation


# instance fields
.field private sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    const-class v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StreamID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOpenSidFilter;->sessionID:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    check-cast p1, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    .line 134
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOpenSidFilter;->sessionID:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 137
    :cond_0
    return v0
.end method
