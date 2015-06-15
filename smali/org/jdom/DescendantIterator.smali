.class Lorg/jdom/DescendantIterator;
.super Ljava/lang/Object;
.source "DescendantIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DescendantIterator.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"


# instance fields
.field private iterator:Ljava/util/Iterator;

.field private nextIterator:Ljava/util/Iterator;

.field private stack:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jdom/Parent;)V
    .locals 2
    .param p1, "parent"    # Lorg/jdom/Parent;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parent parameter was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-interface {p1}, Lorg/jdom/Parent;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    .line 91
    return-void
.end method

.method private pop()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 153
    .local v0, "stackSize":I
    if-nez v0, :cond_0

    .line 154
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "empty stack"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    return-object v1
.end method

.method private push(Ljava/util/Iterator;)V
    .locals 1
    .param p1, "itr"    # Ljava/util/Iterator;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method private stackHasAnyNext()Z
    .locals 4

    .prologue
    .line 164
    iget-object v3, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 165
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 166
    iget-object v3, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 167
    .local v1, "itr":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v3, 0x1

    .line 171
    .end local v1    # "itr":Ljava/util/Iterator;
    :goto_1
    return v3

    .line 165
    .restart local v1    # "itr":Ljava/util/Iterator;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "itr":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :cond_2
    invoke-direct {p0}, Lorg/jdom/DescendantIterator;->stackHasAnyNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/jdom/DescendantIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 118
    :cond_0
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    invoke-direct {p0, v1}, Lorg/jdom/DescendantIterator;->push(Ljava/util/Iterator;)V

    .line 120
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    .line 125
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 127
    invoke-direct {p0}, Lorg/jdom/DescendantIterator;->pop()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    goto :goto_0

    .line 130
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Somehow we lost our iterator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_3
    iget-object v1, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    .line 135
    .local v0, "child":Lorg/jdom/Content;
    instance-of v1, v0, Lorg/jdom/Element;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 136
    check-cast v1, Lorg/jdom/Element;

    invoke-virtual {v1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    .line 138
    :cond_4
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 149
    return-void
.end method
