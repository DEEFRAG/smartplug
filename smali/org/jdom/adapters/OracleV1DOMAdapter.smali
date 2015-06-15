.class public Lorg/jdom/adapters/OracleV1DOMAdapter;
.super Lorg/jdom/adapters/AbstractDOMAdapter;
.source "OracleV1DOMAdapter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: OracleV1DOMAdapter.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field static class$org$xml$sax$InputSource:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createDocument()Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    const-string v1, "oracle.xml.parser.XMLDocument"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " when creating document"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .locals 13
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    const-string v9, "oracle.xml.parser.XMLParser"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 95
    .local v7, "parserClass":Ljava/lang/Class;
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 98
    .local v6, "parser":Ljava/lang/Object;
    const-string v10, "parse"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v9, Lorg/jdom/adapters/OracleV1DOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;

    if-nez v9, :cond_0

    const-string v9, "org.xml.sax.InputSource"

    invoke-static {v9}, Lorg/jdom/adapters/OracleV1DOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/jdom/adapters/OracleV1DOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;

    :goto_0
    aput-object v9, v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 101
    .local v4, "parse":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Lorg/xml/sax/InputSource;

    invoke-direct {v11, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    aput-object v11, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v9, "getDocument"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 105
    .local v2, "getDocument":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    .line 107
    .local v0, "doc":Lorg/w3c/dom/Document;
    return-object v0

    .line 98
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "getDocument":Ljava/lang/reflect/Method;
    .end local v4    # "parse":Ljava/lang/reflect/Method;
    :cond_0
    sget-object v9, Lorg/jdom/adapters/OracleV1DOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    .end local v6    # "parser":Ljava/lang/Object;
    .end local v7    # "parserClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v8

    .line 110
    .local v8, "targetException":Ljava/lang/Throwable;
    instance-of v9, v8, Lorg/xml/sax/SAXParseException;

    if-eqz v9, :cond_1

    move-object v5, v8

    .line 111
    check-cast v5, Lorg/xml/sax/SAXParseException;

    .line 112
    .local v5, "parseException":Lorg/xml/sax/SAXParseException;
    new-instance v9, Lorg/jdom/JDOMException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Error on line "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v5}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " of XML document: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v5}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 114
    .end local v5    # "parseException":Lorg/xml/sax/SAXParseException;
    :cond_1
    instance-of v9, v8, Ljava/io/IOException;

    if-eqz v9, :cond_2

    move-object v3, v8

    .line 115
    check-cast v3, Ljava/io/IOException;

    .line 116
    .local v3, "ioException":Ljava/io/IOException;
    throw v3

    .line 118
    .end local v3    # "ioException":Ljava/io/IOException;
    :cond_2
    new-instance v9, Lorg/jdom/JDOMException;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 120
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v8    # "targetException":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/jdom/JDOMException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method
