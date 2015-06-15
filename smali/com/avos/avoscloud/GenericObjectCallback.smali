.class public abstract Lcom/avos/avoscloud/GenericObjectCallback;
.super Ljava/lang/Object;
.source "GenericObjectCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 7
    return-void
.end method

.method public onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "total"    # I
    .param p3, "object"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 12
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 5
    return-void
.end method
