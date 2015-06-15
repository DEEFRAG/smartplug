.class public abstract Lcom/avos/sns/SNSBase;
.super Ljava/lang/Object;
.source "SNSBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/sns/SNSBase$1;
    }
.end annotation


# static fields
.field public static final AVOS_SNS_BASE_URL:Ljava/lang/String; = "https://cn.avoscloud.com"

.field public static final TAG:Ljava/lang/String;

.field public static final encodingTag:Ljava/lang/String; = "UTF-8"

.field public static final urlTag:Ljava/lang/String; = "url"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public appSec:Ljava/lang/String;

.field public applicationContext:Landroid/content/Context;

.field public callback:Lcom/avos/sns/SNSCallback;

.field public expiresAt:Ljava/lang/String;

.field public redirectUrl:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field private userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/avos/sns/SNSBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/sns/SNSBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/sns/SNSBase;->userInfo:Ljava/util/Map;

    return-void
.end method

.method private static archivePath(Landroid/content/Context;Lcom/avos/sns/SNSType;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 109
    const-string v1, "AVOSCloudSNS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 110
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/avos/sns/SNSBase;->typeName(Lcom/avos/sns/SNSType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static expired(Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 121
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 122
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    return v2
.end method

.method public static isPkgInstalled(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 67
    :cond_0
    :goto_0
    return v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static navigateToWebAuthentication(Landroid/app/Activity;Lcom/avos/sns/SNSType;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avos/sns/SNSWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-static {p1}, Lcom/avos/sns/SNSBase;->urlForType(Lcom/avos/sns/SNSType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public static platformUserIdTag(Lcom/avos/sns/SNSType;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 98
    sget-object v0, Lcom/avos/sns/SNSBase$1;->$SwitchMap$com$avos$sns$SNSType:[I

    invoke-virtual {p0}, Lcom/avos/sns/SNSType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SNSType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :pswitch_0
    const-string v0, "uid"

    .line 102
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "openid"

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static typeName(Lcom/avos/sns/SNSType;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 87
    sget-object v0, Lcom/avos/sns/SNSBase$1;->$SwitchMap$com$avos$sns$SNSType:[I

    invoke-virtual {p0}, Lcom/avos/sns/SNSType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SNSType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :pswitch_0
    const-string v0, "weibo"

    .line 91
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "qq"

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static urlForType(Lcom/avos/sns/SNSType;)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    sget-object v0, Lcom/avos/sns/SNSBase$1;->$SwitchMap$com$avos$sns$SNSType:[I

    invoke-virtual {p0}, Lcom/avos/sns/SNSType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    const-string v0, "%s/%s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "https://cn.avoscloud.com"

    aput-object v2, v1, v3

    const-string v2, "sns.html"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    const-string v0, "%s/%s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "https://cn.avoscloud.com"

    aput-object v2, v1, v3

    const-string v2, "1/oauth2/goto/weibo?mobile_sns=true"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v0, "%s/%s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "https://cn.avoscloud.com"

    aput-object v2, v1, v3

    const-string v2, "1/oauth2/goto/qq?mobile_sns=true"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_2
    const-string v0, "%s/%s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "https://cn.avoscloud.com"

    aput-object v2, v1, v3

    const-string v2, "sns.html"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public doesUserExpireOfPlatform()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/sns/SNSBase;->expiresAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->expiresAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/sns/SNSBase;->expired(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasValidSessionToken(Landroid/app/Activity;Lcom/avos/sns/SNSType;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/avos/sns/SNSBase;->load(Landroid/content/Context;Lcom/avos/sns/SNSType;)V

    .line 180
    iget-object v1, p0, Lcom/avos/sns/SNSBase;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avos/sns/SNSBase;->expiresAt:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/avos/sns/SNSBase;->expiresAt:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/sns/SNSBase;->expired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected load(Landroid/content/Context;Lcom/avos/sns/SNSType;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 146
    invoke-static {p1, p2}, Lcom/avos/sns/SNSBase;->archivePath(Landroid/content/Context;Lcom/avos/sns/SNSType;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "jsonString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/sns/SNSBase;->accessToken:Ljava/lang/String;

    .line 153
    const-string v3, "expires_at"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/sns/SNSBase;->expiresAt:Ljava/lang/String;

    .line 154
    const-string v3, "userId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/sns/SNSBase;->userId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/avos/sns/SNSBase;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract logIn(Landroid/app/Activity;Lcom/avos/sns/SNSCallback;)V
.end method

.method public abstract logOut(Landroid/app/Activity;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method protected removeArchive(Landroid/content/Context;Lcom/avos/sns/SNSType;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 126
    invoke-static {p1, p2}, Lcom/avos/sns/SNSBase;->archivePath(Landroid/content/Context;Lcom/avos/sns/SNSType;)Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 128
    return-void
.end method

.method protected save(Landroid/content/Context;Lcom/avos/sns/SNSType;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/avos/sns/SNSType;

    .prologue
    .line 131
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v2, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "access_token"

    iget-object v4, p0, Lcom/avos/sns/SNSBase;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v3, "expires_at"

    iget-object v4, p0, Lcom/avos/sns/SNSBase;->expiresAt:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v3, "userId"

    iget-object v4, p0, Lcom/avos/sns/SNSBase;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    invoke-static {p1, p2}, Lcom/avos/sns/SNSBase;->archivePath(Landroid/content/Context;Lcom/avos/sns/SNSType;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 143
    :cond_0
    return-void

    .line 136
    .end local v1    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/avos/sns/SNSBase;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract type()Lcom/avos/sns/SNSType;
.end method

.method public userInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->userInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 162
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->userName:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->userInfo:Ljava/util/Map;

    const-string v1, "userName"

    iget-object v2, p0, Lcom/avos/sns/SNSBase;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->userInfo:Ljava/util/Map;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/avos/sns/SNSBase;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->userInfo:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/avos/sns/SNSBase;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->expiresAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->userInfo:Ljava/util/Map;

    const-string v1, "expires_at"

    iget-object v2, p0, Lcom/avos/sns/SNSBase;->expiresAt:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->userInfo:Ljava/util/Map;

    const-string v1, "snsType"

    invoke-virtual {p0}, Lcom/avos/sns/SNSBase;->type()Lcom/avos/sns/SNSType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/avos/sns/SNSBase;->userInfo:Ljava/util/Map;

    return-object v0
.end method
