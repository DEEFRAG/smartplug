.class final Lcom/avos/avoscloud/AVUser$28;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/LogInCallback;

.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 0

    .prologue
    .line 1706
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$28;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$28;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$28;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$28;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1727
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 1709
    if-nez p2, :cond_0

    .line 1710
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$28;->val$clazz:Ljava/lang/Class;

    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$28;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 1711
    .local v0, "userObject":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-nez v0, :cond_1

    .line 1720
    .end local v0    # "userObject":Lcom/avos/avoscloud/AVUser;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 1714
    .restart local v0    # "userObject":Lcom/avos/avoscloud/AVUser;, "TT;"
    :cond_1
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 1715
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 1716
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$28;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v1, :cond_0

    .line 1717
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$28;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
