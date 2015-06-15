.class public Lcom/avos/avoscloud/GetHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "GetHttpResponseHandler.java"


# instance fields
.field private absoluteURLString:Ljava/lang/String;

.field private callback:Lcom/avos/avoscloud/GenericObjectCallback;

.field private policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 12
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 16
    iput-object p1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V
    .locals 0
    .param p1, "cb"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p2, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .param p3, "absoluteURLString"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 22
    iput-object p2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 23
    iput-object p3, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/GetHttpResponseHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/GetHttpResponseHandler;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    return-object v0
.end method

.method private isNotModifiedStatus(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 35
    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnAuthorize(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 39
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryLastModifyCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "lastModifiedValue"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 46
    :cond_0
    if-nez p1, :cond_2

    .line 47
    const-string v0, "null last-modified value"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 51
    :cond_1
    :goto_1
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    const-wide v2, 0x7fffffffffffffffL

    new-instance v5, Lcom/avos/avoscloud/GetHttpResponseHandler$1;

    invoke-direct {v5, p0}, Lcom/avos/avoscloud/GetHttpResponseHandler$1;-><init>(Lcom/avos/avoscloud/GetHttpResponseHandler;)V

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->getLastModify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/PaasClient;->updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method getCallback()Lcom/avos/avoscloud/GenericObjectCallback;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    return-object v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "content":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;->isNotModifiedStatus(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const-string v2, "Last modify matched."

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "lastModifiedValue":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/GetHttpResponseHandler;->tryLastModifyCache(Ljava/lang/String;)V

    .line 134
    .end local v1    # "lastModifiedValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;->isUnAuthorize(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nerror:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 127
    :cond_3
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nerror:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-virtual {v2, p4, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 7
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "body"    # [B

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "content":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->isJSONResponse([Lorg/apache/http/Header;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    new-instance v4, Lcom/avos/avoscloud/AVException;

    const/16 v5, 0x6b

    const-string v6, "Wrong response content type"

    invoke-direct {v4, v5, v6}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    const-string v5, "Wrong response content type"

    invoke-virtual {v3, v4, v5}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    invoke-static {v1}, Lcom/avos/avoscloud/AVErrorUtils;->errorCode(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "code":I
    if-lez v0, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v3, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    sget-object v4, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 92
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Lcom/avos/avoscloud/AVCacheManager;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    :cond_4
    iget-object v3, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 97
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "lastModify":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Lcom/avos/avoscloud/AVCacheManager;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 99
    iget-object v3, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/avos/avoscloud/PaasClient;->updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    .end local v2    # "lastModify":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 104
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 107
    :cond_6
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    goto :goto_0
.end method

.method setCallback(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 28
    return-void
.end method
