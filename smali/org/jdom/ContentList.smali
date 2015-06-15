.class final Lorg/jdom/ContentList;
.super Ljava/util/AbstractList;
.source "ContentList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/ContentList$FilterListIterator;,
        Lorg/jdom/ContentList$FilterList;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ContentList.java,v $ $Revision: 1.42 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"

.field private static final INITIAL_ARRAY_SIZE:I = 0x5

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private elementData:[Lorg/jdom/Content;

.field private parent:Lorg/jdom/Parent;

.field private size:I


# direct methods
.method constructor <init>(Lorg/jdom/Parent;)V
    .locals 0
    .param p1, "parent"    # Lorg/jdom/Parent;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    .line 99
    return-void
.end method

.method static access$000(Lorg/jdom/ContentList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom/ContentList;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/jdom/ContentList;->getModCount()I

    move-result v0

    return v0
.end method

.method static access$100(Lorg/jdom/ContentList;)[Lorg/jdom/Content;
    .locals 1
    .param p0, "x0"    # Lorg/jdom/ContentList;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    return-object v0
.end method

.method static access$200(Lorg/jdom/ContentList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom/ContentList;

    .prologue
    .line 80
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    return v0
.end method

.method private documentCanContain(ILorg/jdom/Content;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/IllegalAddException;
        }
    .end annotation

    .prologue
    .line 143
    instance-of v1, p2, Lorg/jdom/Element;

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v1

    if-ltz v1, :cond_0

    .line 145
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "Cannot add a second root element, only one is allowed"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 149
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "A root element cannot be added before the DocType"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_1
    instance-of v1, p2, Lorg/jdom/DocType;

    if-eqz v1, :cond_3

    .line 154
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v1

    if-ltz v1, :cond_2

    .line 155
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "Cannot add a second doctype, only one is allowed"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_2
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 159
    .local v0, "firstElt":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ge v0, p1, :cond_3

    .line 160
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "A DocType cannot be added after the root element"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    .end local v0    # "firstElt":I
    :cond_3
    instance-of v1, p2, Lorg/jdom/CDATA;

    if-eqz v1, :cond_4

    .line 165
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "A CDATA is not allowed at the document root"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_4
    instance-of v1, p2, Lorg/jdom/Text;

    if-eqz v1, :cond_5

    .line 169
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "A Text is not allowed at the document root"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_5
    instance-of v1, p2, Lorg/jdom/EntityRef;

    if-eqz v1, :cond_6

    .line 173
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "An EntityRef is not allowed at the document root"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_6
    return-void
.end method

.method private static elementCanContain(ILorg/jdom/Content;)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "child"    # Lorg/jdom/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/IllegalAddException;
        }
    .end annotation

    .prologue
    .line 178
    instance-of v0, p1, Lorg/jdom/DocType;

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lorg/jdom/IllegalAddException;

    const-string v1, "A DocType is not allowed except at the document level"

    invoke-direct {v0, v1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-void
.end method

.method private getModCount()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lorg/jdom/ContentList;->modCount:I

    return v0
.end method

.method private static removeParent(Lorg/jdom/Content;)V
    .locals 1
    .param p0, "c"    # Lorg/jdom/Content;

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jdom/Content;->setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;

    .line 454
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 125
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "Cannot add null object"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 128
    new-instance v0, Lorg/jdom/Text;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    .local v0, "obj":Lorg/jdom/Text;
    move-object p2, v0

    .line 130
    .end local v0    # "obj":Lorg/jdom/Text;
    :cond_1
    instance-of v1, p2, Lorg/jdom/Content;

    if-eqz v1, :cond_2

    .line 131
    check-cast p2, Lorg/jdom/Content;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    .line 137
    return-void

    .line 133
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Lorg/jdom/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is of unrecognized type and cannot be added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method add(ILorg/jdom/Content;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "Cannot add null object"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v1, v1, Lorg/jdom/Document;

    if-eqz v1, :cond_1

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/jdom/ContentList;->documentCanContain(ILorg/jdom/Content;)V

    .line 202
    :goto_0
    invoke-virtual {p2}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 203
    invoke-virtual {p2}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    .line 204
    .local v0, "p":Lorg/jdom/Parent;
    instance-of v1, v0, Lorg/jdom/Document;

    if-eqz v1, :cond_2

    .line 205
    new-instance v1, Lorg/jdom/IllegalAddException;

    check-cast p2, Lorg/jdom/Element;

    .end local p2    # "child":Lorg/jdom/Content;
    const-string v2, "The Content already has an existing parent document"

    invoke-direct {v1, p2, v2}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "p":Lorg/jdom/Parent;
    .restart local p2    # "child":Lorg/jdom/Content;
    :cond_1
    invoke-static {p1, p2}, Lorg/jdom/ContentList;->elementCanContain(ILorg/jdom/Content;)V

    goto :goto_0

    .line 209
    .restart local v0    # "p":Lorg/jdom/Parent;
    :cond_2
    new-instance v1, Lorg/jdom/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The Content already has an existing parent \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    check-cast v0, Lorg/jdom/Element;

    .end local v0    # "p":Lorg/jdom/Parent;
    invoke-virtual {v0}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

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

    .line 215
    :cond_3
    iget-object v1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    if-ne p2, v1, :cond_4

    .line 216
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "The Element cannot be added to itself"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_4
    iget-object v1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v1, v1, Lorg/jdom/Element;

    if-eqz v1, :cond_5

    instance-of v1, p2, Lorg/jdom/Element;

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Lorg/jdom/Element;

    iget-object v2, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    check-cast v2, Lorg/jdom/Element;

    invoke-virtual {v1, v2}, Lorg/jdom/Element;->isAncestor(Lorg/jdom/Element;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "The Element cannot be added as a descendent of itself"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_5
    if-ltz p1, :cond_6

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-le p1, v1, :cond_7

    .line 228
    :cond_6
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

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_7
    iget-object v1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    invoke-virtual {p2, v1}, Lorg/jdom/Content;->setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;

    .line 234
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 235
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-ne p1, v1, :cond_8

    .line 236
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v2, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jdom/ContentList;->size:I

    aput-object p2, v1, v2

    .line 242
    :goto_1
    iget v1, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList;->modCount:I

    .line 243
    return-void

    .line 238
    :cond_8
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lorg/jdom/ContentList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aput-object p2, v1, p1

    .line 240
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList;->size:I

    goto :goto_1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 7
    .param p1, "index"    # I
    .param p2, "collection"    # Ljava/util/Collection;

    .prologue
    .line 268
    if-ltz p1, :cond_0

    iget v4, p0, Lorg/jdom/ContentList;->size:I

    if-le p1, v4, :cond_1

    .line 269
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

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 273
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 274
    :cond_2
    const/4 v4, 0x0

    .line 294
    :goto_0
    return v4

    .line 276
    :cond_3
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "count":I
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 281
    .local v2, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 282
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 283
    .local v3, "obj":Ljava/lang/Object;
    add-int v4, p1, v0

    invoke-virtual {p0, v4, v3}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 285
    goto :goto_1

    .line 287
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "exception":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 289
    invoke-virtual {p0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 291
    :cond_4
    throw v1

    .line 294
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
    .line 253
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 301
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v2, :cond_1

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/jdom/ContentList;->size:I

    if-ge v0, v2, :cond_0

    .line 303
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v2, v0

    .line 304
    .local v1, "obj":Lorg/jdom/Content;
    invoke-static {v1}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "obj":Lorg/jdom/Content;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 307
    const/4 v2, 0x0

    iput v2, p0, Lorg/jdom/ContentList;->size:I

    .line 309
    .end local v0    # "i":I
    :cond_1
    iget v2, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom/ContentList;->modCount:I

    .line 310
    return-void
.end method

.method clearAndSet(Ljava/util/Collection;)V
    .locals 6
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    const/4 v5, 0x0

    .line 320
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 321
    .local v2, "old":[Lorg/jdom/Content;
    iget v3, p0, Lorg/jdom/ContentList;->size:I

    .line 323
    .local v3, "oldSize":I
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 324
    iput v5, p0, Lorg/jdom/ContentList;->size:I

    .line 326
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 329
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4, p1}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    if-eqz v2, :cond_1

    .line 339
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 340
    aget-object v4, v2, v1

    invoke-static {v4}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 332
    .local v0, "exception":Ljava/lang/RuntimeException;
    iput-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 333
    iput v3, p0, Lorg/jdom/ContentList;->size:I

    .line 334
    throw v0

    .line 343
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    :cond_1
    iget v4, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jdom/ContentList;->modCount:I

    .line 344
    return-void
.end method

.method ensureCapacity(I)V
    .locals 6
    .param p1, "minCapacity"    # I

    .prologue
    const/4 v5, 0x0

    .line 354
    iget-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-nez v3, :cond_1

    .line 355
    const/4 v3, 0x5

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [Lorg/jdom/Content;

    iput-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    array-length v1, v3

    .line 358
    .local v1, "oldCapacity":I
    if-le p1, v1, :cond_0

    .line 359
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 360
    .local v2, "oldData":[Ljava/lang/Object;
    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 361
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_2

    .line 362
    move v0, p1

    .line 363
    :cond_2
    new-array v3, v0, [Lorg/jdom/Content;

    iput-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 364
    iget-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v4, p0, Lorg/jdom/ContentList;->size:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 376
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-lt p1, v0, :cond_1

    .line 377
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

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getView(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 1
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 390
    new-instance v0, Lorg/jdom/ContentList$FilterList;

    invoke-direct {v0, p0, p1}, Lorg/jdom/ContentList$FilterList;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;)V

    return-object v0
.end method

.method indexOfDocType()I
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v1, :cond_1

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom/DocType;

    if-eqz v1, :cond_0

    .line 426
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 420
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method indexOfFirstElement()I
    .locals 2

    .prologue
    .line 401
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v1, :cond_1

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-ge v0, v1, :cond_1

    .line 403
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom/Element;

    if-eqz v1, :cond_0

    .line 408
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 402
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 436
    if-ltz p1, :cond_0

    iget v2, p0, Lorg/jdom/ContentList;->size:I

    if-lt p1, v2, :cond_1

    .line 437
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

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 440
    :cond_1
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v2, p1

    .line 441
    .local v1, "old":Lorg/jdom/Content;
    invoke-static {v1}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    .line 442
    iget v2, p0, Lorg/jdom/ContentList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 443
    .local v0, "numMoved":I
    if-lez v0, :cond_2

    .line 444
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    :cond_2
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v3, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jdom/ContentList;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 446
    iget v2, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom/ContentList;->modCount:I

    .line 447
    return-object v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 466
    if-ltz p1, :cond_0

    iget v4, p0, Lorg/jdom/ContentList;->size:I

    if-lt p1, v4, :cond_1

    .line 467
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

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 470
    :cond_1
    instance-of v4, p2, Lorg/jdom/Element;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v4, v4, Lorg/jdom/Document;

    if-eqz v4, :cond_2

    .line 471
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v3

    .line 472
    .local v3, "root":I
    if-ltz v3, :cond_2

    if-eq v3, p1, :cond_2

    .line 473
    new-instance v4, Lorg/jdom/IllegalAddException;

    const-string v5, "Cannot add a second root element, only one is allowed"

    invoke-direct {v4, v5}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 478
    .end local v3    # "root":I
    :cond_2
    instance-of v4, p2, Lorg/jdom/DocType;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v4, v4, Lorg/jdom/Document;

    if-eqz v4, :cond_3

    .line 479
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    .line 480
    .local v0, "docTypeIndex":I
    if-ltz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 481
    new-instance v4, Lorg/jdom/IllegalAddException;

    const-string v5, "Cannot add a second doctype, only one is allowed"

    invoke-direct {v4, v5}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 486
    .end local v0    # "docTypeIndex":I
    :cond_3
    invoke-virtual {p0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 488
    .local v2, "old":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    return-object v2

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "exception":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    .line 492
    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final uncheckedAddContent(Lorg/jdom/Content;)V
    .locals 3
    .param p1, "c"    # Lorg/jdom/Content;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    iput-object v0, p1, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    .line 109
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 110
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom/ContentList;->size:I

    aput-object p1, v0, v1

    .line 111
    iget v0, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom/ContentList;->modCount:I

    .line 112
    return-void
.end method
