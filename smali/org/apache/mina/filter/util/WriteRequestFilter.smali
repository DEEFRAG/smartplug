.class public abstract Lorg/apache/mina/filter/util/WriteRequestFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "WriteRequestFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method protected abstract doFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/filter/util/WriteRequestFilter;->doFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "filteredMessage":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v1, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;

    invoke-direct {v1, p0, v0, p3}, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;-><init>(Lorg/apache/mina/filter/util/WriteRequestFilter;Ljava/lang/Object;Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    instance-of v1, p3, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 54
    check-cast v0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;

    .line 55
    .local v0, "req":Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;
    invoke-virtual {v0}, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->getParent()Lorg/apache/mina/filter/util/WriteRequestFilter;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 56
    invoke-virtual {v0}, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 62
    .end local v0    # "req":Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method
