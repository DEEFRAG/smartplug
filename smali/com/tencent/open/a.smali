.class Lcom/tencent/open/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field final synthetic a:Lcom/tencent/open/OpenUi;

.field private b:Lcom/tencent/tauth/IUiListener;

.field private c:Landroid/app/Activity;

.field private d:Landroid/os/Bundle;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/open/OpenUi;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 991
    iput-object p1, p0, Lcom/tencent/open/a;->a:Lcom/tencent/open/OpenUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    new-instance v0, Lcom/tencent/open/n;

    invoke-direct {v0, p0}, Lcom/tencent/open/n;-><init>(Lcom/tencent/open/a;)V

    iput-object v0, p0, Lcom/tencent/open/a;->i:Landroid/os/Handler;

    .line 992
    iput-object p2, p0, Lcom/tencent/open/a;->c:Landroid/app/Activity;

    .line 993
    iput-object p3, p0, Lcom/tencent/open/a;->d:Landroid/os/Bundle;

    .line 994
    iput-object p4, p0, Lcom/tencent/open/a;->b:Lcom/tencent/tauth/IUiListener;

    .line 995
    iput-object p5, p0, Lcom/tencent/open/a;->e:Ljava/lang/String;

    .line 996
    iput-object p6, p0, Lcom/tencent/open/a;->f:Ljava/lang/String;

    .line 997
    iput-object p7, p0, Lcom/tencent/open/a;->g:Ljava/lang/String;

    .line 998
    iput-object p8, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    .line 999
    const-string v0, "toddtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncrytokenListener appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  openid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1054
    iget-object v0, p0, Lcom/tencent/open/a;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v0}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/tencent/open/a;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v0}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/tencent/open/a;->a:Lcom/tencent/open/OpenUi;

    iget-object v1, p0, Lcom/tencent/open/a;->c:Landroid/app/Activity;

    const-string v2, "action_login"

    iget-object v3, p0, Lcom/tencent/open/a;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/open/a;->b:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    .line 1057
    return-void
.end method

.method static synthetic a(Lcom/tencent/open/a;)V
    .locals 0

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/tencent/open/a;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1061
    const-string v0, "toddtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validToken encrytoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v0, Lcom/tencent/open/OpenApi;

    iget-object v1, p0, Lcom/tencent/open/a;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v1}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/open/OpenApi;-><init>(Lcom/tencent/open/TContext;)V

    .line 1063
    const-string v2, "https://openmobile.qq.com/user/user_login_statis"

    .line 1064
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1065
    const-string v1, "oauth_consumer_key"

    iget-object v4, p0, Lcom/tencent/open/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v1, "openid"

    iget-object v4, p0, Lcom/tencent/open/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v1, "access_token"

    iget-object v4, p0, Lcom/tencent/open/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string v1, "encrytoken"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object v1, p0, Lcom/tencent/open/a;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v1}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    const-string v4, "POST"

    new-instance v5, Lcom/tencent/open/d;

    invoke-direct {v5, p0}, Lcom/tencent/open/d;-><init>(Lcom/tencent/open/a;)V

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    .line 1071
    return-void
.end method

.method static synthetic b(Lcom/tencent/open/a;)Lcom/tencent/tauth/IUiListener;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/tencent/open/a;->b:Lcom/tencent/tauth/IUiListener;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/open/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/tencent/open/a;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    const-string v1, "action_check_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-direct {p0}, Lcom/tencent/open/a;->a()V

    .line 1050
    :cond_0
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 1006
    const/4 v0, 0x0

    .line 1008
    :try_start_0
    const-string v1, "encry_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1012
    :goto_0
    const-string v1, "toddtest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EncrytokenListener onComplete jsonobj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v1, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    const-string v2, "action_check_token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1016
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1017
    invoke-direct {p0, v0}, Lcom/tencent/open/a;->a(Ljava/lang/String;)V

    .line 1031
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/open/a;->a:Lcom/tencent/open/OpenUi;

    invoke-virtual {v0}, Lcom/tencent/open/OpenUi;->a()V

    .line 1032
    return-void

    .line 1009
    :catch_0
    move-exception v1

    .line 1010
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1019
    :cond_1
    invoke-direct {p0}, Lcom/tencent/open/a;->a()V

    goto :goto_1

    .line 1021
    :cond_2
    const-string v1, "action_challenge"

    iget-object v2, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "action_story"

    iget-object v2, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "action_invite"

    iget-object v2, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "action_brag"

    iget-object v2, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "action_ask"

    iget-object v2, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "action_gift"

    iget-object v2, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    :cond_3
    iget-object v1, p0, Lcom/tencent/open/a;->d:Landroid/os/Bundle;

    const-string v2, "encrytoken"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/tencent/open/a;->a:Lcom/tencent/open/OpenUi;

    iget-object v1, p0, Lcom/tencent/open/a;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/open/a;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/open/a;->b:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_1
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/tencent/open/a;->h:Ljava/lang/String;

    const-string v1, "action_check_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-direct {p0}, Lcom/tencent/open/a;->a()V

    .line 1041
    :cond_0
    return-void
.end method
