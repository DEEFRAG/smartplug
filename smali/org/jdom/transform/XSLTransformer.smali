.class public Lorg/jdom/transform/XSLTransformer;
.super Ljava/lang/Object;
.source "XSLTransformer.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XSLTransformer.java,v $ $Revision: 1.5 $ $Date: 2007/11/14 04:36:54 $ $Name: jdom_1_1 $"


# instance fields
.field private factory:Lorg/jdom/JDOMFactory;

.field private templates:Ljavax/xml/transform/Templates;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "stylesheet"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stylesheet"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "stylesheet"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "stylesheetSystemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 149
    return-void
.end method

.method private constructor <init>(Ljavax/xml/transform/Source;)V
    .locals 3
    .param p1, "stylesheet"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    .line 133
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom/transform/XSLTransformer;->templates:Ljavax/xml/transform/Templates;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/jdom/transform/XSLTransformException;

    const-string v2, "Could not construct XSLTransformer"

    invoke-direct {v1, v2, v0}, Lorg/jdom/transform/XSLTransformException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1
    .param p1, "stylesheet"    # Lorg/jdom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lorg/jdom/transform/JDOMSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource;-><init>(Lorg/jdom/Document;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 209
    return-void
.end method


# virtual methods
.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;

    .prologue
    .line 275
    iput-object p1, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    .line 276
    return-void
.end method

.method public transform(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "inputNodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v2, Lorg/jdom/transform/JDOMSource;

    invoke-direct {v2, p1}, Lorg/jdom/transform/JDOMSource;-><init>(Ljava/util/List;)V

    .line 220
    .local v2, "source":Lorg/jdom/transform/JDOMSource;
    new-instance v1, Lorg/jdom/transform/JDOMResult;

    invoke-direct {v1}, Lorg/jdom/transform/JDOMResult;-><init>()V

    .line 221
    .local v1, "result":Lorg/jdom/transform/JDOMResult;
    iget-object v3, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {v1, v3}, Lorg/jdom/transform/JDOMResult;->setFactory(Lorg/jdom/JDOMFactory;)V

    .line 223
    :try_start_0
    iget-object v3, p0, Lorg/jdom/transform/XSLTransformer;->templates:Ljavax/xml/transform/Templates;

    invoke-interface {v3}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 224
    invoke-virtual {v1}, Lorg/jdom/transform/JDOMResult;->getResult()Ljava/util/List;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/jdom/transform/XSLTransformException;

    const-string v4, "Could not perform transformation"

    invoke-direct {v3, v4, v0}, Lorg/jdom/transform/XSLTransformException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public transform(Lorg/jdom/Document;)Lorg/jdom/Document;
    .locals 1
    .param p1, "inputDoc"    # Lorg/jdom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jdom/transform/XSLTransformer;->transform(Lorg/jdom/Document;Lorg/xml/sax/EntityResolver;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lorg/jdom/Document;Lorg/xml/sax/EntityResolver;)Lorg/jdom/Document;
    .locals 5
    .param p1, "inputDoc"    # Lorg/jdom/Document;
    .param p2, "resolver"    # Lorg/xml/sax/EntityResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v2, Lorg/jdom/transform/JDOMSource;

    invoke-direct {v2, p1, p2}, Lorg/jdom/transform/JDOMSource;-><init>(Lorg/jdom/Document;Lorg/xml/sax/EntityResolver;)V

    .line 252
    .local v2, "source":Lorg/jdom/transform/JDOMSource;
    new-instance v1, Lorg/jdom/transform/JDOMResult;

    invoke-direct {v1}, Lorg/jdom/transform/JDOMResult;-><init>()V

    .line 253
    .local v1, "result":Lorg/jdom/transform/JDOMResult;
    iget-object v3, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {v1, v3}, Lorg/jdom/transform/JDOMResult;->setFactory(Lorg/jdom/JDOMFactory;)V

    .line 255
    :try_start_0
    iget-object v3, p0, Lorg/jdom/transform/XSLTransformer;->templates:Ljavax/xml/transform/Templates;

    invoke-interface {v3}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 256
    invoke-virtual {v1}, Lorg/jdom/transform/JDOMResult;->getDocument()Lorg/jdom/Document;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/jdom/transform/XSLTransformException;

    const-string v4, "Could not perform transformation"

    invoke-direct {v3, v4, v0}, Lorg/jdom/transform/XSLTransformException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
