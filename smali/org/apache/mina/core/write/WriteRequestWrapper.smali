.class public Lorg/apache/mina/core/write/WriteRequestWrapper;
.super Ljava/lang/Object;
.source "WriteRequestWrapper.java"

# interfaces
.implements Lorg/apache/mina/core/write/WriteRequest;


# instance fields
.field private final parentRequest:Lorg/apache/mina/core/write/WriteRequest;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "parentRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/write/WriteRequestWrapper;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    .line 43
    return-void
.end method


# virtual methods
.method public getDestination()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/mina/core/write/WriteRequestWrapper;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getFuture()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/mina/core/write/WriteRequestWrapper;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/mina/core/write/WriteRequestWrapper;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/mina/core/write/WriteRequestWrapper;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParentRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/mina/core/write/WriteRequestWrapper;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    return-object v0
.end method

.method public isEncoded()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WR Wrapper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/write/WriteRequestWrapper;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
