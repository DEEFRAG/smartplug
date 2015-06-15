.class public Lorg/jdom/Element;
.super Lorg/jdom/Content;
.source "Element.java"

# interfaces
.implements Lorg/jdom/Parent;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Element.java,v $ $Revision: 1.159 $ $Date: 2007/11/14 05:02:08 $ $Name: jdom_1_1 $"

.field private static final INITIAL_ARRAY_SIZE:I = 0x5


# instance fields
.field protected transient additionalNamespaces:Ljava/util/List;

.field attributes:Lorg/jdom/AttributeList;

.field content:Lorg/jdom/ContentList;

.field protected name:Ljava/lang/String;

.field protected transient namespace:Lorg/jdom/Namespace;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 106
    new-instance v0, Lorg/jdom/AttributeList;

    invoke-direct {v0, p0}, Lorg/jdom/AttributeList;-><init>(Lorg/jdom/Element;)V

    iput-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    .line 112
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x0

    check-cast v0, Lorg/jdom/Namespace;

    invoke-direct {p0, p1, v0}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v0, ""

    invoke-static {v0, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p2, p3}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom/Namespace;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 106
    new-instance v0, Lorg/jdom/AttributeList;

    invoke-direct {v0, p0}, Lorg/jdom/AttributeList;-><init>(Lorg/jdom/Element;)V

    iput-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    .line 112
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    .line 141
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->setName(Ljava/lang/String;)Lorg/jdom/Element;

    .line 142
    invoke-virtual {p0, p2}, Lorg/jdom/Element;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Element;

    .line 143
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1338
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v3

    iput-object v3, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    .line 1341
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->read()I

    move-result v2

    .line 1343
    .local v2, "size":I
    if-eqz v2, :cond_0

    .line 1344
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 1345
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1346
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    .line 1348
    .local v0, "additional":Lorg/jdom/Namespace;
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1351
    .end local v0    # "additional":Lorg/jdom/Namespace;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1312
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1316
    iget-object v3, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v3}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1317
    iget-object v3, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v3}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1319
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1320
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->write(I)V

    .line 1331
    :cond_0
    return-void

    .line 1323
    :cond_1
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1324
    .local v2, "size":I
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->write(I)V

    .line 1325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1326
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Namespace;

    .line 1327
    .local v0, "additional":Lorg/jdom/Namespace;
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1328
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addContent(ILjava/util/Collection;)Lorg/jdom/Element;
    .locals 1
    .param p1, "index"    # I
    .param p2, "newContent"    # Ljava/util/Collection;

    .prologue
    .line 861
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 862
    return-object p0
.end method

.method public addContent(ILorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 842
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    .line 843
    return-object p0
.end method

.method public addContent(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 801
    new-instance v0, Lorg/jdom/Text;

    invoke-direct {v0, p1}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public addContent(Ljava/util/Collection;)Lorg/jdom/Element;
    .locals 1
    .param p1, "newContent"    # Ljava/util/Collection;

    .prologue
    .line 827
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->addAll(Ljava/util/Collection;)Z

    .line 828
    return-object p0
.end method

.method public addContent(Lorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 811
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    .line 812
    return-object p0
.end method

.method public addNamespaceDeclaration(Lorg/jdom/Namespace;)V
    .locals 3
    .param p1, "additionalNamespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 340
    invoke-static {p1, p0}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 342
    new-instance v1, Lorg/jdom/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Lorg/jdom/Namespace;Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_0
    iget-object v1, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v1, :cond_1

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 349
    :cond_1
    iget-object v1, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1267
    invoke-super {p0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Element;

    .line 1280
    .local v2, "element":Lorg/jdom/Element;
    new-instance v4, Lorg/jdom/ContentList;

    invoke-direct {v4, v2}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v4, v2, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    .line 1281
    new-instance v4, Lorg/jdom/AttributeList;

    invoke-direct {v4, v2}, Lorg/jdom/AttributeList;-><init>(Lorg/jdom/Element;)V

    iput-object v4, v2, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    .line 1284
    iget-object v4, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    if-eqz v4, :cond_0

    .line 1285
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v4}, Lorg/jdom/AttributeList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1286
    iget-object v4, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v4, v3}, Lorg/jdom/AttributeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    .line 1287
    .local v0, "attribute":Lorg/jdom/Attribute;
    iget-object v4, v2, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0}, Lorg/jdom/Attribute;->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jdom/AttributeList;->add(Ljava/lang/Object;)Z

    .line 1285
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1292
    .end local v0    # "attribute":Lorg/jdom/Attribute;
    .end local v3    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 1293
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v2, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 1297
    :cond_1
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    if-eqz v4, :cond_2

    .line 1298
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4}, Lorg/jdom/ContentList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1299
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4, v3}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Content;

    .line 1300
    .local v1, "c":Lorg/jdom/Content;
    iget-object v4, v2, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    .line 1298
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1304
    .end local v1    # "c":Lorg/jdom/Content;
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public cloneContent()Ljava/util/List;
    .locals 5

    .prologue
    .line 866
    invoke-virtual {p0}, Lorg/jdom/Element;->getContentSize()I

    move-result v3

    .line 867
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 868
    .local v2, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 869
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getContent(I)Lorg/jdom/Content;

    move-result-object v0

    .line 870
    .local v0, "child":Lorg/jdom/Content;
    invoke-virtual {v0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 872
    .end local v0    # "child":Lorg/jdom/Content;
    :cond_0
    return-object v2
.end method

.method public getAdditionalNamespaces()Ljava/util/List;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 384
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 386
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 969
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 983
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/AttributeList;->get(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 997
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 1012
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0, p2}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1027
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 1043
    iget-object v1, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v1, p1, p2}, Lorg/jdom/AttributeList;->get(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    .line 1044
    .local v0, "attribute":Lorg/jdom/Attribute;
    if-nez v0, :cond_0

    .line 1048
    .end local p3    # "def":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "def":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1483
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1465
    iget-object v2, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v3, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v3, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    invoke-virtual {v2, v3}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    .line 1466
    .local v0, "elements":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1467
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1468
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Element;

    .line 1470
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    .line 523
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 524
    const/4 v1, 0x0

    .line 526
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildText(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 573
    invoke-virtual {p0, p1, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    .line 574
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 575
    const/4 v1, 0x0

    .line 577
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildTextNormalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    .line 557
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 558
    const/4 v1, 0x0

    .line 560
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildTextNormalize(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 607
    invoke-virtual {p0, p1, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    .line 608
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 609
    const/4 v1, 0x0

    .line 611
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    .line 540
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 541
    const/4 v1, 0x0

    .line 543
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildTextTrim(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 590
    invoke-virtual {p0, p1, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    .line 591
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 592
    const/4 v1, 0x0

    .line 594
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 2

    .prologue
    .line 1410
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v1, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v1}, Lorg/jdom/filter/ElementFilter;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1430
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1451
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v1, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v1, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    return-object v0
.end method

.method public getContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 1
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 677
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent(I)Lorg/jdom/Content;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 876
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    return-object v0
.end method

.method public getContentSize()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    return v0
.end method

.method public getDescendants()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1359
    new-instance v0, Lorg/jdom/DescendantIterator;

    invoke-direct {v0, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    return-object v0
.end method

.method public getDescendants(Lorg/jdom/filter/Filter;)Ljava/util/Iterator;
    .locals 2
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 1372
    new-instance v0, Lorg/jdom/DescendantIterator;

    invoke-direct {v0, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    .line 1373
    .local v0, "iterator":Ljava/util/Iterator;
    new-instance v1, Lorg/jdom/FilterIterator;

    invoke-direct {v1, v0, p1}, Lorg/jdom/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/jdom/filter/Filter;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/jdom/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jdom/Namespace;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 271
    if-nez p1, :cond_1

    move-object v1, v2

    .line 300
    :cond_0
    :goto_0
    return-object v1

    .line 275
    :cond_1
    const-string v3, "xml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    sget-object v1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0}, Lorg/jdom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    invoke-virtual {p0}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v1

    goto :goto_0

    .line 286
    :cond_3
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 288
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    .line 289
    .local v1, "ns":Lorg/jdom/Namespace;
    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v0    # "i":I
    .end local v1    # "ns":Lorg/jdom/Namespace;
    :cond_4
    iget-object v3, p0, Lorg/jdom/Element;->parent:Lorg/jdom/Parent;

    instance-of v3, v3, Lorg/jdom/Element;

    if-eqz v3, :cond_5

    .line 297
    iget-object v2, p0, Lorg/jdom/Element;->parent:Lorg/jdom/Parent;

    check-cast v2, Lorg/jdom/Element;

    invoke-virtual {v2, p1}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v2

    .line 300
    goto :goto_0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    const-string v0, ""

    iget-object v1, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/Element;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 452
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4}, Lorg/jdom/ContentList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 453
    const-string v4, ""

    .line 483
    :goto_0
    return-object v4

    .line 457
    :cond_0
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4}, Lorg/jdom/ContentList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 458
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 459
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Lorg/jdom/Text;

    if-eqz v4, :cond_1

    .line 460
    check-cast v2, Lorg/jdom/Text;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 463
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 468
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .local v3, "textContent":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 471
    .local v0, "hasText":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4}, Lorg/jdom/ContentList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 472
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 473
    .restart local v2    # "obj":Ljava/lang/Object;
    instance-of v4, v2, Lorg/jdom/Text;

    if-eqz v4, :cond_3

    .line 474
    check-cast v2, Lorg/jdom/Text;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    const/4 v0, 0x1

    .line 471
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    :cond_4
    if-nez v0, :cond_5

    .line 480
    const-string v4, ""

    goto :goto_0

    .line 483
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextNormalize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 401
    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Content;

    .line 403
    .local v1, "child":Lorg/jdom/Content;
    instance-of v3, v1, Lorg/jdom/Element;

    if-nez v3, :cond_1

    instance-of v3, v1, Lorg/jdom/Text;

    if-eqz v3, :cond_0

    .line 404
    :cond_1
    invoke-virtual {v1}, Lorg/jdom/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 407
    .end local v1    # "child":Lorg/jdom/Content;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public indexOf(Lorg/jdom/Content;)I
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAncestor(Lorg/jdom/Element;)Z
    .locals 2
    .param p1, "element"    # Lorg/jdom/Element;

    .prologue
    .line 934
    invoke-virtual {p1}, Lorg/jdom/Element;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    .line 935
    .local v0, "p":Lorg/jdom/Parent;
    :goto_0
    instance-of v1, v0, Lorg/jdom/Element;

    if-eqz v1, :cond_1

    .line 936
    if-ne v0, p0, :cond_0

    .line 937
    const/4 v1, 0x1

    .line 941
    :goto_1
    return v1

    .line 939
    :cond_0
    invoke-interface {v0}, Lorg/jdom/Parent;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    goto :goto_0

    .line 941
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isRootElement()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/jdom/Element;->parent:Lorg/jdom/Parent;

    instance-of v0, v0, Lorg/jdom/Document;

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1195
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->removeAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/AttributeList;->remove(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Lorg/jdom/Attribute;)Z
    .locals 1
    .param p1, "attribute"    # Lorg/jdom/Attribute;

    .prologue
    .line 1222
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1}, Lorg/jdom/AttributeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeChild(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1497
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->removeChild(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeChild(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1512
    new-instance v0, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v0, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 1513
    .local v0, "filter":Lorg/jdom/filter/Filter;
    iget-object v3, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v3, v0}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v2

    .line 1514
    .local v2, "old":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1515
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1517
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1518
    const/4 v3, 0x1

    .line 1521
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeChildren(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1535
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->removeChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1550
    const/4 v0, 0x0

    .line 1552
    .local v0, "deletedSome":Z
    new-instance v1, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v1, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 1553
    .local v1, "filter":Lorg/jdom/filter/Filter;
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4, v1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v3

    .line 1554
    .local v3, "old":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1555
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1556
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1557
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1558
    const/4 v0, 0x1

    goto :goto_0

    .line 1561
    :cond_0
    return v0
.end method

.method public removeContent()Ljava/util/List;
    .locals 2

    .prologue
    .line 686
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 687
    .local v0, "old":Ljava/util/List;
    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->clear()V

    .line 688
    return-object v0
.end method

.method public removeContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 4
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 698
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v2, "old":Ljava/util/List;
    iget-object v3, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v3, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 700
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    .line 702
    .local v0, "child":Lorg/jdom/Content;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 705
    .end local v0    # "child":Lorg/jdom/Content;
    :cond_0
    return-object v2
.end method

.method public removeContent(I)Lorg/jdom/Content;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 889
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    return-object v0
.end method

.method public removeContent(Lorg/jdom/Content;)Z
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 885
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNamespaceDeclaration(Lorg/jdom/Namespace;)V
    .locals 1
    .param p1, "additionalNamespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 363
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1126
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom/Attribute;

    move-result-object v0

    .line 1127
    .local v0, "attribute":Lorg/jdom/Attribute;
    if-nez v0, :cond_0

    .line 1128
    new-instance v1, Lorg/jdom/Attribute;

    invoke-direct {v1, p1, p2}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    .local v1, "newAttribute":Lorg/jdom/Attribute;
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;

    .line 1134
    .end local v1    # "newAttribute":Lorg/jdom/Attribute;
    :goto_0
    return-object p0

    .line 1131
    :cond_0
    invoke-virtual {v0, p2}, Lorg/jdom/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom/Attribute;

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1157
    invoke-virtual {p0, p1, p3}, Lorg/jdom/Element;->getAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v0

    .line 1158
    .local v0, "attribute":Lorg/jdom/Attribute;
    if-nez v0, :cond_0

    .line 1159
    new-instance v1, Lorg/jdom/Attribute;

    invoke-direct {v1, p1, p2, p3}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 1160
    .local v1, "newAttribute":Lorg/jdom/Attribute;
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;

    .line 1165
    .end local v1    # "newAttribute":Lorg/jdom/Attribute;
    :goto_0
    return-object p0

    .line 1162
    :cond_0
    invoke-virtual {v0, p2}, Lorg/jdom/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom/Attribute;

    goto :goto_0
.end method

.method public setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;
    .locals 1
    .param p1, "attribute"    # Lorg/jdom/Attribute;

    .prologue
    .line 1181
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1}, Lorg/jdom/AttributeList;->add(Ljava/lang/Object;)Z

    .line 1182
    return-object p0
.end method

.method public setAttributes(Ljava/util/Collection;)Lorg/jdom/Element;
    .locals 1
    .param p1, "newAttributes"    # Ljava/util/Collection;

    .prologue
    .line 1095
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1}, Lorg/jdom/AttributeList;->clearAndSet(Ljava/util/Collection;)V

    .line 1096
    return-object p0
.end method

.method public setAttributes(Ljava/util/List;)Lorg/jdom/Element;
    .locals 1
    .param p1, "newAttributes"    # Ljava/util/List;

    .prologue
    .line 1107
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->setAttributes(Ljava/util/Collection;)Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public setContent(ILorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 764
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 765
    return-object p0
.end method

.method public setContent(Ljava/util/Collection;)Lorg/jdom/Element;
    .locals 1
    .param p1, "newContent"    # Ljava/util/Collection;

    .prologue
    .line 744
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->clearAndSet(Ljava/util/Collection;)V

    .line 745
    return-object p0
.end method

.method public setContent(Lorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 920
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->clear()V

    .line 921
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    .line 922
    return-object p0
.end method

.method public setContent(ILjava/util/Collection;)Lorg/jdom/Parent;
    .locals 1
    .param p1, "index"    # I
    .param p2, "newContent"    # Ljava/util/Collection;

    .prologue
    .line 785
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 787
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p1}, Lorg/jdom/Verifier;->checkElementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 207
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "element"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    iput-object p1, p0, Lorg/jdom/Element;->name:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 0
    .param p1, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    sget-object p1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 234
    :cond_0
    iput-object p1, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    .line 235
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 629
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->clear()V

    .line 631
    if-eqz p1, :cond_0

    .line 632
    new-instance v0, Lorg/jdom/Text;

    invoke-direct {v0, p1}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    .line 635
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1238
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, "[Element: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1242
    .local v1, "stringForm":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, "nsuri":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1244
    const-string v2, " [Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1249
    :cond_0
    const-string v2, "/>]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1251
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
