.class public Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;
.super Ljava/lang/Object;
.source "ItemProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 37
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 42
    if-ne v1, v8, :cond_0

    .line 44
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Item;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 53
    const/4 v0, 0x0

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    .line 58
    if-ne v1, v8, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 59
    const/4 v0, 0x1

    .line 63
    :cond_2
    :goto_2
    if-nez v0, :cond_1

    .line 64
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 60
    :cond_3
    const/4 v7, 0x2

    if-ne v1, v7, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v7

    if-nez v7, :cond_2

    .line 61
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 66
    :cond_5
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/SimplePayload;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v5, v3}, Lorg/jivesoftware/smackx/pubsub/SimplePayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 70
    :cond_6
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;

    invoke-static {v4, v5, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0
.end method
