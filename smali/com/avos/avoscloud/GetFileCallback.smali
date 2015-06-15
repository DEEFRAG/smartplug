.class public abstract Lcom/avos/avoscloud/GetFileCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "GetFileCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVFile;",
        ">",
        "Lcom/avos/avoscloud/AVCallback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lcom/avos/avoscloud/GetFileCallback;, "Lcom/avos/avoscloud/GetFileCallback<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/AVException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation
.end method

.method public bridge synthetic internalDone(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 32
    .local p0, "this":Lcom/avos/avoscloud/GetFileCallback;, "Lcom/avos/avoscloud/GetFileCallback<TT;>;"
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method final internalDone0(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/avos/avoscloud/GetFileCallback;, "Lcom/avos/avoscloud/GetFileCallback<TT;>;"
    .local p1, "returnValue":Lcom/avos/avoscloud/AVFile;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/GetFileCallback;->done(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/AVException;)V

    .line 43
    return-void
.end method

.method bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 32
    .local p0, "this":Lcom/avos/avoscloud/GetFileCallback;, "Lcom/avos/avoscloud/GetFileCallback<TT;>;"
    check-cast p1, Lcom/avos/avoscloud/AVFile;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/GetFileCallback;->internalDone0(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
