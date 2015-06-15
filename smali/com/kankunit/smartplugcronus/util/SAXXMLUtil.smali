.class public Lcom/kankunit/smartplugcronus/util/SAXXMLUtil;
.super Ljava/lang/Object;
.source "SAXXMLUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXmlElement(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 6
    .param p0, "xmlDoc"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 12
    .local v2, "read":Ljava/io/StringReader;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 13
    .local v5, "source":Lorg/xml/sax/InputSource;
    new-instance v4, Lorg/jdom/input/SAXBuilder;

    invoke-direct {v4}, Lorg/jdom/input/SAXBuilder;-><init>()V

    .line 15
    .local v4, "sb":Lorg/jdom/input/SAXBuilder;
    :try_start_0
    invoke-virtual {v4, v5}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object v0

    .line 16
    .local v0, "doc":Lorg/jdom/Document;
    invoke-virtual {v0}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 23
    .end local v0    # "doc":Lorg/jdom/Document;
    :goto_0
    return-object v3

    .line 18
    :catch_0
    move-exception v1

    .line 19
    .local v1, "e":Lorg/jdom/JDOMException;
    invoke-virtual {v1}, Lorg/jdom/JDOMException;->printStackTrace()V

    .line 23
    .end local v1    # "e":Lorg/jdom/JDOMException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 20
    :catch_1
    move-exception v1

    .line 21
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
