.class final Lcom/avos/avoscloud/AVUser$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

.field final synthetic val$user:Lcom/avos/avoscloud/AVUser;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$4;->val$user:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$4;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$4;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$4;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 506
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 487
    move-object v0, p2

    .line 488
    .local v0, "error":Lcom/avos/avoscloud/AVException;
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$4;->val$user:Lcom/avos/avoscloud/AVUser;

    .line 489
    .local v1, "resultUser":Lcom/avos/avoscloud/AVUser;, "TT;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$4;->val$user:Lcom/avos/avoscloud/AVUser;

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 491
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$4;->val$user:Lcom/avos/avoscloud/AVUser;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 496
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$4;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$4;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    invoke-virtual {v2, v1, v0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 499
    :cond_0
    return-void

    .line 493
    :cond_1
    const/4 v1, 0x0

    .line 494
    new-instance v0, Lcom/avos/avoscloud/AVException;

    .end local v0    # "error":Lcom/avos/avoscloud/AVException;
    const/16 v2, 0x65

    const-string v3, "User is not found."

    invoke-direct {v0, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .restart local v0    # "error":Lcom/avos/avoscloud/AVException;
    goto :goto_0
.end method
