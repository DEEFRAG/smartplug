.class public interface abstract Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;
.super Ljava/lang/Object;
.source "SingleSessionIoHandlerFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
