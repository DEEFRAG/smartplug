.class public Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;
.super Ljava/lang/Object;
.source "DataPacketProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, ""

    const-string v1, "sid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, ""

    const-string v2, "seq"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v4
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    .line 41
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;)V

    .line 42
    return-object v1
.end method
