.class Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;
.super Lorg/apache/mina/core/write/WriteRequestWrapper;
.source "WriteRequestFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/util/WriteRequestFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilteredWriteRequest"
.end annotation


# instance fields
.field private final filteredMessage:Ljava/lang/Object;

.field final synthetic this$0:Lorg/apache/mina/filter/util/WriteRequestFilter;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/util/WriteRequestFilter;Ljava/lang/Object;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p2, "filteredMessage"    # Ljava/lang/Object;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->this$0:Lorg/apache/mina/filter/util/WriteRequestFilter;

    .line 71
    invoke-direct {p0, p3}, Lorg/apache/mina/core/write/WriteRequestWrapper;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filteredMessage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p2, p0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->filteredMessage:Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->filteredMessage:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lorg/apache/mina/filter/util/WriteRequestFilter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->this$0:Lorg/apache/mina/filter/util/WriteRequestFilter;

    return-object v0
.end method
