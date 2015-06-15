.class public Lorg/apache/mina/util/ExpiringMap;
.super Ljava/lang/Object;
.source "ExpiringMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/ExpiringMap$Expirer;,
        Lorg/apache/mina/util/ExpiringMap$ExpiringObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_EXPIRATION_INTERVAL:I = 0x1

.field public static final DEFAULT_TIME_TO_LIVE:I = 0x3c

.field private static volatile expirerCount:I


# instance fields
.field private final delegate:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Lorg/apache/mina/util/ExpiringMap",
            "<TK;TV;>.ExpiringObject;>;"
        }
    .end annotation
.end field

.field private final expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/apache/mina/util/ExpirationListener",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/util/ExpiringMap",
            "<TK;TV;>.Expirer;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput v0, Lorg/apache/mina/util/ExpiringMap;->expirerCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    const/16 v0, 0x3c

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/util/ExpiringMap;-><init>(II)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeToLive"    # I

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/util/ExpiringMap;-><init>(II)V

    .line 75
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "timeToLive"    # I
    .param p2, "expirationInterval"    # I

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/util/ExpiringMap;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CopyOnWriteArrayList;II)V

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    .locals 3
    .param p3, "timeToLive"    # I
    .param p4, "expirationInterval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Lorg/apache/mina/util/ExpiringMap",
            "<TK;TV;>.ExpiringObject;>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/apache/mina/util/ExpirationListener",
            "<TV;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;>;"
    .local p2, "expirationListeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/apache/mina/util/ExpirationListener<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    iput-object p2, p0, Lorg/apache/mina/util/ExpiringMap;->expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 98
    new-instance v0, Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-direct {v0, p0}, Lorg/apache/mina/util/ExpiringMap$Expirer;-><init>(Lorg/apache/mina/util/ExpiringMap;)V

    iput-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    .line 99
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/util/ExpiringMap$Expirer;->setTimeToLive(J)V

    .line 100
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/util/ExpiringMap$Expirer;->setExpirationInterval(J)V

    .line 101
    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 37
    sget v0, Lorg/apache/mina/util/ExpiringMap;->expirerCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/util/ExpiringMap;->expirerCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/ExpiringMap;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/ExpiringMap;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public addExpirationListener(Lorg/apache/mina/util/ExpirationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/util/ExpirationListener",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    .local p1, "listener":Lorg/apache/mina/util/ExpirationListener;, "Lorg/apache/mina/util/ExpirationListener<TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 152
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

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
    .line 179
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 114
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    .line 116
    .local v0, "object":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->setLastAccessTime(J)V

    .line 119
    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExpirationInterval()I
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->getExpirationInterval()I

    move-result v0

    return v0
.end method

.method public getExpirer()Lorg/apache/mina/util/ExpiringMap$Expirer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/util/ExpiringMap",
            "<TK;TV;>.Expirer;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    return-object v0
.end method

.method public getTimeToLive()I
    .locals 1

    .prologue
    .line 200
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

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
    .line 160
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v7, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;-><init>(Lorg/apache/mina/util/ExpiringMap;Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-virtual {v7, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    .line 106
    .local v6, "answer":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    if-nez v6, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v6}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    .local p1, "inMap":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/mina/util/ExpiringMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    .line 127
    .local v0, "answer":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    if-nez v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 131
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public removeExpirationListener(Lorg/apache/mina/util/ExpirationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/util/ExpirationListener",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    .local p1, "listener":Lorg/apache/mina/util/ExpirationListener;, "Lorg/apache/mina/util/ExpirationListener<TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public setExpirationInterval(I)V
    .locals 3
    .param p1, "expirationInterval"    # I

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/util/ExpiringMap$Expirer;->setExpirationInterval(J)V

    .line 205
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 3
    .param p1, "timeToLive"    # I

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/util/ExpiringMap$Expirer;->setTimeToLive(J)V

    .line 209
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

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
    .line 175
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
