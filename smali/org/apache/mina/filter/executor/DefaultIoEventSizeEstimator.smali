.class public Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;
.super Ljava/lang/Object;
.source "DefaultIoEventSizeEstimator.java"

# interfaces
.implements Lorg/apache/mina/filter/executor/IoEventSizeEstimator;


# instance fields
.field private final class2size:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private static align(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 145
    rem-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    .line 146
    div-int/lit8 p0, p0, 0x8

    .line 147
    add-int/lit8 p0, p0, 0x1

    .line 148
    mul-int/lit8 p0, p0, 0x8

    .line 150
    :cond_0
    return p0
.end method

.method private estimateSize(Ljava/lang/Class;Ljava/util/Set;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "visitedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v9, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 102
    .local v7, "objectSize":Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 103
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    if-eqz p2, :cond_2

    .line 107
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_2
    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "visitedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 114
    .restart local p2    # "visitedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const/16 v0, 0x8

    .line 117
    .local v0, "answer":I
    move-object v2, p1

    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v2, :cond_6

    .line 118
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 119
    .local v4, "fields":[Ljava/lang/reflect/Field;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v6, :cond_5

    aget-object v3, v1, v5

    .line 120
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_4

    .line 119
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v9

    add-int/2addr v0, v9

    goto :goto_3

    .line 117
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 129
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_6
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-static {v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->align(I)I

    move-result v0

    .line 135
    iget-object v9, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 137
    .local v8, "tmpAnswer":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 138
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public estimateSize(Ljava/lang/Object;)I
    .locals 5
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/16 v3, 0x8

    .line 97
    .end local p1    # "message":Ljava/lang/Object;
    :goto_0
    return v3

    .line 83
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v3

    add-int/lit8 v0, v3, 0x8

    .line 85
    .local v0, "answer":I
    instance-of v3, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v3, :cond_2

    .line 86
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    add-int/2addr v0, v3

    .line 97
    :cond_1
    :goto_1
    invoke-static {v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->align(I)I

    move-result v3

    goto :goto_0

    .line 87
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Lorg/apache/mina/core/write/WriteRequest;

    if-eqz v3, :cond_3

    .line 88
    check-cast p1, Lorg/apache/mina/core/write/WriteRequest;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 89
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 90
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    goto :goto_1

    .line 91
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, Ljava/lang/Iterable;

    if-eqz v3, :cond_1

    .line 92
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "m":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_2
.end method

.method public estimateSize(Lorg/apache/mina/core/session/IoEvent;)I
    .locals 2
    .param p1, "event"    # Lorg/apache/mina/core/session/IoEvent;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
