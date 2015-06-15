.class public Lorg/jdom/adapters/JAXPDOMAdapter;
.super Lorg/jdom/adapters/AbstractDOMAdapter;
.source "JAXPDOMAdapter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JAXPDOMAdapter.java,v $ $Revision: 1.13 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field static class$java$io$InputStream:Ljava/lang/Class;

.field static class$org$xml$sax$ErrorHandler:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 129
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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    const-string v9, "javax.xml.transform.Transformer"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 170
    const-string v9, "javax.xml.parsers.DocumentBuilderFactory"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 174
    .local v3, "factoryClass":Ljava/lang/Class;
    const-string v9, "newInstance"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 176
    .local v7, "newParserInstance":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "factory":Ljava/lang/Object;
    const-string v9, "newDocumentBuilder"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 181
    .local v6, "newDocBuilder":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    invoke-virtual {v6, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    .local v4, "jaxpParser":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 185
    .local v8, "parserClass":Ljava/lang/Class;
    const-string v9, "newDocument"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 186
    .local v5, "newDoc":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v0, "domDoc":Lorg/w3c/dom/Document;
    return-object v0

    .line 190
    .end local v0    # "domDoc":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljava/lang/Object;
    .end local v3    # "factoryClass":Ljava/lang/Class;
    .end local v4    # "jaxpParser":Ljava/lang/Object;
    .end local v5    # "newDoc":Ljava/lang/reflect/Method;
    .end local v6    # "newDocBuilder":Ljava/lang/reflect/Method;
    .end local v7    # "newParserInstance":Ljava/lang/reflect/Method;
    .end local v8    # "parserClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/jdom/JDOMException;

    const-string v10, "Reflection failed while creating new JAXP document"

    invoke-direct {v9, v10, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .locals 19
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    const-string v15, "javax.xml.transform.Transformer"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 98
    const-string v15, "javax.xml.parsers.DocumentBuilderFactory"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 102
    .local v5, "factoryClass":Ljava/lang/Class;
    const-string v15, "newInstance"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 104
    .local v8, "newParserInstance":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 107
    .local v4, "factory":Ljava/lang/Object;
    const-string v15, "setValidating"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 110
    .local v13, "setValidating":Ljava/lang/reflect/Method;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v17, v15, v16

    invoke-virtual {v13, v4, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v15, "setNamespaceAware"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 117
    .local v12, "setNamespaceAware":Ljava/lang/reflect/Method;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v17, v15, v16

    invoke-virtual {v12, v4, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v15, "newDocumentBuilder"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 123
    .local v7, "newDocBuilder":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    invoke-virtual {v7, v4, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 126
    .local v6, "jaxpParser":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 127
    .local v10, "parserClass":Ljava/lang/Class;
    const-string v16, "setErrorHandler"

    const/4 v15, 0x1

    new-array v0, v15, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v15, Lorg/jdom/adapters/JAXPDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    if-nez v15, :cond_0

    const-string v15, "org.xml.sax.ErrorHandler"

    invoke-static {v15}, Lorg/jdom/adapters/JAXPDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    sput-object v15, Lorg/jdom/adapters/JAXPDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    :goto_0
    aput-object v15, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 130
    .local v11, "setErrorHandler":Ljava/lang/reflect/Method;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Lorg/jdom/input/BuilderErrorHandler;

    invoke-direct/range {v17 .. v17}, Lorg/jdom/input/BuilderErrorHandler;-><init>()V

    aput-object v17, v15, v16

    invoke-virtual {v11, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v16, "parse"

    const/4 v15, 0x1

    new-array v0, v15, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v15, Lorg/jdom/adapters/JAXPDOMAdapter;->class$java$io$InputStream:Ljava/lang/Class;

    if-nez v15, :cond_1

    const-string v15, "java.io.InputStream"

    invoke-static {v15}, Lorg/jdom/adapters/JAXPDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    sput-object v15, Lorg/jdom/adapters/JAXPDOMAdapter;->class$java$io$InputStream:Ljava/lang/Class;

    :goto_1
    aput-object v15, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 136
    .local v9, "parse":Ljava/lang/reflect/Method;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    invoke-virtual {v9, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Document;

    .line 139
    .local v2, "domDoc":Lorg/w3c/dom/Document;
    return-object v2

    .line 127
    .end local v2    # "domDoc":Lorg/w3c/dom/Document;
    .end local v9    # "parse":Ljava/lang/reflect/Method;
    .end local v11    # "setErrorHandler":Ljava/lang/reflect/Method;
    :cond_0
    sget-object v15, Lorg/jdom/adapters/JAXPDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    goto :goto_0

    .line 134
    .restart local v11    # "setErrorHandler":Ljava/lang/reflect/Method;
    :cond_1
    sget-object v15, Lorg/jdom/adapters/JAXPDOMAdapter;->class$java$io$InputStream:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 140
    .end local v4    # "factory":Ljava/lang/Object;
    .end local v5    # "factoryClass":Ljava/lang/Class;
    .end local v6    # "jaxpParser":Ljava/lang/Object;
    .end local v7    # "newDocBuilder":Ljava/lang/reflect/Method;
    .end local v8    # "newParserInstance":Ljava/lang/reflect/Method;
    .end local v10    # "parserClass":Ljava/lang/Class;
    .end local v11    # "setErrorHandler":Ljava/lang/reflect/Method;
    .end local v12    # "setNamespaceAware":Ljava/lang/reflect/Method;
    .end local v13    # "setValidating":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v14

    .line 142
    .local v14, "targetException":Ljava/lang/Throwable;
    instance-of v15, v14, Ljava/io/IOException;

    if-eqz v15, :cond_2

    .line 143
    check-cast v14, Ljava/io/IOException;

    .end local v14    # "targetException":Ljava/lang/Throwable;
    throw v14

    .line 145
    .restart local v14    # "targetException":Ljava/lang/Throwable;
    :cond_2
    new-instance v15, Lorg/jdom/JDOMException;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v14}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 147
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v14    # "targetException":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    new-instance v15, Lorg/jdom/JDOMException;

    const-string v16, "Reflection failed while parsing a document with JAXP"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
.end method
