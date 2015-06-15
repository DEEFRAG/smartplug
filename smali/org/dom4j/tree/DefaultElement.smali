.class public Lorg/dom4j/tree/DefaultElement;
.super Lorg/dom4j/tree/AbstractElement;
.source "DefaultElement.java"


# static fields
.field private static final transient DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;


# instance fields
.field private attributes:Ljava/lang/Object;

.field private content:Ljava/lang/Object;

.field private parentBranch:Lorg/dom4j/Branch;

.field private qname:Lorg/dom4j/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 61
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/dom4j/Namespace;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 77
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0
    .param p1, "qname"    # Lorg/dom4j/QName;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .locals 1
    .param p1, "qname"    # Lorg/dom4j/QName;
    .param p2, "attributeCount"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 71
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/dom4j/Attribute;)V
    .locals 4
    .param p1, "attribute"    # Lorg/dom4j/Attribute;

    .prologue
    .line 828
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 829
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The Attribute already has an existing parent \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "message":Ljava/lang/String;
    new-instance v2, Lorg/dom4j/IllegalAddException;

    invoke-direct {v2, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v2

    .line 835
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 839
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 841
    .local v1, "oldAttribute":Lorg/dom4j/Attribute;
    if-eqz v1, :cond_1

    .line 842
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/DefaultElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 853
    .end local v1    # "oldAttribute":Lorg/dom4j/Attribute;
    :cond_1
    :goto_0
    return-void

    .line 845
    :cond_2
    iget-object v2, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 846
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 851
    :goto_1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 848
    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected addNewNode(Lorg/dom4j/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/dom4j/Node;

    .prologue
    .line 901
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 903
    .local v0, "contentShadow":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 904
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 921
    :goto_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    .line 922
    return-void

    .line 906
    :cond_0
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 907
    check-cast v1, Ljava/util/List;

    .line 909
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 911
    .end local v1    # "list":Ljava/util/List;
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createContentList()Ljava/util/List;

    move-result-object v1

    .line 913
    .restart local v1    # "list":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_0
.end method

.method public additionalNamespaces()Ljava/util/List;
    .locals 8

    .prologue
    .line 327
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 329
    .local v1, "contentShadow":Ljava/lang/Object;
    instance-of v7, v1, Ljava/util/List;

    if-eqz v7, :cond_1

    move-object v3, v1

    .line 330
    check-cast v3, Ljava/util/List;

    .line 332
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 334
    .local v6, "size":I
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 336
    .local v0, "answer":Lorg/dom4j/tree/BackedList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 337
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 339
    .local v5, "object":Ljava/lang/Object;
    instance-of v7, v5, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_0

    move-object v4, v5

    .line 340
    check-cast v4, Lorg/dom4j/Namespace;

    .line 342
    .local v4, "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 343
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 336
    .end local v4    # "namespace":Lorg/dom4j/Namespace;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v0    # "answer":Lorg/dom4j/tree/BackedList;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "size":I
    :cond_1
    instance-of v7, v1, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_4

    move-object v4, v1

    .line 351
    check-cast v4, Lorg/dom4j/Namespace;

    .line 353
    .restart local v4    # "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 354
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    .line 359
    .end local v4    # "namespace":Lorg/dom4j/Namespace;
    :cond_2
    :goto_1
    return-object v0

    .line 357
    .restart local v4    # "namespace":Lorg/dom4j/Namespace;
    :cond_3
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 359
    .end local v4    # "namespace":Lorg/dom4j/Namespace;
    :cond_4
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public additionalNamespaces(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "defaultNamespaceURI"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 367
    .local v1, "contentShadow":Ljava/lang/Object;
    instance-of v7, v1, Ljava/util/List;

    if-eqz v7, :cond_1

    move-object v3, v1

    .line 368
    check-cast v3, Ljava/util/List;

    .line 370
    .local v3, "list":Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 372
    .local v0, "answer":Lorg/dom4j/tree/BackedList;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 374
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 375
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 377
    .local v5, "object":Ljava/lang/Object;
    instance-of v7, v5, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_0

    move-object v4, v5

    .line 378
    check-cast v4, Lorg/dom4j/Namespace;

    .line 380
    .local v4, "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 381
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 374
    .end local v4    # "namespace":Lorg/dom4j/Namespace;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "answer":Lorg/dom4j/tree/BackedList;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "size":I
    :cond_1
    instance-of v7, v1, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_3

    move-object v4, v1

    .line 389
    check-cast v4, Lorg/dom4j/Namespace;

    .line 391
    .restart local v4    # "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 392
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 397
    .end local v4    # "namespace":Lorg/dom4j/Namespace;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public attribute(I)Lorg/dom4j/Attribute;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 746
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 748
    .local v0, "attributesShadow":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 749
    check-cast v1, Ljava/util/List;

    .line 751
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Attribute;

    .line 755
    .end local v0    # "attributesShadow":Ljava/lang/Object;
    .end local v1    # "list":Ljava/util/List;
    :goto_0
    return-object v2

    .line 752
    .restart local v0    # "attributesShadow":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 753
    check-cast v0, Lorg/dom4j/Attribute;

    .end local v0    # "attributesShadow":Ljava/lang/Object;
    move-object v2, v0

    goto :goto_0

    .line 755
    .restart local v0    # "attributesShadow":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 772
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 774
    .local v1, "attributesShadow":Ljava/lang/Object;
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 775
    check-cast v3, Ljava/util/List;

    .line 777
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 779
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 780
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 782
    .local v0, "attribute":Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 794
    .end local v0    # "attribute":Lorg/dom4j/Attribute;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "size":I
    :cond_0
    :goto_1
    return-object v0

    .line 779
    .restart local v0    # "attribute":Lorg/dom4j/Attribute;
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/List;
    .restart local v4    # "size":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 786
    .end local v0    # "attribute":Lorg/dom4j/Attribute;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "size":I
    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 787
    check-cast v0, Lorg/dom4j/Attribute;

    .line 789
    .restart local v0    # "attribute":Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 794
    .end local v0    # "attribute":Lorg/dom4j/Attribute;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public attribute(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/dom4j/Namespace;

    .prologue
    .line 824
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 6
    .param p1, "qName"    # Lorg/dom4j/QName;

    .prologue
    .line 798
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 800
    .local v1, "attributesShadow":Ljava/lang/Object;
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 801
    check-cast v3, Ljava/util/List;

    .line 803
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 805
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 806
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 808
    .local v0, "attribute":Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 820
    .end local v0    # "attribute":Lorg/dom4j/Attribute;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "size":I
    :cond_0
    :goto_1
    return-object v0

    .line 805
    .restart local v0    # "attribute":Lorg/dom4j/Attribute;
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/List;
    .restart local v4    # "size":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 812
    .end local v0    # "attribute":Lorg/dom4j/Attribute;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "size":I
    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 813
    check-cast v0, Lorg/dom4j/Attribute;

    .line 815
    .restart local v0    # "attribute":Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 820
    .end local v0    # "attribute":Lorg/dom4j/Attribute;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public attributeCount()I
    .locals 3

    .prologue
    .line 760
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 762
    .local v0, "attributesShadow":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 763
    check-cast v1, Ljava/util/List;

    .line 765
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 767
    .end local v1    # "list":Ljava/util/List;
    :goto_0
    return v2

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public attributeIterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 732
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 734
    .local v0, "attributesShadow":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 735
    check-cast v1, Ljava/util/List;

    .line 737
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 741
    .end local v1    # "list":Ljava/util/List;
    :goto_0
    return-object v2

    .line 738
    :cond_0
    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0

    .line 741
    :cond_1
    sget-object v2, Lorg/dom4j/tree/DefaultElement;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method protected attributeList()Ljava/util/List;
    .locals 3

    .prologue
    .line 966
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 968
    .local v0, "attributesShadow":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 969
    check-cast v0, Ljava/util/List;

    .end local v0    # "attributesShadow":Ljava/lang/Object;
    move-object v1, v0

    .line 983
    :goto_0
    return-object v1

    .line 970
    .restart local v0    # "attributesShadow":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createAttributeList()Ljava/util/List;

    move-result-object v1

    .line 973
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_0

    .line 979
    .end local v1    # "list":Ljava/util/List;
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createAttributeList()Ljava/util/List;

    move-result-object v1

    .line 981
    .restart local v1    # "list":Ljava/util/List;
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected attributeList(I)Ljava/util/List;
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 988
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 990
    .local v0, "attributesShadow":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 991
    check-cast v0, Ljava/util/List;

    .end local v0    # "attributesShadow":Ljava/lang/Object;
    move-object v1, v0

    .line 1005
    :goto_0
    return-object v1

    .line 992
    .restart local v0    # "attributesShadow":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v1

    .line 995
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_0

    .line 1001
    .end local v1    # "list":Ljava/util/List;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v1

    .line 1003
    .restart local v1    # "list":Ljava/util/List;
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_0
.end method

.method public attributes()Ljava/util/List;
    .locals 2

    .prologue
    .line 720
    new-instance v0, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method public clearContent()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 644
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-super {p0}, Lorg/dom4j/tree/AbstractElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/DefaultElement;

    .line 186
    .local v0, "answer":Lorg/dom4j/tree/DefaultElement;
    if-eq v0, p0, :cond_0

    .line 187
    iput-object v1, v0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 189
    iput-object v1, v0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 191
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendAttributes(Lorg/dom4j/Element;)V

    .line 193
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendContent(Lorg/dom4j/Branch;)V

    .line 196
    :cond_0
    return-object v0
.end method

.method protected contentList()Ljava/util/List;
    .locals 3

    .prologue
    .line 948
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 950
    .local v0, "contentShadow":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 951
    check-cast v0, Ljava/util/List;

    .line 961
    .end local v0    # "contentShadow":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 953
    .restart local v0    # "contentShadow":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createContentList()Ljava/util/List;

    move-result-object v1

    .line 955
    .local v1, "list":Ljava/util/List;
    if-eqz v0, :cond_1

    .line 956
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_1
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    move-object v0, v1

    .line 961
    goto :goto_0
.end method

.method public declaredNamespaces()Ljava/util/List;
    .locals 7

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 303
    .local v0, "answer":Lorg/dom4j/tree/BackedList;
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 305
    .local v1, "contentShadow":Ljava/lang/Object;
    instance-of v6, v1, Ljava/util/List;

    if-eqz v6, :cond_1

    move-object v3, v1

    .line 306
    check-cast v3, Ljava/util/List;

    .line 308
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 310
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 311
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 313
    .local v4, "object":Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Namespace;

    if-eqz v6, :cond_0

    .line 314
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 310
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_1
    instance-of v6, v1, Lorg/dom4j/Namespace;

    if-eqz v6, :cond_2

    .line 319
    invoke-virtual {v0, v1}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 323
    :cond_2
    return-object v0
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 534
    .local v0, "contentShadow":Ljava/lang/Object;
    instance-of v6, v0, Ljava/util/List;

    if-eqz v6, :cond_2

    move-object v3, v0

    .line 535
    check-cast v3, Ljava/util/List;

    .line 537
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 539
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 540
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 542
    .local v4, "object":Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Element;

    if-eqz v6, :cond_1

    move-object v1, v4

    .line 543
    check-cast v1, Lorg/dom4j/Element;

    .line 545
    .local v1, "element":Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 560
    .end local v1    # "element":Lorg/dom4j/Element;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_0
    :goto_1
    return-object v1

    .line 539
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/List;
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "size":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_2
    instance-of v6, v0, Lorg/dom4j/Element;

    if-eqz v6, :cond_3

    move-object v1, v0

    .line 552
    check-cast v1, Lorg/dom4j/Element;

    .line 554
    .restart local v1    # "element":Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 560
    .end local v1    # "element":Lorg/dom4j/Element;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public element(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/dom4j/Namespace;

    .prologue
    .line 596
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 7
    .param p1, "qName"    # Lorg/dom4j/QName;

    .prologue
    .line 564
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 566
    .local v0, "contentShadow":Ljava/lang/Object;
    instance-of v6, v0, Ljava/util/List;

    if-eqz v6, :cond_2

    move-object v3, v0

    .line 567
    check-cast v3, Ljava/util/List;

    .line 569
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 571
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 572
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 574
    .local v4, "object":Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Element;

    if-eqz v6, :cond_1

    move-object v1, v4

    .line 575
    check-cast v1, Lorg/dom4j/Element;

    .line 577
    .local v1, "element":Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 592
    .end local v1    # "element":Lorg/dom4j/Element;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_0
    :goto_1
    return-object v1

    .line 571
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/List;
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "size":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_2
    instance-of v6, v0, Lorg/dom4j/Element;

    if-eqz v6, :cond_3

    move-object v1, v0

    .line 584
    check-cast v1, Lorg/dom4j/Element;

    .line 586
    .restart local v1    # "element":Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 592
    .end local v1    # "element":Lorg/dom4j/Element;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Document;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v1, Lorg/dom4j/Document;

    .line 105
    :goto_0
    return-object v1

    .line 99
    :cond_0
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Element;

    if-eqz v1, :cond_1

    .line 100
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    .line 102
    .local v0, "parent":Lorg/dom4j/Element;
    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v1

    goto :goto_0

    .line 105
    .end local v0    # "parent":Lorg/dom4j/Element;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 2

    .prologue
    .line 1014
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    invoke-virtual {v1}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 1016
    .local v0, "factory":Lorg/dom4j/DocumentFactory;
    if-eqz v0, :cond_0

    .end local v0    # "factory":Lorg/dom4j/DocumentFactory;
    :goto_0
    return-object v0

    .restart local v0    # "factory":Lorg/dom4j/DocumentFactory;
    :cond_0
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    goto :goto_0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    const-string p1, ""

    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 205
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v4

    .line 250
    :cond_1
    :goto_0
    return-object v4

    .line 206
    :cond_2
    const-string v8, "xml"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 207
    sget-object v4, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_0

    .line 209
    :cond_3
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 211
    .local v1, "contentShadow":Ljava/lang/Object;
    instance-of v8, v1, Ljava/util/List;

    if-eqz v8, :cond_5

    move-object v3, v1

    .line 212
    check-cast v3, Ljava/util/List;

    .line 214
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 216
    .local v7, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_6

    .line 217
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 219
    .local v5, "object":Ljava/lang/Object;
    instance-of v8, v5, Lorg/dom4j/Namespace;

    if-eqz v8, :cond_4

    move-object v4, v5

    .line 220
    check-cast v4, Lorg/dom4j/Namespace;

    .line 222
    .local v4, "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 216
    .end local v4    # "namespace":Lorg/dom4j/Namespace;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v5    # "object":Ljava/lang/Object;
    .end local v7    # "size":I
    :cond_5
    instance-of v8, v1, Lorg/dom4j/Namespace;

    if-eqz v8, :cond_6

    move-object v4, v1

    .line 228
    check-cast v4, Lorg/dom4j/Namespace;

    .line 230
    .restart local v4    # "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 236
    .end local v4    # "namespace":Lorg/dom4j/Namespace;
    :cond_6
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v6

    .line 238
    .local v6, "parent":Lorg/dom4j/Element;
    if-eqz v6, :cond_7

    .line 239
    invoke-interface {v6, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 241
    .local v0, "answer":Lorg/dom4j/Namespace;
    if-eqz v0, :cond_7

    move-object v4, v0

    .line 242
    goto :goto_0

    .line 246
    .end local v0    # "answer":Lorg/dom4j/Namespace;
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_9

    .line 247
    :cond_8
    sget-object v4, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_0

    .line 250
    :cond_9
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 255
    :cond_0
    sget-object v3, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .line 291
    :cond_1
    :goto_0
    return-object v3

    .line 256
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 257
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 261
    .local v0, "contentShadow":Ljava/lang/Object;
    instance-of v7, v0, Ljava/util/List;

    if-eqz v7, :cond_5

    move-object v2, v0

    .line 262
    check-cast v2, Ljava/util/List;

    .line 264
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 266
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_6

    .line 267
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 269
    .local v4, "object":Ljava/lang/Object;
    instance-of v7, v4, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_4

    move-object v3, v4

    .line 270
    check-cast v3, Lorg/dom4j/Namespace;

    .line 272
    .local v3, "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 266
    .end local v3    # "namespace":Lorg/dom4j/Namespace;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v6    # "size":I
    :cond_5
    instance-of v7, v0, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_6

    move-object v3, v0

    .line 278
    check-cast v3, Lorg/dom4j/Namespace;

    .line 280
    .restart local v3    # "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 285
    .end local v3    # "namespace":Lorg/dom4j/Namespace;
    :cond_6
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v5

    .line 287
    .local v5, "parent":Lorg/dom4j/Element;
    if-eqz v5, :cond_7

    .line 288
    invoke-interface {v5, p1}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v3

    goto :goto_0

    .line 291
    :cond_7
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "result":Lorg/dom4j/Element;
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Element;

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    .end local v0    # "result":Lorg/dom4j/Element;
    check-cast v0, Lorg/dom4j/Element;

    .line 87
    .restart local v0    # "result":Lorg/dom4j/Element;
    :cond_0
    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 8

    .prologue
    .line 141
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 143
    .local v1, "contentShadow":Ljava/lang/Object;
    instance-of v7, v1, Ljava/util/List;

    if-eqz v7, :cond_3

    move-object v3, v1

    .line 144
    check-cast v3, Ljava/util/List;

    .line 146
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 148
    .local v5, "size":I
    if-lez v5, :cond_4

    .line 149
    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 151
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .end local v3    # "list":Ljava/util/List;
    .end local v5    # "size":I
    :goto_0
    return-object v7

    .line 153
    .restart local v3    # "list":Ljava/util/List;
    .restart local v5    # "size":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 156
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 158
    .local v4, "node":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 167
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    .end local v4    # "node":Ljava/lang/Object;
    .end local v6    # "string":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 175
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v5    # "size":I
    :cond_3
    if-eqz v1, :cond_4

    .line 176
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 180
    :cond_4
    const-string v7, ""

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 129
    .local v0, "contentShadow":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 130
    invoke-super {p0}, Lorg/dom4j/tree/AbstractElement;->getText()Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 132
    :cond_0
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .locals 3
    .param p1, "node"    # Lorg/dom4j/Node;

    .prologue
    .line 676
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 678
    .local v0, "contentShadow":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 679
    check-cast v1, Ljava/util/List;

    .line 681
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 686
    .end local v1    # "list":Ljava/util/List;
    :goto_0
    return v2

    .line 683
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    const/4 v2, 0x0

    goto :goto_0

    .line 686
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public node(I)Lorg/dom4j/Node;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 647
    if-ltz p1, :cond_0

    .line 648
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 651
    .local v0, "contentShadow":Ljava/lang/Object;
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_2

    move-object v1, v0

    .line 652
    check-cast v1, Ljava/util/List;

    .line 654
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 672
    .end local v0    # "contentShadow":Ljava/lang/Object;
    .end local v1    # "list":Ljava/util/List;
    :cond_0
    :goto_0
    return-object v3

    .line 658
    .restart local v0    # "contentShadow":Ljava/lang/Object;
    .restart local v1    # "list":Ljava/util/List;
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 663
    .end local v1    # "list":Ljava/util/List;
    .local v2, "node":Ljava/lang/Object;
    :goto_1
    if-eqz v2, :cond_0

    .line 664
    instance-of v3, v2, Lorg/dom4j/Node;

    if-eqz v3, :cond_4

    .line 665
    check-cast v2, Lorg/dom4j/Node;

    .end local v2    # "node":Ljava/lang/Object;
    move-object v3, v2

    goto :goto_0

    .line 660
    :cond_2
    if-nez p1, :cond_3

    move-object v2, v0

    .restart local v2    # "node":Ljava/lang/Object;
    :goto_2
    goto :goto_1

    .end local v2    # "node":Ljava/lang/Object;
    :cond_3
    move-object v2, v3

    goto :goto_2

    .line 667
    .restart local v2    # "node":Ljava/lang/Object;
    :cond_4
    new-instance v3, Lorg/dom4j/tree/DefaultText;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/dom4j/tree/DefaultText;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public nodeCount()I
    .locals 3

    .prologue
    .line 692
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 694
    .local v0, "contentShadow":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 695
    check-cast v1, Ljava/util/List;

    .line 697
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 699
    .end local v1    # "list":Ljava/util/List;
    :goto_0
    return v2

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 704
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 706
    .local v0, "contentShadow":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 707
    check-cast v1, Ljava/util/List;

    .line 709
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 714
    .end local v1    # "list":Ljava/util/List;
    :goto_0
    return-object v2

    .line 711
    :cond_0
    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0

    .line 714
    :cond_1
    sget-object v2, Lorg/dom4j/tree/DefaultElement;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 7
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 466
    iget-object v4, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 468
    .local v4, "shadow":Ljava/lang/Object;
    instance-of v6, v4, Ljava/util/List;

    if-eqz v6, :cond_2

    move-object v1, v4

    .line 469
    check-cast v1, Ljava/util/List;

    .line 471
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 473
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_3

    .line 474
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 476
    .local v2, "object":Ljava/lang/Object;
    instance-of v6, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_1

    move-object v3, v2

    .line 477
    check-cast v3, Lorg/dom4j/ProcessingInstruction;

    .line 479
    .local v3, "pi":Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v3}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 494
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "pi":Lorg/dom4j/ProcessingInstruction;
    .end local v5    # "size":I
    :cond_0
    :goto_1
    return-object v3

    .line 473
    .restart local v0    # "i":I
    .restart local v1    # "list":Ljava/util/List;
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v5    # "size":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_2
    instance-of v6, v4, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_3

    move-object v3, v4

    .line 486
    check-cast v3, Lorg/dom4j/ProcessingInstruction;

    .line 488
    .restart local v3    # "pi":Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v3}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 494
    .end local v3    # "pi":Lorg/dom4j/ProcessingInstruction;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public processingInstructions()Ljava/util/List;
    .locals 7

    .prologue
    .line 402
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 404
    .local v1, "contentShadow":Ljava/lang/Object;
    instance-of v6, v1, Ljava/util/List;

    if-eqz v6, :cond_1

    move-object v3, v1

    .line 405
    check-cast v3, Ljava/util/List;

    .line 407
    .local v3, "list":Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 409
    .local v0, "answer":Lorg/dom4j/tree/BackedList;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 411
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 412
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 414
    .local v4, "object":Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_0

    .line 415
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 411
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "answer":Lorg/dom4j/tree/BackedList;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_1
    instance-of v6, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_3

    .line 422
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 425
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v5, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 432
    .local v5, "shadow":Ljava/lang/Object;
    instance-of v7, v5, Ljava/util/List;

    if-eqz v7, :cond_1

    move-object v2, v5

    .line 433
    check-cast v2, Ljava/util/List;

    .line 435
    .local v2, "list":Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 437
    .local v0, "answer":Lorg/dom4j/tree/BackedList;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 439
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 440
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 442
    .local v3, "object":Ljava/lang/Object;
    instance-of v7, v3, Lorg/dom4j/ProcessingInstruction;

    if-eqz v7, :cond_0

    move-object v4, v3

    .line 443
    check-cast v4, Lorg/dom4j/ProcessingInstruction;

    .line 445
    .local v4, "pi":Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v4}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 446
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 439
    .end local v4    # "pi":Lorg/dom4j/ProcessingInstruction;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "answer":Lorg/dom4j/tree/BackedList;
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v6    # "size":I
    :cond_1
    instance-of v7, v5, Lorg/dom4j/ProcessingInstruction;

    if-eqz v7, :cond_3

    move-object v4, v5

    .line 454
    check-cast v4, Lorg/dom4j/ProcessingInstruction;

    .line 456
    .restart local v4    # "pi":Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v4}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 457
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 461
    .end local v4    # "pi":Lorg/dom4j/ProcessingInstruction;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public remove(Lorg/dom4j/Attribute;)Z
    .locals 8
    .param p1, "attribute"    # Lorg/dom4j/Attribute;

    .prologue
    const/4 v7, 0x0

    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, "answer":Z
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 859
    .local v1, "attributesShadow":Ljava/lang/Object;
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 860
    check-cast v3, Ljava/util/List;

    .line 862
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 864
    if-nez v0, :cond_0

    .line 866
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 868
    .local v2, "copy":Lorg/dom4j/Attribute;
    if-eqz v2, :cond_0

    .line 869
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 871
    const/4 v0, 0x1

    .line 891
    .end local v2    # "copy":Lorg/dom4j/Attribute;
    .end local v3    # "list":Ljava/util/List;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 892
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 895
    :cond_1
    return v0

    .line 874
    :cond_2
    if-eqz v1, :cond_0

    .line 875
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 876
    iput-object v7, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 878
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v1

    .line 881
    check-cast v4, Lorg/dom4j/Attribute;

    .line 883
    .local v4, "other":Lorg/dom4j/Attribute;
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-interface {v4}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 884
    iput-object v7, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 886
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .locals 4
    .param p1, "node"    # Lorg/dom4j/Node;

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "answer":Z
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 928
    .local v1, "contentShadow":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 929
    if-ne v1, p1, :cond_2

    .line 930
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 932
    const/4 v0, 0x1

    .line 940
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 944
    :cond_1
    return v0

    .line 933
    :cond_2
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 934
    check-cast v2, Ljava/util/List;

    .line 936
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .locals 7
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 498
    iget-object v4, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 500
    .local v4, "shadow":Ljava/lang/Object;
    instance-of v6, v4, Ljava/util/List;

    if-eqz v6, :cond_1

    move-object v1, v4

    .line 501
    check-cast v1, Ljava/util/List;

    .line 503
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 506
    .local v2, "object":Ljava/lang/Object;
    instance-of v6, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_0

    move-object v3, v2

    .line 507
    check-cast v3, Lorg/dom4j/ProcessingInstruction;

    .line 509
    .local v3, "pi":Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v3}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 528
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "pi":Lorg/dom4j/ProcessingInstruction;
    :goto_0
    return v5

    .line 517
    :cond_1
    instance-of v6, v4, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_2

    move-object v3, v4

    .line 518
    check-cast v3, Lorg/dom4j/ProcessingInstruction;

    .line 520
    .restart local v3    # "pi":Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v3}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 521
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_0

    .line 528
    .end local v3    # "pi":Lorg/dom4j/ProcessingInstruction;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected setAttributeList(Ljava/util/List;)V
    .locals 0
    .param p1, "attributeList"    # Ljava/util/List;

    .prologue
    .line 1010
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 1011
    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .locals 1
    .param p1, "attributes"    # Ljava/util/List;

    .prologue
    .line 724
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 725
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    .end local p1    # "attributes":Ljava/util/List;
    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    .line 728
    .restart local p1    # "attributes":Ljava/util/List;
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 729
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 8
    .param p1, "content"    # Ljava/util/List;

    .prologue
    .line 600
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    .line 602
    instance-of v7, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v7, :cond_0

    .line 603
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    .end local p1    # "content":Ljava/util/List;
    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    .line 606
    .restart local p1    # "content":Ljava/util/List;
    :cond_0
    if-nez p1, :cond_1

    .line 607
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 636
    :goto_0
    return-void

    .line 609
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 611
    .local v5, "size":I
    invoke-virtual {p0, v5}, Lorg/dom4j/tree/DefaultElement;->createContentList(I)Ljava/util/List;

    move-result-object v1

    .line 613
    .local v1, "newContent":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_5

    .line 614
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 616
    .local v3, "object":Ljava/lang/Object;
    instance-of v7, v3, Lorg/dom4j/Node;

    if-eqz v7, :cond_4

    move-object v2, v3

    .line 617
    check-cast v2, Lorg/dom4j/Node;

    .line 618
    .local v2, "node":Lorg/dom4j/Node;
    invoke-interface {v2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    .line 620
    .local v4, "parent":Lorg/dom4j/Element;
    if-eqz v4, :cond_2

    if-eq v4, p0, :cond_2

    .line 621
    invoke-interface {v2}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "node":Lorg/dom4j/Node;
    check-cast v2, Lorg/dom4j/Node;

    .line 624
    .restart local v2    # "node":Lorg/dom4j/Node;
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    .line 613
    .end local v2    # "node":Lorg/dom4j/Node;
    .end local v4    # "parent":Lorg/dom4j/Element;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    :cond_4
    if-eqz v3, :cond_3

    .line 627
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 628
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v2

    .line 629
    .restart local v2    # "node":Lorg/dom4j/Node;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_2

    .line 634
    .end local v2    # "node":Lorg/dom4j/Node;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v6    # "text":Ljava/lang/String;
    :cond_5
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/dom4j/Document;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 110
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    .line 112
    :cond_1
    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 1
    .param p1, "parent"    # Lorg/dom4j/Element;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 92
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    .line 94
    :cond_1
    return-void
.end method

.method public setQName(Lorg/dom4j/QName;)V
    .locals 0
    .param p1, "name"    # Lorg/dom4j/QName;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 124
    return-void
.end method

.method public supportsParent()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method
