.class public abstract Lcom/avos/avoscloud/ProgressCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "ProgressCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/lang/Integer;)V
.end method

.method public bridge synthetic internalDone(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method final internalDone0(Ljava/lang/Integer;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "returnValue"    # Ljava/lang/Integer;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ProgressCallback;->done(Ljava/lang/Integer;)V

    .line 19
    return-void
.end method

.method bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/ProgressCallback;->internalDone0(Ljava/lang/Integer;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
