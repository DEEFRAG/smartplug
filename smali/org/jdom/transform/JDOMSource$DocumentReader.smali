.class Lorg/jdom/transform/JDOMSource$DocumentReader;
.super Lorg/jdom/output/SAXOutputter;
.source "JDOMSource.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/transform/JDOMSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentReader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;-><init>()V

    .line 474
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Only JDOM Documents are supported as input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 514
    instance-of v2, p1, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    if-eqz v2, :cond_1

    .line 516
    :try_start_0
    check-cast p1, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    .end local p1    # "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 517
    .local v1, "source":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jdom/Document;

    if-eqz v2, :cond_0

    .line 518
    check-cast v1, Lorg/jdom/Document;

    .end local v1    # "source":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/jdom/transform/JDOMSource$DocumentReader;->output(Lorg/jdom/Document;)V

    .line 532
    :goto_0
    return-void

    .line 521
    .restart local v1    # "source":Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/util/List;

    .end local v1    # "source":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/jdom/transform/JDOMSource$DocumentReader;->output(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Lorg/jdom/JDOMException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Lorg/jdom/JDOMException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 529
    .end local v0    # "e":Lorg/jdom/JDOMException;
    .restart local p1    # "input":Lorg/xml/sax/InputSource;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    const-string v3, "Only JDOM Documents are supported as input"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
