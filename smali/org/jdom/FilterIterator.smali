.class Lorg/jdom/FilterIterator;
.super Ljava/lang/Object;
.source "FilterIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: FilterIterator.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"


# instance fields
.field private filter:Lorg/jdom/filter/Filter;

.field private iterator:Ljava/util/Iterator;

.field private nextObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/jdom/filter/Filter;)V
    .locals 2
    .param p1, "iterator"    # Ljava/util/Iterator;
    .param p2, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iput-object p1, p0, Lorg/jdom/FilterIterator;->iterator:Ljava/util/Iterator;

    .line 82
    iput-object p2, p0, Lorg/jdom/FilterIterator;->filter:Lorg/jdom/filter/Filter;

    .line 83
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-object v2, p0, Lorg/jdom/FilterIterator;->nextObject:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 97
    :goto_0
    return v1

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/jdom/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lorg/jdom/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jdom/FilterIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v0}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iput-object v0, p0, Lorg/jdom/FilterIterator;->nextObject:Ljava/lang/Object;

    goto :goto_0

    .line 97
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/jdom/FilterIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/jdom/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 106
    .local v0, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 107
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jdom/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 114
    return-void
.end method
