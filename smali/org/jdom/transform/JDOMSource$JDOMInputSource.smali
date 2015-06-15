.class Lorg/jdom/transform/JDOMSource$JDOMInputSource;
.super Lorg/xml/sax/InputSource;
.source "JDOMSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/transform/JDOMSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JDOMInputSource"
.end annotation


# instance fields
.field private source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "nodes"    # Ljava/util/List;

    .prologue
    .line 386
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    .line 387
    iput-object p1, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    .line 388
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/jdom/Document;

    .prologue
    .line 377
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    .line 378
    iput-object p1, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    .line 379
    return-void
.end method


# virtual methods
.method public getCharacterStream()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 436
    .local v1, "src":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 438
    .local v0, "reader":Ljava/io/Reader;
    instance-of v2, v1, Lorg/jdom/Document;

    if-eqz v2, :cond_1

    .line 441
    new-instance v0, Ljava/io/StringReader;

    .end local v0    # "reader":Ljava/io/Reader;
    new-instance v2, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v2}, Lorg/jdom/output/XMLOutputter;-><init>()V

    check-cast v1, Lorg/jdom/Document;

    .end local v1    # "src":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 451
    .restart local v0    # "reader":Ljava/io/Reader;
    :cond_0
    :goto_0
    return-object v0

    .line 445
    .restart local v1    # "src":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 446
    new-instance v0, Ljava/io/StringReader;

    .end local v0    # "reader":Ljava/io/Reader;
    new-instance v2, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v2}, Lorg/jdom/output/XMLOutputter;-><init>()V

    check-cast v1, Ljava/util/List;

    .end local v1    # "src":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lorg/jdom/output/XMLOutputter;->outputString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .restart local v0    # "reader":Ljava/io/Reader;
    goto :goto_0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 1
    .param p1, "characterStream"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
