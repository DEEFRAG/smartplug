.class public Lorg/jdom/output/JDOMLocator;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "JDOMLocator.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMLocator.java,v $ $Revision: 1.4 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $"


# instance fields
.field private node:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 83
    return-void
.end method

.method constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    .line 94
    instance-of v0, p1, Lorg/jdom/output/JDOMLocator;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Lorg/jdom/output/JDOMLocator;

    .end local p1    # "locator":Lorg/xml/sax/Locator;
    invoke-virtual {p1}, Lorg/jdom/output/JDOMLocator;->getNode()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public getNode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/jdom/output/JDOMLocator;->node:Ljava/lang/Object;

    return-object v0
.end method

.method setNode(Ljava/lang/Object;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/jdom/output/JDOMLocator;->node:Ljava/lang/Object;

    .line 116
    return-void
.end method
