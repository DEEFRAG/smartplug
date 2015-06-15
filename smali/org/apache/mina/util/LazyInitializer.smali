.class public abstract Lorg/apache/mina/util/LazyInitializer;
.super Ljava/lang/Object;
.source "LazyInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lorg/apache/mina/util/LazyInitializer;, "Lorg/apache/mina/util/LazyInitializer<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/mina/util/LazyInitializer;, "Lorg/apache/mina/util/LazyInitializer<TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializer;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/apache/mina/util/LazyInitializer;->init()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/util/LazyInitializer;->value:Ljava/lang/Object;

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializer;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract init()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method
