.class public final Lorg/jivesoftware/smack/SmackConfiguration;
.super Ljava/lang/Object;
.source "SmackConfiguration.java"


# static fields
.field private static final SMACK_VERSION:Ljava/lang/String; = "3.1.0"

.field private static defaultMechs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static keepAliveInterval:I

.field private static localSocks5ProxyEnabled:Z

.field private static localSocks5ProxyPort:I

.field private static packetReplyTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 49
    const/16 v0, 0x1388

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 50
    const/16 v0, 0x7530

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    .line 53
    sput-boolean v8, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    .line 54
    const/16 v0, 0x1e61

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    .line 69
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v3

    .line 70
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 71
    const-string v1, "META-INF/smack-config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    .line 72
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 73
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 74
    const/4 v1, 0x0

    .line 76
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 77
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 78
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v7, 0x1

    invoke-interface {v6, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 79
    const-string v0, "UTF-8"

    invoke-interface {v6, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 82
    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    .line 83
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "className"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {v6}, Lorg/jivesoftware/smack/SmackConfiguration;->parseClassToLoad(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 104
    :cond_1
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 106
    if-ne v0, v8, :cond_0

    .line 113
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    goto :goto_1

    .line 87
    :cond_2
    :try_start_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "packetReplyTimeout"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    invoke-static {v6, v0}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 108
    :catch_1
    move-exception v0

    .line 109
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 115
    :catch_2
    move-exception v0

    goto :goto_1

    .line 91
    :cond_3
    :try_start_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "keepAliveInterval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    invoke-static {v6, v0}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 117
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 122
    :catch_3
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :cond_4
    return-void

    .line 94
    :cond_5
    :try_start_9
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "mechName"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 96
    :cond_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "localSocks5ProxyEnabled"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 97
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    goto :goto_2

    .line 99
    :cond_7
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "localSocks5ProxyPort"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    invoke-static {v6, v0}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 70
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 115
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static addSaslMech(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public static addSaslMechs(Ljava/util/Collection;)V
    .locals 2
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
    .line 204
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->addSaslMech(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private static getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 309
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/ClassLoader;

    .line 310
    const-class v2, Lorg/jivesoftware/smack/SmackConfiguration;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    aput-object v2, v1, v0

    .line 311
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aput-object v3, v1, v2

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 315
    if-eqz v4, :cond_0

    .line 316
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/ClassLoader;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getKeepAliveInterval()I
    .locals 1

    .prologue
    .line 172
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    return v0
.end method

.method public static getLocalSocks5ProxyPort()I
    .locals 1

    .prologue
    .line 266
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    return v0
.end method

.method public static getPacketReplyTimeout()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    if-gtz v0, :cond_0

    .line 145
    const/16 v0, 0x1388

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 147
    :cond_0
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    return v0
.end method

.method public static getSaslMechs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "3.1.0"

    return-object v0
.end method

.method public static isLocalSocks5ProxyEnabled()Z
    .locals 1

    .prologue
    .line 248
    sget-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    return v0
.end method

.method private static parseClassToLoad(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 280
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 283
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v1

    .line 286
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! A startup class specified in smack-config.xml could not be loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 299
    :goto_0
    return p1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeSaslMech(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    return-void
.end method

.method public static removeSaslMechs(Ljava/util/Collection;)V
    .locals 2
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
    .line 226
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->removeSaslMech(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public static setKeepAliveInterval(I)V
    .locals 0

    .prologue
    .line 184
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    .line 185
    return-void
.end method

.method public static setLocalSocks5ProxyEnabled(Z)V
    .locals 0

    .prologue
    .line 257
    sput-boolean p0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    .line 258
    return-void
.end method

.method public static setLocalSocks5ProxyPort(I)V
    .locals 0

    .prologue
    .line 276
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    .line 277
    return-void
.end method

.method public static setPacketReplyTimeout(I)V
    .locals 1

    .prologue
    .line 157
    if-gtz p0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 160
    :cond_0
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 161
    return-void
.end method
