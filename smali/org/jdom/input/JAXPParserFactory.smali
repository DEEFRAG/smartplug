.class Lorg/jdom/input/JAXPParserFactory;
.super Ljava/lang/Object;
.source "JAXPParserFactory.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JAXPParserFactory.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"

.field private static final JAXP_SCHEMA_LANGUAGE_PROPERTY:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field private static final JAXP_SCHEMA_LOCATION_PROPERTY:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public static createParser(ZLjava/util/Map;Ljava/util/Map;)Lorg/xml/sax/XMLReader;
    .locals 5
    .param p0, "validating"    # Z
    .param p1, "features"    # Ljava/util/Map;
    .param p2, "properties"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 125
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 126
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 127
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 138
    :try_start_2
    const-string v3, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-static {v2, p2, v3}, Lorg/jdom/input/JAXPParserFactory;->setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V

    .line 139
    const-string v3, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-static {v2, p2, v3}, Lorg/jdom/input/JAXPParserFactory;->setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    return-object v3

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lorg/jdom/JDOMException;

    const-string v4, "Could not allocate JAXP SAX Parser"

    invoke-direct {v3, v4, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/jdom/JDOMException;

    const-string v4, "Could not allocate JAXP SAX Parser"

    invoke-direct {v3, v4, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Ljavax/xml/parsers/SAXParser;
    .param p1, "properties"    # Ljava/util/Map;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ljavax/xml/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :cond_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " property not supported for JAXP parser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    .end local v0    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " property not recognized for JAXP parser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
