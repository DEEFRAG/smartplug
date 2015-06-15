.class public Lorg/apache/mina/core/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field private static final EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/core/session/IoSession;

    sput-object v0, Lorg/apache/mina/core/IoUtil;->EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method public static await(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    .line 115
    .local v0, "f":Lorg/apache/mina/core/future/IoFuture;
    invoke-interface {v0}, Lorg/apache/mina/core/future/IoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    goto :goto_0

    .line 117
    .end local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_0
    return-void
.end method

.method public static await(Ljava/lang/Iterable;J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/mina/core/IoUtil;->await0(Ljava/lang/Iterable;JZ)Z

    move-result v0

    return v0
.end method

.method public static await(Ljava/lang/Iterable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/core/IoUtil;->await(Ljava/lang/Iterable;J)Z

    move-result v0

    return v0
.end method

.method private static await0(Ljava/lang/Iterable;JZ)Z
    .locals 11
    .param p1, "timeoutMillis"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;JZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    const-wide/16 v7, 0x0

    .line 146
    cmp-long v9, p1, v7

    if-gtz v9, :cond_4

    move-wide v3, v7

    .line 147
    .local v3, "startTime":J
    :goto_0
    move-wide v5, p1

    .line 149
    .local v5, "waitTime":J
    const/4 v2, 0x1

    .line 150
    .local v2, "lastComplete":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/mina/core/future/IoFuture;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    .line 154
    .local v0, "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_1
    if-eqz p3, :cond_5

    .line 155
    invoke-interface {v0, v5, v6}, Lorg/apache/mina/core/future/IoFuture;->await(J)Z

    move-result v2

    .line 160
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    sub-long v5, p1, v9

    .line 162
    if-nez v2, :cond_2

    cmp-long v9, v5, v7

    if-gtz v9, :cond_6

    .line 167
    :cond_2
    :goto_2
    cmp-long v9, v5, v7

    if-gtz v9, :cond_0

    .line 172
    .end local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_3
    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    :goto_3
    return v7

    .line 146
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/mina/core/future/IoFuture;>;"
    .end local v2    # "lastComplete":Z
    .end local v3    # "startTime":J
    .end local v5    # "waitTime":J
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    .line 157
    .restart local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/mina/core/future/IoFuture;>;"
    .restart local v2    # "lastComplete":Z
    .restart local v3    # "startTime":J
    .restart local v5    # "waitTime":J
    :cond_5
    invoke-interface {v0, v5, v6}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    move-result v2

    goto :goto_1

    .line 165
    :cond_6
    if-eqz v2, :cond_1

    goto :goto_2

    .line 172
    .end local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_7
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public static awaitUninterruptably(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    .line 121
    .local v0, "f":Lorg/apache/mina/core/future/IoFuture;
    invoke-interface {v0}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    goto :goto_0

    .line 123
    .end local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_0
    return-void
.end method

.method public static awaitUninterruptibly(Ljava/lang/Iterable;J)Z
    .locals 2
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lorg/apache/mina/core/IoUtil;->await0(Ljava/lang/Iterable;JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public static awaitUninterruptibly(Ljava/lang/Iterable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/core/IoUtil;->awaitUninterruptibly(Ljava/lang/Iterable;J)Z

    move-result v0

    return v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "sessions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    .line 62
    return-object v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    .line 51
    return-object v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/util/Iterator;)Ljava/util/List;
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    invoke-static {p0, p1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    .line 73
    return-object v0
.end method

.method public static varargs broadcast(Ljava/lang/Object;[Lorg/apache/mina/core/session/IoSession;)Ljava/util/List;
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "sessions"    # [Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    sget-object p1, Lorg/apache/mina/core/IoUtil;->EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    instance-of v5, p0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v5, :cond_1

    .line 88
    move-object v1, p1

    .local v1, "arr$":[Lorg/apache/mina/core/session/IoSession;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .local v4, "s":Lorg/apache/mina/core/session/IoSession;
    move-object v5, p0

    .line 89
    check-cast v5, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "arr$":[Lorg/apache/mina/core/session/IoSession;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "s":Lorg/apache/mina/core/session/IoSession;
    :cond_1
    move-object v1, p1

    .restart local v1    # "arr$":[Lorg/apache/mina/core/session/IoSession;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 93
    .restart local v4    # "s":Lorg/apache/mina/core/session/IoSession;
    invoke-interface {v4, p0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    .end local v4    # "s":Lorg/apache/mina/core/session/IoSession;
    :cond_2
    return-object v0
.end method

.method private static broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mina/core/session/IoSession;>;"
    .local p2, "answer":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/future/WriteFuture;>;"
    instance-of v1, p0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    .line 101
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    .local v0, "s":Lorg/apache/mina/core/session/IoSession;
    move-object v1, p0

    .line 103
    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    .line 108
    .restart local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    invoke-interface {v0, p0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    .end local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    :cond_1
    return-void
.end method
