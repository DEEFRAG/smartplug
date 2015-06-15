.class public Lorg/apache/mina/util/CopyOnWriteMap;
.super Ljava/lang/Object;
.source "CopyOnWriteMap.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private volatile internalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    monitor-enter p0

    .line 122
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    .line 123
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 79
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 80
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, "val":Ljava/lang/Object;, "TV;"
    iput-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    .line 82
    monitor-exit p0

    return-object v1

    .line 83
    .end local v0    # "newMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    .local p1, "newData":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    .line 109
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 110
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    iput-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    .line 112
    monitor-exit p0

    .line 113
    return-void

    .line 112
    .end local v0    # "newMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    monitor-enter p0

    .line 94
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 95
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 96
    .local v1, "val":Ljava/lang/Object;, "TV;"
    iput-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    .line 97
    monitor-exit p0

    return-object v1

    .line 98
    .end local v0    # "newMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lorg/apache/mina/util/CopyOnWriteMap;, "Lorg/apache/mina/util/CopyOnWriteMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CopyOnWriteMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
