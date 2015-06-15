.class Lorg/jdom/transform/JDOMResult$FragmentHandler;
.super Lorg/jdom/input/SAXHandler;
.source "JDOMResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/transform/JDOMResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentHandler"
.end annotation


# instance fields
.field private dummyRoot:Lorg/jdom/Element;


# direct methods
.method public constructor <init>(Lorg/jdom/JDOMFactory;)V
    .locals 3
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;

    .prologue
    const/4 v2, 0x0

    .line 362
    invoke-direct {p0, p1}, Lorg/jdom/input/SAXHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    .line 356
    new-instance v0, Lorg/jdom/Element;

    const-string v1, "root"

    invoke-direct {v0, v1, v2, v2}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jdom/transform/JDOMResult$FragmentHandler;->dummyRoot:Lorg/jdom/Element;

    .line 367
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$FragmentHandler;->dummyRoot:Lorg/jdom/Element;

    invoke-virtual {p0, v0}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->pushElement(Lorg/jdom/Element;)V

    .line 368
    return-void
.end method

.method private getDetachedContent(Lorg/jdom/Element;)Ljava/util/List;
    .locals 4
    .param p1, "elt"    # Lorg/jdom/Element;

    .prologue
    .line 395
    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v0

    .line 396
    .local v0, "content":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    .local v1, "nodes":Ljava/util/List;
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 401
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 1

    .prologue
    .line 380
    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->flushCharacters()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$FragmentHandler;->dummyRoot:Lorg/jdom/Element;

    invoke-direct {p0, v0}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->getDetachedContent(Lorg/jdom/Element;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method
