.class public interface abstract Lcom/avos/avoscloud/SessionListener;
.super Ljava/lang/Object;
.source "SessionListener.java"


# virtual methods
.method public abstract onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
.end method

.method public abstract onMessage(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageFailure(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageSent(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onSessionOpen(Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onSessionPaused(Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onSessionResumed(Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onStatusOffline(Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStatusOnline(Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
