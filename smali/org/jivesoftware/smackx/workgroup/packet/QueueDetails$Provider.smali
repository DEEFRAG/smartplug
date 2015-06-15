.class public Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails$Provider;
.super Ljava/lang/Object;
.source "QueueDetails.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x3

    .line 144
    new-instance v6, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;

    invoke-direct {v6, v3}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails$1;)V

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 147
    :cond_0
    if-eq v0, v9, :cond_9

    const-string v0, "notify-queue-details"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 151
    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v1, "user"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v0, ""

    const-string v1, "jid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    if-nez v7, :cond_1

    .line 163
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v4

    move v2, v4

    move v5, v0

    move-object v0, v3

    .line 165
    :cond_2
    :goto_1
    if-ne v5, v9, :cond_3

    const-string v5, "user"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 167
    :cond_3
    const-string v5, "position"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 183
    :cond_4
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 185
    if-eq v5, v9, :cond_2

    goto :goto_1

    .line 170
    :cond_5
    const-string v5, "time"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 171
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 173
    :cond_6
    const-string v5, "join-time"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 174
    # getter for: Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_2

    .line 176
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "waitTime"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 177
    # getter for: Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 178
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 192
    :cond_8
    new-instance v5, Lorg/jivesoftware/smackx/workgroup/QueueUser;

    invoke-direct {v5, v7, v2, v1, v0}, Lorg/jivesoftware/smackx/workgroup/QueueUser;-><init>(Ljava/lang/String;IILjava/util/Date;)V

    # invokes: Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->addUser(Lorg/jivesoftware/smackx/workgroup/QueueUser;)V
    invoke-static {v6, v5}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->access$200(Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;Lorg/jivesoftware/smackx/workgroup/QueueUser;)V

    .line 194
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    .line 197
    :cond_9
    return-object v6
.end method
