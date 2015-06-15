.class public Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;
.super Ljava/lang/Object;
.source "NioProcessor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IoSessionIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NioSession:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TNioSession;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;, "Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator<TNioSession;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;->iterator:Ljava/util/Iterator;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lorg/apache/mina/transport/socket/nio/NioProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Lorg/apache/mina/transport/socket/nio/NioProcessor$1;

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;, "Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator<TNioSession;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;, "Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator<TNioSession;>;"
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TNioSession;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;, "Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator<TNioSession;>;"
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 347
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    .line 348
    .local v1, "nioSession":Ljava/lang/Object;, "TNioSession;"
    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 355
    .local p0, "this":Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;, "Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator<TNioSession;>;"
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 356
    return-void
.end method
