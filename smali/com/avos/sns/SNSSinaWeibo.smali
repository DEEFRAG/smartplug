.class public Lcom/avos/sns/SNSSinaWeibo;
.super Lcom/avos/sns/SNSBase;
.source "SNSSinaWeibo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private oauth2AccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private ssoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

.field private weiboImpl:Lcom/weibo/sdk/android/Weibo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/avos/sns/SNSSinaWeibo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/sns/SNSSinaWeibo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sec"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/avos/sns/SNSBase;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/avos/sns/SNSSinaWeibo;->appKey:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/avos/sns/SNSSinaWeibo;->appSec:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/avos/sns/SNSSinaWeibo;->redirectUrl:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->appKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/sns/SNSSinaWeibo;->redirectUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/weibo/sdk/android/Weibo;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->weiboImpl:Lcom/weibo/sdk/android/Weibo;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/avos/sns/SNSSinaWeibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 1
    .param p0, "x0"    # Lcom/avos/sns/SNSSinaWeibo;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->oauth2AccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    return-object v0
.end method

.method static synthetic access$002(Lcom/avos/sns/SNSSinaWeibo;Lcom/weibo/sdk/android/Oauth2AccessToken;)Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 0
    .param p0, "x0"    # Lcom/avos/sns/SNSSinaWeibo;
    .param p1, "x1"    # Lcom/weibo/sdk/android/Oauth2AccessToken;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/avos/sns/SNSSinaWeibo;->oauth2AccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    return-object p1
.end method

.method private logInImpl(Landroid/app/Activity;Lcom/avos/sns/SNSCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cb"    # Lcom/avos/sns/SNSCallback;

    .prologue
    .line 42
    iput-object p2, p0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->applicationContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/avos/sns/SNSSinaWeibo;->type()Lcom/avos/sns/SNSType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/sns/SNSSinaWeibo;->hasValidSessionToken(Landroid/app/Activity;Lcom/avos/sns/SNSType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->appKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->callback:Lcom/avos/sns/SNSCallback;

    invoke-static {}, Lcom/avos/sns/SNSException;->noAppKeyException()Lcom/avos/sns/SNSException;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    goto :goto_0

    .line 60
    :cond_2
    new-instance v0, Lcom/weibo/sdk/android/sso/SsoHandler;

    iget-object v1, p0, Lcom/avos/sns/SNSSinaWeibo;->weiboImpl:Lcom/weibo/sdk/android/Weibo;

    invoke-direct {v0, p1, v1}, Lcom/weibo/sdk/android/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V

    iput-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->ssoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 61
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->ssoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    new-instance v1, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;

    invoke-direct {v1, p0}, Lcom/avos/sns/SNSSinaWeibo$AuthDialogListener;-><init>(Lcom/avos/sns/SNSSinaWeibo;)V

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorize(Lcom/weibo/sdk/android/WeiboAuthListener;)V

    goto :goto_0
.end method


# virtual methods
.method public logIn(Landroid/app/Activity;Lcom/avos/sns/SNSCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/avos/sns/SNSCallback;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/avos/sns/SNSSinaWeibo;->logInImpl(Landroid/app/Activity;Lcom/avos/sns/SNSCallback;)V

    .line 66
    return-void
.end method

.method public logOut(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/avos/sns/SNSSinaWeibo;->type()Lcom/avos/sns/SNSType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/sns/SNSSinaWeibo;->removeArchive(Landroid/content/Context;Lcom/avos/sns/SNSType;)V

    .line 71
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->ssoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/avos/sns/SNSSinaWeibo;->ssoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 127
    :cond_0
    return-void
.end method

.method public type()Lcom/avos/sns/SNSType;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/avos/sns/SNSType;->AVOSCloudSNSSinaWeibo:Lcom/avos/sns/SNSType;

    return-object v0
.end method
