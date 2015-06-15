.class public interface abstract Lorg/apache/mina/core/service/IoServiceListener;
.super Ljava/lang/Object;
.source "IoServiceListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract serviceActivated(Lorg/apache/mina/core/service/IoService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract serviceDeactivated(Lorg/apache/mina/core/service/IoService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract serviceIdle(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/session/IdleStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
