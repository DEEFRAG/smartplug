.class Lcom/tencent/open/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field final synthetic a:Lcom/tencent/open/OpenUi;

.field private b:Lcom/tencent/tauth/IUiListener;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;ZZ)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/tencent/open/b;->a:Lcom/tencent/open/OpenUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    iput-object p2, p0, Lcom/tencent/open/b;->b:Lcom/tencent/tauth/IUiListener;

    .line 912
    iput-boolean p3, p0, Lcom/tencent/open/b;->c:Z

    .line 913
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/tencent/open/b;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 977
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 918
    :try_start_0
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 920
    const-string v2, "openid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 921
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/open/b;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v3}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 928
    iget-object v3, p0, Lcom/tencent/open/b;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v3}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/tencent/open/b;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v0}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/tencent/open/b;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v0}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;Ljava/lang/String;)V

    .line 935
    :cond_0
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 936
    if-eqz v0, :cond_1

    .line 938
    :try_start_1
    iget-object v1, p0, Lcom/tencent/open/b;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v1}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 940
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pf"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 961
    :cond_1
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/open/b;->c:Z

    if-eqz v0, :cond_2

    .line 962
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 966
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/open/b;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 967
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 963
    :catch_1
    move-exception v0

    .line 964
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/tencent/open/b;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 972
    return-void
.end method
