.class public Lorg/jdom/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lorg/jdom/Parent;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Document.java,v $ $Revision: 1.85 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"


# instance fields
.field protected baseURI:Ljava/lang/String;

.field content:Lorg/jdom/ContentList;

.field private propertyMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    .line 88
    iput-object v1, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1, "content"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    .line 88
    iput-object v1, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    .line 169
    invoke-virtual {p0, p1}, Lorg/jdom/Document;->setContent(Ljava/util/Collection;)Lorg/jdom/Document;

    .line 170
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom/Element;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom/Document;-><init>(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;Lorg/jdom/DocType;)V
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom/Element;
    .param p2, "docType"    # Lorg/jdom/DocType;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jdom/Document;-><init>(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)V
    .locals 2
    .param p1, "rootElement"    # Lorg/jdom/Element;
    .param p2, "docType"    # Lorg/jdom/DocType;
    .param p3, "baseURI"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    .line 88
    iput-object v1, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    .line 119
    :cond_0
    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {p0, p2}, Lorg/jdom/Document;->setDocType(Lorg/jdom/DocType;)Lorg/jdom/Document;

    .line 122
    :cond_1
    if-eqz p3, :cond_2

    .line 123
    invoke-virtual {p0, p3}, Lorg/jdom/Document;->setBaseURI(Ljava/lang/String;)V

    .line 125
    :cond_2
    return-void
.end method


# virtual methods
.method public addContent(ILjava/util/Collection;)Lorg/jdom/Document;
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # Ljava/util/Collection;

    .prologue
    .line 369
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 370
    return-object p0
.end method

.method public addContent(ILorg/jdom/Content;)Lorg/jdom/Document;
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 350
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    .line 351
    return-object p0
.end method

.method public addContent(Ljava/util/Collection;)Lorg/jdom/Document;
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 335
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->addAll(Ljava/util/Collection;)Z

    .line 336
    return-object p0
.end method

.method public addContent(Lorg/jdom/Content;)Lorg/jdom/Document;
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 319
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    .line 320
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 667
    const/4 v2, 0x0

    .line 670
    .local v2, "doc":Lorg/jdom/Document;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/jdom/Document;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    new-instance v8, Lorg/jdom/ContentList;

    invoke-direct {v8, v2}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v8, v2, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    .line 681
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v8, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v8}, Lorg/jdom/ContentList;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 682
    iget-object v8, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v8, v5}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 683
    .local v6, "obj":Ljava/lang/Object;
    instance-of v8, v6, Lorg/jdom/Element;

    if-eqz v8, :cond_1

    .line 684
    check-cast v6, Lorg/jdom/Element;

    .end local v6    # "obj":Ljava/lang/Object;
    invoke-virtual {v6}, Lorg/jdom/Element;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Element;

    .line 685
    .local v4, "element":Lorg/jdom/Element;
    iget-object v8, v2, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v8, v4}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v4    # "element":Lorg/jdom/Element;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 687
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v8, v6, Lorg/jdom/Comment;

    if-eqz v8, :cond_2

    .line 688
    check-cast v6, Lorg/jdom/Comment;

    .end local v6    # "obj":Ljava/lang/Object;
    invoke-virtual {v6}, Lorg/jdom/Comment;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Comment;

    .line 689
    .local v1, "comment":Lorg/jdom/Comment;
    iget-object v8, v2, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v8, v1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 691
    .end local v1    # "comment":Lorg/jdom/Comment;
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v8, v6, Lorg/jdom/ProcessingInstruction;

    if-eqz v8, :cond_3

    .line 692
    check-cast v6, Lorg/jdom/ProcessingInstruction;

    .end local v6    # "obj":Ljava/lang/Object;
    invoke-virtual {v6}, Lorg/jdom/ProcessingInstruction;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom/ProcessingInstruction;

    .line 694
    .local v7, "pi":Lorg/jdom/ProcessingInstruction;
    iget-object v8, v2, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v8, v7}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 696
    .end local v7    # "pi":Lorg/jdom/ProcessingInstruction;
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v8, v6, Lorg/jdom/DocType;

    if-eqz v8, :cond_0

    .line 697
    check-cast v6, Lorg/jdom/DocType;

    .end local v6    # "obj":Ljava/lang/Object;
    invoke-virtual {v6}, Lorg/jdom/DocType;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom/DocType;

    .line 698
    .local v3, "dt":Lorg/jdom/DocType;
    iget-object v8, v2, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v8, v3}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 702
    .end local v3    # "dt":Lorg/jdom/DocType;
    :cond_4
    return-object v2

    .line 671
    .end local v5    # "i":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public cloneContent()Ljava/util/List;
    .locals 5

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/jdom/Document;->getContentSize()I

    move-result v3

    .line 375
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .local v2, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 377
    invoke-virtual {p0, v1}, Lorg/jdom/Document;->getContent(I)Lorg/jdom/Content;

    move-result-object v0

    .line 378
    .local v0, "child":Lorg/jdom/Content;
    invoke-virtual {v0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "child":Lorg/jdom/Content;
    :cond_0
    return-object v2
.end method

.method public detachRootElement()Lorg/jdom/Element;
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 251
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 253
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdom/Document;->removeContent(I)Lorg/jdom/Content;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 649
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lorg/jdom/Document;->hasRootElement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root element not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    return-object v0
.end method

.method public getContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 2
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/jdom/Document;->hasRootElement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root element not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent(I)Lorg/jdom/Content;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    return-object v0
.end method

.method public getContentSize()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    return v0
.end method

.method public getDescendants()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 711
    new-instance v0, Lorg/jdom/DescendantIterator;

    invoke-direct {v0, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    return-object v0
.end method

.method public getDescendants(Lorg/jdom/filter/Filter;)Ljava/util/Iterator;
    .locals 2
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 724
    new-instance v0, Lorg/jdom/FilterIterator;

    new-instance v1, Lorg/jdom/DescendantIterator;

    invoke-direct {v1, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    invoke-direct {v0, v1, p1}, Lorg/jdom/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/jdom/filter/Filter;)V

    return-object v0
.end method

.method public getDocType()Lorg/jdom/DocType;
    .locals 2

    .prologue
    .line 264
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    .line 265
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 266
    const/4 v1, 0x0

    .line 269
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/DocType;

    goto :goto_0
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 0

    .prologue
    .line 737
    return-object p0
.end method

.method public getParent()Lorg/jdom/Parent;
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 764
    iget-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 765
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRootElement()Lorg/jdom/Element;
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 217
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 218
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Root element not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_0
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    return-object v1
.end method

.method public hasRootElement()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 658
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/jdom/Content;)I
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public removeContent()Ljava/util/List;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 438
    .local v0, "old":Ljava/util/List;
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->clear()V

    .line 439
    return-object v0
.end method

.method public removeContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 4
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v2, "old":Ljava/util/List;
    iget-object v3, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v3, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 451
    .local v1, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    .line 453
    .local v0, "child":Lorg/jdom/Content;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 456
    .end local v0    # "child":Lorg/jdom/Content;
    :cond_0
    return-object v2
.end method

.method public removeContent(I)Lorg/jdom/Content;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    return-object v0
.end method

.method public removeContent(Lorg/jdom/Content;)Z
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 565
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setBaseURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setContent(ILjava/util/Collection;)Lorg/jdom/Document;
    .locals 1
    .param p1, "index"    # I
    .param p2, "collection"    # Ljava/util/Collection;

    .prologue
    .line 559
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 561
    return-object p0
.end method

.method public setContent(ILorg/jdom/Content;)Lorg/jdom/Document;
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 538
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-object p0
.end method

.method public setContent(Ljava/util/Collection;)Lorg/jdom/Document;
    .locals 1
    .param p1, "newContent"    # Ljava/util/Collection;

    .prologue
    .line 494
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->clearAndSet(Ljava/util/Collection;)V

    .line 495
    return-object p0
.end method

.method public setContent(Lorg/jdom/Content;)Lorg/jdom/Document;
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 600
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->clear()V

    .line 601
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    .line 602
    return-object p0
.end method

.method public setDocType(Lorg/jdom/DocType;)Lorg/jdom/Document;
    .locals 3
    .param p1, "docType"    # Lorg/jdom/DocType;

    .prologue
    .line 287
    if-nez p1, :cond_1

    .line 289
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    .line 290
    .local v0, "docTypeIndex":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 308
    :cond_0
    :goto_0
    return-object p0

    .line 294
    .end local v0    # "docTypeIndex":I
    :cond_1
    invoke-virtual {p1}, Lorg/jdom/DocType;->getParent()Lorg/jdom/Parent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 295
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "The DocType already is attached to a document"

    invoke-direct {v1, p1, v2}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/DocType;Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_2
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    .line 301
    .restart local v0    # "docTypeIndex":I
    if-gez v0, :cond_3

    .line 302
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 749
    iget-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    .line 752
    :cond_0
    iget-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    return-void
.end method

.method public setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;
    .locals 2
    .param p1, "rootElement"    # Lorg/jdom/Element;

    .prologue
    .line 234
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 235
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 236
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    return-object p0

    .line 239
    :cond_0
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 616
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "[Document: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 619
    .local v2, "stringForm":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v0

    .line 620
    .local v0, "docType":Lorg/jdom/DocType;
    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Lorg/jdom/DocType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    :goto_0
    invoke-virtual {p0}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v1

    .line 628
    .local v1, "rootElement":Lorg/jdom/Element;
    if-eqz v1, :cond_1

    .line 629
    const-string v3, "Root is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jdom/Element;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    :goto_1
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 624
    .end local v1    # "rootElement":Lorg/jdom/Element;
    :cond_0
    const-string v3, " No DOCTYPE declaration, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 632
    .restart local v1    # "rootElement":Lorg/jdom/Element;
    :cond_1
    const-string v3, " No root element"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
