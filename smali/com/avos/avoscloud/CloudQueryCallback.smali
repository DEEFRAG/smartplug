.class public abstract Lcom/avos/avoscloud/CloudQueryCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "CloudQueryCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVCloudQueryResult;",
        ">",
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Lcom/avos/avoscloud/AVCloudQueryResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V
.end method

.method public bridge synthetic internalDone(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 9
    .local p0, "this":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<TT;>;"
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method final internalDone0(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "returnValue"    # Lcom/avos/avoscloud/AVCloudQueryResult;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 15
    .local p0, "this":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/CloudQueryCallback;->done(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V

    .line 16
    return-void
.end method

.method bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 9
    .local p0, "this":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<TT;>;"
    check-cast p1, Lcom/avos/avoscloud/AVCloudQueryResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/CloudQueryCallback;->internalDone0(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
