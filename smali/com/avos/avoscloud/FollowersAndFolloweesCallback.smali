.class public abstract Lcom/avos/avoscloud/FollowersAndFolloweesCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "FollowersAndFolloweesCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/avos/avoscloud/FollowersAndFolloweesCallback;, "Lcom/avos/avoscloud/FollowersAndFolloweesCallback<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation
.end method

.method public bridge synthetic internalDone(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 11
    .local p0, "this":Lcom/avos/avoscloud/FollowersAndFolloweesCallback;, "Lcom/avos/avoscloud/FollowersAndFolloweesCallback<TT;>;"
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 11
    .local p0, "this":Lcom/avos/avoscloud/FollowersAndFolloweesCallback;, "Lcom/avos/avoscloud/FollowersAndFolloweesCallback<TT;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/FollowersAndFolloweesCallback;->internalDone0(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method final internalDone0(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/avos/avoscloud/FollowersAndFolloweesCallback;, "Lcom/avos/avoscloud/FollowersAndFolloweesCallback<TT;>;"
    .local p1, "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/FollowersAndFolloweesCallback;->done(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V

    .line 23
    return-void
.end method
