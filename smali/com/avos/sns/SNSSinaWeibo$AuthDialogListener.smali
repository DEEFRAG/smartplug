.class Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;
.super Ljava/lang/Object;
.source "SNSSinaWeibo.java"

# interfaces
.implements Lcom/weibo/sdk/android/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/sns/SNSSinaWeibo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/sns/SNSSinaWeibo;


# direct methods
.method constructor <init>(Lcom/avos/sns/SNSSinaWeibo;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    .prologue
    .line 106
    sget-object v0, Lcom/avos/sns/SNSSinaWeibo;->TAG:Ljava/lang/String;

    const-string v1, "User Cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v0, v0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v0, v0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    iget-object v1, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    new-instance v2, Lcom/avos/sns/SNSException;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/avos/sns/SNSException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const-string v4, "access_token"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "token":Ljava/lang/String;
    const-string v4, "expires_in"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "expiresIn":Ljava/lang/String;
    iget-object v4, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    new-instance v5, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v5, v3, v1}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/avos/sns/SNSSinaWeibo;->oauth2AccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v4, v5}, Lcom/avos/sns/SNSSinaWeibo;->access$002(Lcom/avos/sns/SNSSinaWeibo;Lcom/weibo/sdk/android/Oauth2AccessToken;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 79
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 80
    .local v2, "seconds":Ljava/lang/Long;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 81
    .local v0, "expires":Ljava/util/Date;
    iget-object v4, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/avos/sns/SNSSinaWeibo;->expiresAt:Ljava/lang/String;

    .line 83
    iget-object v4, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iput-object v3, v4, Lcom/avos/sns/SNSSinaWeibo;->accessToken:Ljava/lang/String;

    .line 84
    iget-object v4, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/avos/sns/SNSSinaWeibo;->userId:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    const-string v5, "userName"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/avos/sns/SNSSinaWeibo;->userName:Ljava/lang/String;

    .line 86
    iget-object v4, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    # getter for: Lcom/avos/sns/SNSSinaWeibo;->oauth2AccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v4}, Lcom/avos/sns/SNSSinaWeibo;->access$000(Lcom/avos/sns/SNSSinaWeibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v5, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v5, v5, Lcom/avos/sns/SNSSinaWeibo;->applicationContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    invoke-virtual {v6}, Lcom/avos/sns/SNSSinaWeibo;->type()Lcom/avos/sns/SNSType;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/avos/sns/SNSSinaWeibo;->save(Landroid/content/Context;Lcom/avos/sns/SNSType;)V

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v4, v4, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v4, v4, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    iget-object v5, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 93
    :cond_1
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboDialogError;)V
    .locals 5
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboDialogError;

    .prologue
    .line 97
    sget-object v0, Lcom/avos/sns/SNSSinaWeibo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboDialogError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v0, v0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v0, v0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    iget-object v1, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    new-instance v2, Lcom/avos/sns/SNSException;

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboDialogError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboDialogError;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/avos/sns/SNSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 5
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboException;

    .prologue
    .line 115
    sget-object v0, Lcom/avos/sns/SNSSinaWeibo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v0, v0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    iget-object v0, v0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    iget-object v1, p0, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;->this$0:Lcom/avos/sns/SNSSinaWeibo;

    new-instance v2, Lcom/avos/sns/SNSException;

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/avos/sns/SNSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 120
    :cond_0
    return-void
.end method
