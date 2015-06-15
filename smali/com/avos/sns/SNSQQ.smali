.class public Lcom/avos/sns/SNSQQ;
.super Lcom/avos/sns/SNSBase;
.source "SNSQQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/sns/SNSQQ$QQListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private listener:Lcom/avos/sns/SNSQQ$QQListener;

.field private tencent:Lcom/tencent/tauth/Tencent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/avos/sns/SNSQQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/sns/SNSQQ;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sec"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avos/sns/SNSBase;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/avos/sns/SNSQQ;->appKey:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/avos/sns/SNSQQ;->appSec:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/avos/sns/SNSQQ;->redirectUrl:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public logIn(Landroid/app/Activity;Lcom/avos/sns/SNSCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cb"    # Lcom/avos/sns/SNSCallback;

    .prologue
    .line 42
    iput-object p2, p0, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/sns/SNSQQ;->applicationContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/avos/sns/SNSQQ;->type()Lcom/avos/sns/SNSType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/sns/SNSQQ;->hasValidSessionToken(Landroid/app/Activity;Lcom/avos/sns/SNSType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->appKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->callback:Lcom/avos/sns/SNSCallback;

    invoke-static {}, Lcom/avos/sns/SNSException;->noAppKeyException()Lcom/avos/sns/SNSException;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->appKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/sns/SNSQQ;->applicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/sns/SNSQQ;->tencent:Lcom/tencent/tauth/Tencent;

    .line 63
    new-instance v0, Lcom/avos/sns/SNSQQ$QQListener;

    invoke-direct {v0, p0}, Lcom/avos/sns/SNSQQ$QQListener;-><init>(Lcom/avos/sns/SNSQQ;)V

    iput-object v0, p0, Lcom/avos/sns/SNSQQ;->listener:Lcom/avos/sns/SNSQQ$QQListener;

    .line 70
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->tencent:Lcom/tencent/tauth/Tencent;

    const-string v1, ""

    iget-object v2, p0, Lcom/avos/sns/SNSQQ;->listener:Lcom/avos/sns/SNSQQ$QQListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_0
.end method

.method public logOut(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->tencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->tencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/avos/sns/SNSQQ;->type()Lcom/avos/sns/SNSType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/sns/SNSQQ;->removeArchive(Landroid/content/Context;Lcom/avos/sns/SNSType;)V

    .line 78
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->tencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/avos/sns/SNSQQ;->tencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    .line 121
    :cond_0
    return-void
.end method

.method public type()Lcom/avos/sns/SNSType;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/avos/sns/SNSType;->AVOSCloudSNSQQ:Lcom/avos/sns/SNSType;

    return-object v0
.end method
