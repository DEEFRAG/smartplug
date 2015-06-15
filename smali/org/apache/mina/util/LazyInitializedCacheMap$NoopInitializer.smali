.class public Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;
.super Lorg/apache/mina/util/LazyInitializer;
.source "LazyInitializedCacheMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/LazyInitializedCacheMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoopInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/util/LazyInitializer",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/util/LazyInitializedCacheMap;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/LazyInitializedCacheMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>.NoopInitializer;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;->this$0:Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-direct {p0}, Lorg/apache/mina/util/LazyInitializer;-><init>()V

    .line 54
    iput-object p2, p0, Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;->value:Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public init()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>.NoopInitializer;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;->value:Ljava/lang/Object;

    return-object v0
.end method
