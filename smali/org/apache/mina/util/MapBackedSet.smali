.class public Lorg/apache/mina/util/MapBackedSet;
.super Ljava/util/AbstractSet;
.source "MapBackedSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x73d99f54b04a9cbaL


# instance fields
.field protected final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/mina/util/MapBackedSet;, "Lorg/apache/mina/util/MapBackedSet<TE;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/mina/util/MapBackedSet;->map:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/mina/util/MapBackedSet;, "Lorg/apache/mina/util/MapBackedSet<TE;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/mina/util/MapBackedSet;->map:Ljava/util/Map;

    .line 46
    invoke-virtual {p0, p2}, Lorg/apache/mina/util/MapBackedSet;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/mina/util/MapBackedSet;, "Lorg/apache/mina/util/MapBackedSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/mina/util/MapBackedSet;->map:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/mina/util/MapBackedSet;, "Lorg/apache/mina/util/MapBackedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/util/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 77
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/mina/util/MapBackedSet;, "Lorg/apache/mina/util/MapBackedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/util/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/mina/util/MapBackedSet;, "Lorg/apache/mina/util/MapBackedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/util/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/mina/util/MapBackedSet;, "Lorg/apache/mina/util/MapBackedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/util/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/mina/util/MapBackedSet;, "Lorg/apache/mina/util/MapBackedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/util/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
