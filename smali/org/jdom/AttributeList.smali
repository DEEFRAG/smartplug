.class Lorg/jdom/AttributeList;
.super Ljava/util/AbstractList;
.source "AttributeList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/List;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: AttributeList.java,v $ $Revision: 1.24 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"

.field private static final INITIAL_ARRAY_SIZE:I = 0x5


# instance fields
.field private elementData:[Lorg/jdom/Attribute;

.field private parent:Lorg/jdom/Element;

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/jdom/Element;)V
    .locals 0
    .param p1, "parent"    # Lorg/jdom/Element;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    .line 103
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6
    .param p1, "minCapacity"    # I

    .prologue
    const/4 v5, 0x0

    .line 326
    iget-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    if-nez v3, :cond_1

    .line 327
    const/4 v3, 0x5

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [Lorg/jdom/Attribute;

    iput-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    array-length v1, v3

    .line 331
    .local v1, "oldCapacity":I
    if-le p1, v1, :cond_0

    .line 332
    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    .line 333
    .local v2, "oldData":[Lorg/jdom/Attribute;
    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 334
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_2

    .line 335
    move v0, p1

    .line 336
    :cond_2
    new-array v3, v0, [Lorg/jdom/Attribute;

    iput-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    .line 337
    iget-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iget v4, p0, Lorg/jdom/AttributeList;->size:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private indexOfDuplicate(Lorg/jdom/Attribute;)I
    .locals 3
    .param p1, "attribute"    # Lorg/jdom/Attribute;

    .prologue
    .line 496
    const/4 v0, -0x1

    .line 497
    .local v0, "duplicate":I
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    .line 499
    .local v2, "namespace":Lorg/jdom/Namespace;
    invoke-virtual {p0, v1, v2}, Lorg/jdom/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom/Namespace;)I

    move-result v0

    .line 500
    return v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 158
    instance-of v2, p2, Lorg/jdom/Attribute;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 159
    check-cast v0, Lorg/jdom/Attribute;

    .line 160
    .local v0, "attribute":Lorg/jdom/Attribute;
    invoke-direct {p0, v0}, Lorg/jdom/AttributeList;->indexOfDuplicate(Lorg/jdom/Attribute;)I

    move-result v1

    .line 161
    .local v1, "duplicate":I
    if-ltz v1, :cond_0

    .line 162
    new-instance v2, Lorg/jdom/IllegalAddException;

    const-string v3, "Cannot add duplicate attribute"

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/AttributeList;->add(ILorg/jdom/Attribute;)V

    .line 174
    iget v2, p0, Lorg/jdom/AttributeList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom/AttributeList;->modCount:I

    .line 175
    return-void

    .line 166
    .end local v0    # "attribute":Lorg/jdom/Attribute;
    .end local v1    # "duplicate":I
    :cond_1
    if-nez p2, :cond_2

    .line 167
    new-instance v2, Lorg/jdom/IllegalAddException;

    const-string v3, "Cannot add null attribute"

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_2
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is not an attribute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method add(ILorg/jdom/Attribute;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "attribute"    # Lorg/jdom/Attribute;

    .prologue
    .line 186
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Lorg/jdom/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The attribute already has an existing parent \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    iget-object v1, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-static {p2, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Attribute;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 194
    new-instance v1, Lorg/jdom/IllegalAddException;

    iget-object v2, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-direct {v1, v2, p2, v0}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Lorg/jdom/Attribute;Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Lorg/jdom/AttributeList;->size:I

    if-le p1, v1, :cond_3

    .line 198
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_3
    iget-object v1, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-virtual {p2, v1}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    .line 204
    iget v1, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/jdom/AttributeList;->ensureCapacity(I)V

    .line 205
    iget v1, p0, Lorg/jdom/AttributeList;->size:I

    if-ne p1, v1, :cond_4

    .line 206
    iget-object v1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iget v2, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jdom/AttributeList;->size:I

    aput-object p2, v1, v2

    .line 212
    :goto_0
    iget v1, p0, Lorg/jdom/AttributeList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/AttributeList;->modCount:I

    .line 213
    return-void

    .line 208
    :cond_4
    iget-object v1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lorg/jdom/AttributeList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aput-object p2, v1, p1

    .line 210
    iget v1, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/AttributeList;->size:I

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 127
    instance-of v2, p1, Lorg/jdom/Attribute;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 128
    check-cast v0, Lorg/jdom/Attribute;

    .line 129
    .local v0, "attribute":Lorg/jdom/Attribute;
    invoke-direct {p0, v0}, Lorg/jdom/AttributeList;->indexOfDuplicate(Lorg/jdom/Attribute;)I

    move-result v1

    .line 130
    .local v1, "duplicate":I
    if-gez v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lorg/jdom/AttributeList;->add(ILorg/jdom/Attribute;)V

    .line 145
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 134
    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/jdom/AttributeList;->set(ILorg/jdom/Attribute;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v0    # "attribute":Lorg/jdom/Attribute;
    .end local v1    # "duplicate":I
    :cond_1
    if-nez p1, :cond_2

    .line 138
    new-instance v2, Lorg/jdom/IllegalAddException;

    const-string v3, "Cannot add null attribute"

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_2
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is not an attribute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 7
    .param p1, "index"    # I
    .param p2, "collection"    # Ljava/util/Collection;

    .prologue
    .line 238
    if-ltz p1, :cond_0

    iget v4, p0, Lorg/jdom/AttributeList;->size:I

    if-le p1, v4, :cond_1

    .line 239
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 243
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 244
    :cond_2
    const/4 v4, 0x0

    .line 265
    :goto_0
    return v4

    .line 246
    :cond_3
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lorg/jdom/AttributeList;->ensureCapacity(I)V

    .line 248
    const/4 v0, 0x0

    .line 251
    .local v0, "count":I
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 252
    .local v2, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 253
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 254
    .local v3, "obj":Ljava/lang/Object;
    add-int v4, p1, v0

    invoke-virtual {p0, v4, v3}, Lorg/jdom/AttributeList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 256
    goto :goto_1

    .line 258
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "exception":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 260
    invoke-virtual {p0, p1}, Lorg/jdom/AttributeList;->remove(I)Ljava/lang/Object;

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 262
    :cond_4
    throw v1

    .line 265
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    .local v2, "i":Ljava/util/Iterator;
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/jdom/AttributeList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    if-eqz v2, :cond_1

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/jdom/AttributeList;->size:I

    if-ge v1, v2, :cond_0

    .line 274
    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v0, v2, v1

    .line 275
    .local v0, "attribute":Lorg/jdom/Attribute;
    invoke-virtual {v0, v3}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "attribute":Lorg/jdom/Attribute;
    :cond_0
    iput-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    .line 278
    const/4 v2, 0x0

    iput v2, p0, Lorg/jdom/AttributeList;->size:I

    .line 280
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lorg/jdom/AttributeList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom/AttributeList;->modCount:I

    .line 281
    return-void
.end method

.method clearAndSet(Ljava/util/Collection;)V
    .locals 7
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 291
    iget-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    .line 292
    .local v3, "old":[Lorg/jdom/Attribute;
    iget v4, p0, Lorg/jdom/AttributeList;->size:I

    .line 294
    .local v4, "oldSize":I
    iput-object v6, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    .line 295
    iput v5, p0, Lorg/jdom/AttributeList;->size:I

    .line 297
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/jdom/AttributeList;->ensureCapacity(I)V

    .line 300
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5, p1}, Lorg/jdom/AttributeList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    if-eqz v3, :cond_1

    .line 310
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 311
    aget-object v0, v3, v2

    .line 312
    .local v0, "attribute":Lorg/jdom/Attribute;
    invoke-virtual {v0, v6}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "attribute":Lorg/jdom/Attribute;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 303
    .local v1, "exception":Ljava/lang/RuntimeException;
    iput-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    .line 304
    iput v4, p0, Lorg/jdom/AttributeList;->size:I

    .line 305
    throw v1

    .line 315
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :cond_1
    iget v5, p0, Lorg/jdom/AttributeList;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jdom/AttributeList;->modCount:I

    .line 316
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 349
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    if-lt p1, v0, :cond_1

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v0, v0, p1

    return-object v0
.end method

.method get(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 366
    invoke-virtual {p0, p1, p2}, Lorg/jdom/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom/Namespace;)I

    move-result v0

    .line 367
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 368
    const/4 v1, 0x0

    .line 370
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method indexOf(Ljava/lang/String;Lorg/jdom/Namespace;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 378
    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, "uri":Ljava/lang/String;
    iget-object v5, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    if-eqz v5, :cond_1

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lorg/jdom/AttributeList;->size:I

    if-ge v0, v5, :cond_1

    .line 381
    iget-object v5, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v1, v5, v0

    .line 382
    .local v1, "old":Lorg/jdom/Attribute;
    invoke-virtual {v1}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "oldURI":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "oldName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    .end local v0    # "i":I
    .end local v1    # "old":Lorg/jdom/Attribute;
    .end local v2    # "oldName":Ljava/lang/String;
    .end local v3    # "oldURI":Ljava/lang/String;
    :goto_1
    return v0

    .line 380
    .restart local v0    # "i":I
    .restart local v1    # "old":Lorg/jdom/Attribute;
    .restart local v2    # "oldName":Ljava/lang/String;
    .restart local v3    # "oldURI":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "i":I
    .end local v1    # "old":Lorg/jdom/Attribute;
    .end local v2    # "oldName":Ljava/lang/String;
    .end local v3    # "oldURI":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 399
    if-ltz p1, :cond_0

    iget v2, p0, Lorg/jdom/AttributeList;->size:I

    if-lt p1, v2, :cond_1

    .line 400
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_1
    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v1, v2, p1

    .line 404
    .local v1, "old":Lorg/jdom/Attribute;
    invoke-virtual {v1, v5}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    .line 405
    iget v2, p0, Lorg/jdom/AttributeList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 406
    .local v0, "numMoved":I
    if-lez v0, :cond_2

    .line 407
    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    :cond_2
    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iget v3, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jdom/AttributeList;->size:I

    aput-object v5, v2, v3

    .line 409
    iget v2, p0, Lorg/jdom/AttributeList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom/AttributeList;->modCount:I

    .line 410
    return-object v1
.end method

.method remove(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 422
    invoke-virtual {p0, p1, p2}, Lorg/jdom/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom/Namespace;)I

    move-result v0

    .line 423
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 424
    const/4 v1, 0x0

    .line 427
    :goto_0
    return v1

    .line 426
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdom/AttributeList;->remove(I)Ljava/lang/Object;

    .line 427
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 440
    instance-of v2, p2, Lorg/jdom/Attribute;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 441
    check-cast v0, Lorg/jdom/Attribute;

    .line 442
    .local v0, "attribute":Lorg/jdom/Attribute;
    invoke-direct {p0, v0}, Lorg/jdom/AttributeList;->indexOfDuplicate(Lorg/jdom/Attribute;)I

    move-result v1

    .line 443
    .local v1, "duplicate":I
    if-ltz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 444
    new-instance v2, Lorg/jdom/IllegalAddException;

    const-string v3, "Cannot set duplicate attribute"

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/AttributeList;->set(ILorg/jdom/Attribute;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 448
    .end local v0    # "attribute":Lorg/jdom/Attribute;
    .end local v1    # "duplicate":I
    :cond_1
    if-nez p2, :cond_2

    .line 449
    new-instance v2, Lorg/jdom/IllegalAddException;

    const-string v3, "Cannot add null attribute"

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_2
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is not an attribute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method set(ILorg/jdom/Attribute;)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "attribute"    # Lorg/jdom/Attribute;

    .prologue
    .line 468
    if-ltz p1, :cond_0

    iget v2, p0, Lorg/jdom/AttributeList;->size:I

    if-lt p1, v2, :cond_1

    .line 469
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    :cond_1
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 473
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The attribute already has an existing parent \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    :cond_2
    iget-object v2, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-static {p2, v2}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Attribute;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 480
    new-instance v2, Lorg/jdom/IllegalAddException;

    iget-object v3, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-direct {v2, v3, p2, v1}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Lorg/jdom/Attribute;Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_3
    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v0, v2, p1

    .line 484
    .local v0, "old":Lorg/jdom/Attribute;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    .line 486
    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aput-object p2, v2, p1

    .line 487
    iget-object v2, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-virtual {p2, v2}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    .line 488
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final uncheckedAddAttribute(Lorg/jdom/Attribute;)V
    .locals 3
    .param p1, "a"    # Lorg/jdom/Attribute;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    iput-object v0, p1, Lorg/jdom/Attribute;->parent:Lorg/jdom/Element;

    .line 113
    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jdom/AttributeList;->ensureCapacity(I)V

    .line 114
    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iget v1, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom/AttributeList;->size:I

    aput-object p1, v0, v1

    .line 115
    iget v0, p0, Lorg/jdom/AttributeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom/AttributeList;->modCount:I

    .line 116
    return-void
.end method
