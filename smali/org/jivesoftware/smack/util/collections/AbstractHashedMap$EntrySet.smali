.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field protected final parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 804
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    .line 805
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->clear()V

    .line 813
    return-void
.end method

.method public contains(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 816
    .line 817
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 822
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v0

    .line 825
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    check-cast p1, Ljava/util/Map$Entry;

    .line 829
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 830
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method
