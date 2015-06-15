.class public Lorg/jdom/transform/JDOMResult;
.super Ljavax/xml/transform/sax/SAXResult;
.source "JDOMResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/transform/JDOMResult$DocumentBuilder;,
        Lorg/jdom/transform/JDOMResult$FragmentHandler;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMResult.java,v $ $Revision: 1.24 $ $Date: 2007/11/10 05:29:02 $ $Name: jdom_1_1 $"

.field public static final JDOM_FEATURE:Ljava/lang/String; = "http://org.jdom.transform.JDOMResult/feature"


# instance fields
.field private factory:Lorg/jdom/JDOMFactory;

.field private queried:Z

.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXResult;-><init>()V

    .line 126
    iput-object v2, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    .line 138
    iput-object v2, p0, Lorg/jdom/transform/JDOMResult;->factory:Lorg/jdom/JDOMFactory;

    .line 145
    new-instance v0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;

    invoke-direct {v0, p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;-><init>(Lorg/jdom/transform/JDOMResult;)V

    .line 148
    .local v0, "builder":Lorg/jdom/transform/JDOMResult$DocumentBuilder;
    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    .line 149
    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 150
    return-void
.end method

.method private retrieveResult()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    check-cast v0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/transform/JDOMResult;->setResult(Ljava/util/List;)V

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public getDocument()Lorg/jdom/Document;
    .locals 3

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 256
    .local v0, "doc":Lorg/jdom/Document;
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult;->retrieveResult()V

    .line 258
    iget-object v2, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lorg/jdom/Document;

    if-eqz v2, :cond_1

    .line 259
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    .end local v0    # "doc":Lorg/jdom/Document;
    check-cast v0, Lorg/jdom/Document;

    .line 279
    .restart local v0    # "doc":Lorg/jdom/Document;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    .line 281
    return-object v0

    .line 262
    :cond_1
    iget-object v2, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    if-nez v2, :cond_0

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMResult;->getFactory()Lorg/jdom/JDOMFactory;

    move-result-object v1

    .line 266
    .local v1, "f":Lorg/jdom/JDOMFactory;
    if-nez v1, :cond_2

    new-instance v1, Lorg/jdom/DefaultJDOMFactory;

    .end local v1    # "f":Lorg/jdom/JDOMFactory;
    invoke-direct {v1}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    .line 268
    .restart local v1    # "f":Lorg/jdom/JDOMFactory;
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    .line 269
    iget-object v2, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/jdom/Document;->setContent(Ljava/util/Collection;)Lorg/jdom/Document;

    .line 271
    iput-object v0, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v1    # "f":Lorg/jdom/JDOMFactory;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 4

    .prologue
    .line 186
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 189
    .local v1, "nodes":Ljava/util/List;
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult;->retrieveResult()V

    .line 191
    iget-object v3, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 192
    iget-object v1, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    .end local v1    # "nodes":Ljava/util/List;
    check-cast v1, Ljava/util/List;

    .line 207
    .restart local v1    # "nodes":Ljava/util/List;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    .line 209
    return-object v1

    .line 195
    :cond_1
    iget-object v3, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Lorg/jdom/Document;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    if-nez v3, :cond_0

    .line 196
    iget-object v3, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/jdom/Document;

    invoke-virtual {v3}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "content":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "nodes":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .restart local v1    # "nodes":Ljava/util/List;
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 202
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    iput-object v1, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDocument(Lorg/jdom/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/jdom/Document;

    .prologue
    .line 228
    iput-object p1, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    .line 230
    return-void
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;

    .prologue
    .line 296
    iput-object p1, p0, Lorg/jdom/transform/JDOMResult;->factory:Lorg/jdom/JDOMFactory;

    .line 297
    return-void
.end method

.method public setHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 332
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 344
    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 1
    .param p1, "result"    # Ljava/util/List;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    .line 171
    return-void
.end method
