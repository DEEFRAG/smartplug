.class public Lorg/apache/mina/util/ConcurrentHashSet;
.super Lorg/apache/mina/util/MapBackedSet;
.source "ConcurrentHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/util/MapBackedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x76381274f6f87644L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/mina/util/ConcurrentHashSet;, "Lorg/apache/mina/util/ConcurrentHashSet<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/mina/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/mina/util/ConcurrentHashSet;, "Lorg/apache/mina/util/ConcurrentHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/util/MapBackedSet;-><init>(Ljava/util/Map;Ljava/util/Collection;)V

    .line 42
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/mina/util/ConcurrentHashSet;, "Lorg/apache/mina/util/ConcurrentHashSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/mina/util/ConcurrentHashSet;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 47
    .local v0, "answer":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
