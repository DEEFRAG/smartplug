.class public Lorg/apache/mina/util/SynchronizedQueue;
.super Ljava/lang/Object;
.source "SynchronizedQueue.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13f9373ceaf6d636L


# instance fields
.field private final q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "q":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    .line 41
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->q:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
