.class public Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;
.super Ljava/lang/Object;
.source "DiscoverItemsProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 36
    new-instance v5, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 37
    const/4 v4, 0x0

    .line 39
    const-string v3, ""

    .line 40
    const-string v2, ""

    .line 41
    const-string v1, ""

    .line 42
    const-string v0, ""

    .line 43
    const-string v6, ""

    const-string v7, "node"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_0
    if-nez v4, :cond_3

    .line 45
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 47
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const-string v7, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 49
    const-string v0, ""

    const-string v1, "jid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    const-string v0, ""

    const-string v1, "node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, ""

    const-string v6, "action"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 54
    :cond_1
    if-ne v6, v9, :cond_2

    const-string v7, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    new-instance v6, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    invoke-direct {v6, v3}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v6, v2}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v6, v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setNode(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v6, v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setAction(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5, v6}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->addItem(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V

    goto :goto_0

    .line 62
    :cond_2
    if-ne v6, v9, :cond_0

    const-string v6, "query"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    const/4 v4, 0x1

    goto :goto_0

    .line 67
    :cond_3
    return-object v5
.end method
