.class public Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider;
.super Ljava/lang/Object;
.source "AdHocCommandDataProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$SessionExpiredError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$BadSessionIDError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$BadPayloadError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$BadLocaleError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$MalformedActionError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$BadActionError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    new-instance v2, Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;-><init>()V

    .line 46
    new-instance v3, Lorg/jivesoftware/smackx/provider/DataFormProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/DataFormProvider;-><init>()V

    .line 51
    const-string v1, ""

    const-string v4, "sessionid"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setSessionID(Ljava/lang/String;)V

    .line 52
    const-string v1, ""

    const-string v4, "node"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setNode(Ljava/lang/String;)V

    .line 55
    const-string v1, ""

    const-string v4, "status"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    sget-object v4, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 67
    :cond_0
    :goto_0
    const-string v1, ""

    const-string v4, "action"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    invoke-static {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_1

    sget-object v4, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 71
    :cond_1
    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    move v1, v0

    .line 77
    :cond_2
    :goto_1
    if-nez v1, :cond_e

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 81
    const/4 v6, 0x2

    if-ne v0, v6, :cond_d

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "actions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    const-string v0, ""

    const-string v4, "execute"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    invoke-static {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setExecuteAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_1

    .line 59
    :cond_3
    sget-object v4, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    goto :goto_0

    .line 62
    :cond_4
    sget-object v4, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    :cond_6
    move v1, v0

    goto :goto_1

    .line 88
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "next"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 89
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_1

    .line 91
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "complete"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_1

    .line 94
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "prev"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 95
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto/16 :goto_1

    .line 97
    :cond_a
    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "jabber:x:data"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 98
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setForm(Lorg/jivesoftware/smackx/packet/DataForm;)V

    goto/16 :goto_1

    .line 100
    :cond_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "note"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 101
    const-string v0, ""

    const-string v4, "type"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    move-result-object v0

    .line 103
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 104
    new-instance v5, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;

    invoke-direct {v5, v0, v4}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V

    goto/16 :goto_1

    .line 106
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "error"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_1

    .line 111
    :cond_d
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "command"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 117
    :cond_e
    return-object v2
.end method
