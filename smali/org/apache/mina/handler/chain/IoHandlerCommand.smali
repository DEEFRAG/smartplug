.class public interface abstract Lorg/apache/mina/handler/chain/IoHandlerCommand;
.super Ljava/lang/Object;
.source "IoHandlerCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    }
.end annotation


# virtual methods
.method public abstract execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
