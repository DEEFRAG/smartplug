.class public Lcom/avos/sns/SNS;
.super Ljava/lang/Object;
.source "SNS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/sns/SNS$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SNS"

.field public static final accessTokenTag:Ljava/lang/String; = "access_token"

.field public static final authDataTag:Ljava/lang/String; = "authData"

.field private static components:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/sns/SNSBase;",
            ">;"
        }
    .end annotation
.end field

.field public static final expiresAtTag:Ljava/lang/String; = "expires_at"

.field public static final expiresInTag:Ljava/lang/String; = "expires_in"

.field public static final snsTypeTag:Ljava/lang/String; = "snsType"

.field public static final userIdTag:Ljava/lang/String; = "userId"

.field public static final userNameTag:Ljava/lang/String; = "userName"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/sns/SNS;->components:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static associateWithAuthData(Lcom/avos/avoscloud/AVUser;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 4
    .param p0, "user"    # Lcom/avos/avoscloud/AVUser;
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVUser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;

    const-string v1, "access_token"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "expires_at"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "snsType"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/sns/SNSType;

    invoke-static {v3}, Lcom/avos/sns/SNSBase;->typeName(Lcom/avos/sns/SNSType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, "userAuth":Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    invoke-static {p0, v0, p2}, Lcom/avos/avoscloud/AVUser;->associateWithAuthData(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/SaveCallback;)V

    .line 150
    return-void
.end method

.method private static component(Lcom/avos/sns/SNSType;)Lcom/avos/sns/SNSBase;
    .locals 2
    .param p0, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 103
    sget-object v0, Lcom/avos/sns/SNS;->components:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Lcom/avos/sns/SNSBase;->typeName(Lcom/avos/sns/SNSType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/sns/SNSBase;

    return-object v0
.end method

.method public static doesUserExpireOfPlatform(Lcom/avos/sns/SNSType;)Z
    .locals 2
    .param p0, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/avos/sns/SNS;->component(Lcom/avos/sns/SNSType;)Lcom/avos/sns/SNSBase;

    move-result-object v0

    .line 215
    .local v0, "base":Lcom/avos/sns/SNSBase;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/avos/sns/SNSBase;->doesUserExpireOfPlatform()Z

    move-result v1

    .line 218
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;

    const-string v1, "access_token"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "expires_at"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "snsType"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/sns/SNSType;

    invoke-static {v3}, Lcom/avos/sns/SNSBase;->typeName(Lcom/avos/sns/SNSType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "userAuth":Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    invoke-static {p0, v0, p2}, Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V

    .line 133
    return-void
.end method

.method public static loginWithAuthData(Ljava/util/Map;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0, p0, p1}, Lcom/avos/sns/SNS;->loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Lcom/avos/avoscloud/LogInCallback;)V

    .line 115
    return-void
.end method

.method public static loginWithCallback(Landroid/app/Activity;Lcom/avos/sns/SNSType;Lcom/avos/sns/SNSCallback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/avos/sns/SNSType;
    .param p2, "callback"    # Lcom/avos/sns/SNSCallback;

    .prologue
    .line 78
    invoke-static {p1}, Lcom/avos/sns/SNS;->component(Lcom/avos/sns/SNSType;)Lcom/avos/sns/SNSBase;

    move-result-object v0

    .line 79
    .local v0, "base":Lcom/avos/sns/SNSBase;
    if-nez v0, :cond_0

    .line 80
    invoke-static {p0, p1}, Lcom/avos/sns/SNSBase;->navigateToWebAuthentication(Landroid/app/Activity;Lcom/avos/sns/SNSType;)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0, p0, p2}, Lcom/avos/sns/SNSBase;->logIn(Landroid/app/Activity;Lcom/avos/sns/SNSCallback;)V

    goto :goto_0
.end method

.method public static logout(Landroid/app/Activity;Lcom/avos/sns/SNSType;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 184
    invoke-static {p1}, Lcom/avos/sns/SNS;->component(Lcom/avos/sns/SNSType;)Lcom/avos/sns/SNSBase;

    move-result-object v0

    .line 185
    .local v0, "base":Lcom/avos/sns/SNSBase;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p0}, Lcom/avos/sns/SNSBase;->logOut(Landroid/app/Activity;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static logout(Lcom/avos/avoscloud/AVUser;Lcom/avos/sns/SNSType;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p0, "user"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "type"    # Lcom/avos/sns/SNSType;
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 161
    invoke-static {p1}, Lcom/avos/sns/SNSBase;->typeName(Lcom/avos/sns/SNSType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/avos/avoscloud/AVUser;->dissociateAuthData(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V

    .line 162
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;Lcom/avos/sns/SNSType;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 96
    invoke-static {p3}, Lcom/avos/sns/SNS;->component(Lcom/avos/sns/SNSType;)Lcom/avos/sns/SNSBase;

    move-result-object v0

    .line 97
    .local v0, "base":Lcom/avos/sns/SNSBase;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0, p1, p2}, Lcom/avos/sns/SNSBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    :cond_0
    return-void
.end method

.method public static setupPlatform(Lcom/avos/sns/SNSType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # Lcom/avos/sns/SNSType;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSec"    # Ljava/lang/String;
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "base":Lcom/avos/sns/SNSBase;
    sget-object v1, Lcom/avos/sns/SNS$1;->$SwitchMap$com$avos$sns$SNSType:[I

    invoke-virtual {p0}, Lcom/avos/sns/SNSType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 60
    const/4 v1, -0x1

    const-string v2, "Not supported type"

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 54
    :pswitch_0
    new-instance v0, Lcom/avos/sns/SNSSinaWeibo;

    .end local v0    # "base":Lcom/avos/sns/SNSBase;
    invoke-direct {v0, p1, p2, p3}, Lcom/avos/sns/SNSSinaWeibo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .restart local v0    # "base":Lcom/avos/sns/SNSBase;
    :goto_0
    if-eqz v0, :cond_0

    .line 63
    sget-object v1, Lcom/avos/sns/SNS;->components:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Lcom/avos/sns/SNSBase;->typeName(Lcom/avos/sns/SNSType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    return-void

    .line 57
    :pswitch_1
    new-instance v0, Lcom/avos/sns/SNSQQ;

    .end local v0    # "base":Lcom/avos/sns/SNSBase;
    invoke-direct {v0, p1, p2, p3}, Lcom/avos/sns/SNSQQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .restart local v0    # "base":Lcom/avos/sns/SNSBase;
    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static userInfo(Lcom/avos/sns/SNSType;)Ljava/util/Map;
    .locals 2
    .param p0, "type"    # Lcom/avos/sns/SNSType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/sns/SNSType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {p0}, Lcom/avos/sns/SNS;->component(Lcom/avos/sns/SNSType;)Lcom/avos/sns/SNSBase;

    move-result-object v0

    .line 201
    .local v0, "base":Lcom/avos/sns/SNSBase;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/avos/sns/SNSBase;->userInfo()Ljava/util/Map;

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static webLoginWithCallback(Landroid/app/Activity;Lcom/avos/sns/SNSCallback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/avos/sns/SNSCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    sget-object v0, Lcom/avos/sns/SNSType;->AVOSCloudSNS:Lcom/avos/sns/SNSType;

    invoke-static {p0, v0}, Lcom/avos/sns/SNSBase;->navigateToWebAuthentication(Landroid/app/Activity;Lcom/avos/sns/SNSType;)V

    .line 175
    return-void
.end method
