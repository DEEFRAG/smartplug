.class public abstract Lcom/avos/avoscloud/StatusCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "StatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Lcom/avos/avoscloud/AVStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/AVException;)V
.end method

.method public bridge synthetic internalDone(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method final internalDone0(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "returnValue"    # Lcom/avos/avoscloud/AVStatus;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/StatusCallback;->done(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/AVException;)V

    .line 21
    return-void
.end method

.method bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 9
    check-cast p1, Lcom/avos/avoscloud/AVStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/StatusCallback;->internalDone0(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
