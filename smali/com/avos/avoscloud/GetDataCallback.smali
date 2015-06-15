.class public abstract Lcom/avos/avoscloud/GetDataCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "GetDataCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done([BLcom/avos/avoscloud/AVException;)V
.end method

.method public bridge synthetic internalDone(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 23
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/GetDataCallback;->internalDone0([BLcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method final internalDone0([BLcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "returnValue"    # [B
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/GetDataCallback;->done([BLcom/avos/avoscloud/AVException;)V

    .line 28
    return-void
.end method
