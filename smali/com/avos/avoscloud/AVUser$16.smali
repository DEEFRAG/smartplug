.class final Lcom/avos/avoscloud/AVUser$16;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 0

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$16;->val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$16;->val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$16;->val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1017
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    const/4 v1, 0x0

    .line 1007
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$16;->val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$16;->val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;

    invoke-virtual {v0, v1, v1}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1010
    :cond_0
    return-void
.end method
