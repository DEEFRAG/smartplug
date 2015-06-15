.class public interface abstract Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
.super Ljava/lang/Object;
.source "IoHandlerCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/handler/chain/IoHandlerCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NextCommand"
.end annotation


# virtual methods
.method public abstract execute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
