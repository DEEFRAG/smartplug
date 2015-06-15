.class Lcom/tencent/open/j;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/open/RedoDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/RedoDialog;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/RedoDialog;Lcom/tencent/open/o;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/tencent/open/j;-><init>(Lcom/tencent/open/RedoDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-static {v0}, Lcom/tencent/open/RedoDialog;->c(Lcom/tencent/open/RedoDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 222
    iget-object v0, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-static {v0}, Lcom/tencent/open/RedoDialog;->d(Lcom/tencent/open/RedoDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 223
    iget-object v0, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-static {v0}, Lcom/tencent/open/RedoDialog;->a(Lcom/tencent/open/RedoDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 224
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 213
    const-string v0, "TDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/Util;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 215
    iget-object v0, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-static {v0}, Lcom/tencent/open/RedoDialog;->c(Lcom/tencent/open/RedoDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 216
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-static {v0}, Lcom/tencent/open/RedoDialog;->b(Lcom/tencent/open/RedoDialog;)Lcom/tencent/tauth/IUiListener;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 208
    iget-object v0, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-virtual {v0}, Lcom/tencent/open/RedoDialog;->dismiss()V

    .line 209
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 172
    const-string v1, "TDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/Util;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    invoke-static {p2}, Lcom/tencent/open/Util;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 180
    :try_start_0
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    if-nez v2, :cond_0

    .line 182
    const-string v2, "error_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    const-string v3, "access_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/open/RedoDialog;->c:Ljava/lang/String;

    .line 185
    iget-object v2, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    const-string v3, "expires_in"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/open/RedoDialog;->d:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    iget-object v1, v1, Lcom/tencent/open/RedoDialog;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    iget-object v1, v1, Lcom/tencent/open/RedoDialog;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 200
    :goto_0
    return v0

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-static {v1}, Lcom/tencent/open/RedoDialog;->b(Lcom/tencent/open/RedoDialog;)Lcom/tencent/tauth/IUiListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    iget-object v2, v2, Lcom/tencent/open/RedoDialog;->b:Lorg/json/JSONObject;

    invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 191
    iget-object v1, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-virtual {v1}, Lcom/tencent/open/RedoDialog;->dismiss()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    iget-object v1, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-static {v1}, Lcom/tencent/open/RedoDialog;->b(Lcom/tencent/open/RedoDialog;)Lcom/tencent/tauth/IUiListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    iget-object v2, v2, Lcom/tencent/open/RedoDialog;->b:Lorg/json/JSONObject;

    invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 195
    iget-object v1, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/RedoDialog;

    invoke-virtual {v1}, Lcom/tencent/open/RedoDialog;->dismiss()V

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
