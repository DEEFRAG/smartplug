.class public Lorg/apache/mina/core/write/WriteToClosedSessionException;
.super Lorg/apache/mina/core/write/WriteException;
.source "WriteToClosedSessionException.java"


# static fields
.field private static final serialVersionUID:J = 0x4d0649a7507aba11L


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
