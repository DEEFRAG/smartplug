.class final Lcom/avos/avoscloud/AVUser$13;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/UpdatePasswordCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$13;->val$internalCallback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 868
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$13;->val$internalCallback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$13;->val$internalCallback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p2, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/UpdatePasswordCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 871
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$13;->val$internalCallback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/UpdatePasswordCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 876
    return-void
.end method
