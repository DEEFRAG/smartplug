.class public interface abstract Lorg/apache/mina/core/service/IoProcessor;
.super Ljava/lang/Object;
.source "IoProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/mina/core/session/IoSession;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Lorg/apache/mina/core/session/IoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract dispose()V
.end method

.method public abstract flush(Lorg/apache/mina/core/session/IoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract isDisposed()Z
.end method

.method public abstract isDisposing()Z
.end method

.method public abstract remove(Lorg/apache/mina/core/session/IoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method
