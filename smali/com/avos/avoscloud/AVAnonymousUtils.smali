.class public Lcom/avos/avoscloud/AVAnonymousUtils;
.super Ljava/lang/Object;
.source "AVAnonymousUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static anonymousAuthData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 33
    const-string v1, "{\"authData\": {\"anonymous\" : {\"id\": \"%s\"}}}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "json":Ljava/lang/String;
    return-object v0
.end method

.method public static isLinked(Lcom/avos/avoscloud/AVUser;)Z
    .locals 1
    .param p0, "user"    # Lcom/avos/avoscloud/AVUser;

    .prologue
    .line 47
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logIn(Lcom/avos/avoscloud/LogInCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    move-object v0, p0

    .line 57
    .local v0, "internalCallback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    invoke-static {}, Lcom/avos/avoscloud/AVAnonymousUtils;->anonymousAuthData()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "string":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    const-string v3, "users"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVAnonymousUtils$1;

    invoke-direct {v5, v0}, Lcom/avos/avoscloud/AVAnonymousUtils$1;-><init>(Lcom/avos/avoscloud/LogInCallback;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 77
    return-void
.end method
