.class Lcom/avos/sns/SNSQQ$QQListener;
.super Ljava/lang/Object;
.source "SNSQQ.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/sns/SNSQQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QQListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/sns/SNSQQ;


# direct methods
.method constructor <init>(Lcom/avos/sns/SNSQQ;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    .prologue
    .line 110
    sget-object v0, Lcom/avos/sns/SNSQQ;->TAG:Ljava/lang/String;

    const-string v1, "User cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v0, v0, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v0, v0, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    iget-object v1, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    new-instance v2, Lcom/avos/sns/SNSException;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/avos/sns/SNSException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 84
    :try_start_0
    const-string v3, "expires_in"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "expiresIn":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 86
    .local v2, "seconds":Ljava/lang/Long;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 87
    .local v0, "expiresAt":Ljava/util/Date;
    iget-object v3, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/avos/sns/SNSQQ;->expiresAt:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    const-string v4, "access_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/avos/sns/SNSQQ;->accessToken:Ljava/lang/String;

    .line 89
    iget-object v3, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    const-string v4, "openid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/avos/sns/SNSQQ;->userId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v3, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v4, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v4, v4, Lcom/avos/sns/SNSQQ;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    invoke-virtual {v5}, Lcom/avos/sns/SNSQQ;->type()Lcom/avos/sns/SNSType;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/avos/sns/SNSQQ;->save(Landroid/content/Context;Lcom/avos/sns/SNSType;)V

    .line 96
    .end local v0    # "expiresAt":Ljava/util/Date;
    .end local v1    # "expiresIn":Ljava/lang/String;
    .end local v2    # "seconds":Ljava/lang/Long;
    :goto_0
    iget-object v3, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v3, v3, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v3, v3, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    iget-object v4, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 99
    :cond_0
    return-void

    .line 90
    :catch_0
    move-exception v3

    .line 93
    iget-object v3, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v4, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v4, v4, Lcom/avos/sns/SNSQQ;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    invoke-virtual {v5}, Lcom/avos/sns/SNSQQ;->type()Lcom/avos/sns/SNSType;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/avos/sns/SNSQQ;->save(Landroid/content/Context;Lcom/avos/sns/SNSType;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v5, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v5, v5, Lcom/avos/sns/SNSQQ;->applicationContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    invoke-virtual {v6}, Lcom/avos/sns/SNSQQ;->type()Lcom/avos/sns/SNSType;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/avos/sns/SNSQQ;->save(Landroid/content/Context;Lcom/avos/sns/SNSType;)V

    throw v3
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 5
    .param p1, "uiError"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 102
    sget-object v0, Lcom/avos/sns/SNSQQ;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v0, v0, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    iget-object v0, v0, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    iget-object v1, p0, Lcom/avos/sns/SNSQQ$QQListener;->this$0:Lcom/avos/sns/SNSQQ;

    new-instance v2, Lcom/avos/sns/SNSException;

    iget v3, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    iget-object v4, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/avos/sns/SNSException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 107
    :cond_0
    return-void
.end method
