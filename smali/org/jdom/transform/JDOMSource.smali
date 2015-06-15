.class public Lorg/jdom/transform/JDOMSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "JDOMSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/transform/JDOMSource$DocumentReader;,
        Lorg/jdom/transform/JDOMSource$JDOMInputSource;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMSource.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:02 $ $Name: jdom_1_1 $"

.field public static final JDOM_FEATURE:Ljava/lang/String; = "http://org.jdom.transform.JDOMSource/feature"


# instance fields
.field private resolver:Lorg/xml/sax/EntityResolver;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "source"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 126
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 135
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 160
    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1
    .param p1, "source"    # Lorg/jdom/Document;

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 126
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 135
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 147
    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setDocument(Lorg/jdom/Document;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;Lorg/xml/sax/EntityResolver;)V
    .locals 1
    .param p1, "source"    # Lorg/jdom/Document;
    .param p2, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 126
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 135
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 193
    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setDocument(Lorg/jdom/Document;)V

    .line 194
    iput-object p2, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 195
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 2
    .param p1, "source"    # Lorg/jdom/Element;

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 126
    iput-object v1, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 135
    iput-object v1, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "nodes":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0, v0}, Lorg/jdom/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    .line 177
    return-void
.end method

.method private buildDocumentReader()Lorg/xml/sax/XMLReader;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lorg/jdom/transform/JDOMSource$DocumentReader;

    invoke-direct {v0}, Lorg/jdom/transform/JDOMSource$DocumentReader;-><init>()V

    .line 347
    .local v0, "reader":Lorg/jdom/transform/JDOMSource$DocumentReader;
    iget-object v1, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v0, v1}, Lorg/jdom/transform/JDOMSource$DocumentReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 349
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDocument()Lorg/jdom/Document;
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v2

    check-cast v2, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v2}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 222
    .local v1, "src":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 224
    .local v0, "doc":Lorg/jdom/Document;
    instance-of v2, v1, Lorg/jdom/Document;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 225
    check-cast v0, Lorg/jdom/Document;

    .line 227
    :cond_0
    return-object v0
.end method

.method public getNodes()Ljava/util/List;
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v2

    check-cast v2, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v2}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 255
    .local v1, "src":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 257
    .local v0, "nodes":Ljava/util/List;
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 258
    check-cast v0, Ljava/util/List;

    .line 260
    :cond_0
    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lorg/jdom/transform/JDOMSource;->buildDocumentReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setDocument(Lorg/jdom/Document;)V
    .locals 1
    .param p1, "source"    # Lorg/jdom/Document;

    .prologue
    .line 209
    new-instance v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;-><init>(Lorg/jdom/Document;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 210
    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 1
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNodes(Ljava/util/List;)V
    .locals 1
    .param p1, "source"    # Ljava/util/List;

    .prologue
    .line 242
    new-instance v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;-><init>(Ljava/util/List;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 243
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 304
    instance-of v1, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 306
    check-cast v0, Lorg/xml/sax/XMLFilter;

    .line 307
    .local v0, "filter":Lorg/xml/sax/XMLFilter;
    :goto_0
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_0

    .line 308
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/XMLFilter;

    move-object v0, v1

    check-cast v0, Lorg/xml/sax/XMLFilter;

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0}, Lorg/jdom/transform/JDOMSource;->buildDocumentReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 313
    iput-object p1, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 318
    return-void

    .line 316
    .end local v0    # "filter":Lorg/xml/sax/XMLFilter;
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
