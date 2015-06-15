.class public Lcom/avos/avoscloud/AVErrorUtils;
.super Ljava/lang/Object;
.source "AVErrorUtils.java"


# static fields
.field public static final CIRCLE_REFERENCE:I = 0x186a1

.field public static final MISSING_OBJECTID:I = 0x68


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static circleException()Lcom/avos/avoscloud/AVException;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const v1, 0x186a1

    const-string v2, "Found a circular dependency when saving."

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .param p0, "code"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createException(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 16
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .local v3, "object":Lorg/json/JSONObject;
    const-string v4, "error"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 19
    .local v0, "code":I
    new-instance v4, Lcom/avos/avoscloud/AVException;

    invoke-direct {v4, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v0    # "code":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 20
    :catch_0
    move-exception v2

    .line 21
    .local v2, "exception":Ljava/lang/Exception;
    new-instance v4, Lcom/avos/avoscloud/AVException;

    const/16 v5, 0x3e7

    invoke-direct {v4, v5, p0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 26
    instance-of v0, p0, Lcom/avos/avoscloud/AVException;

    if-eqz v0, :cond_0

    .line 27
    check-cast p0, Lcom/avos/avoscloud/AVException;

    .line 34
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .line 29
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    invoke-static {p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    goto :goto_0

    .line 31
    :cond_1
    if-eqz p0, :cond_2

    .line 32
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 34
    :cond_2
    new-instance p0, Lcom/avos/avoscloud/AVException;

    .end local p0    # "t":Ljava/lang/Throwable;
    const/16 v0, 0x3e7

    const-string v1, "unknown reason"

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static errorCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "code":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 46
    .end local v0    # "code":I
    .end local v2    # "object":Lorg/json/JSONObject;
    .local v1, "code":I
    :goto_0
    return v1

    .line 45
    .end local v1    # "code":I
    .restart local v0    # "code":I
    :catch_0
    move-exception v3

    move v1, v0

    .line 46
    .end local v0    # "code":I
    .restart local v1    # "code":I
    goto :goto_0
.end method

.method public static fileDownloadInConsistentFailureException()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 67
    const/16 v0, 0xfd

    const-string v1, "Downloaded file is inconsistent with original file"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public static invalidObjectIdException()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 54
    const/16 v0, 0x68

    const-string v1, "Invalid object id."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public static invalidQueryException()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 58
    const/16 v0, 0x66

    const-string v1, "Invalid query."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public static sessionMissingException()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 62
    const/16 v0, 0xce

    const-string v1, "No valid session token, make sure signUp or login has been called."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method
