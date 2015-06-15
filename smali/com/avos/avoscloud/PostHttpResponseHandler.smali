.class public Lcom/avos/avoscloud/PostHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "PostHttpResponseHandler.java"


# instance fields
.field private callback:Lcom/avos/avoscloud/GenericObjectCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 14
    iput-object p1, p0, Lcom/avos/avoscloud/PostHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 15
    return-void
.end method


# virtual methods
.method getCallback()Lcom/avos/avoscloud/GenericObjectCallback;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avos/avoscloud/PostHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    return-object v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nerror:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "body"    # [B

    .prologue
    .line 28
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "content":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->isJSONResponse([Lorg/apache/http/Header;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    new-instance v3, Lcom/avos/avoscloud/AVException;

    const/16 v4, 0x6b

    const-string v5, "Wrong response content type"

    invoke-direct {v3, v4, v5}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    const-string v4, "Wrong response content type"

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    invoke-static {v1}, Lcom/avos/avoscloud/AVErrorUtils;->errorCode(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "code":I
    if-lez v0, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 50
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 53
    :cond_4
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    goto :goto_0
.end method

.method setCallback(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/avos/avoscloud/PostHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 19
    return-void
.end method
