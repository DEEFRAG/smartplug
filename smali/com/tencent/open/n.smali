.class Lcom/tencent/open/n;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/open/a;


# direct methods
.method constructor <init>(Lcom/tencent/open/a;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/tencent/open/n;->a:Lcom/tencent/open/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 1076
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 1078
    const/4 v1, 0x0

    .line 1080
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "ret"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1086
    :goto_0
    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/tencent/open/n;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->b(Lcom/tencent/open/a;)Lcom/tencent/tauth/IUiListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 1095
    :goto_1
    return-void

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1084
    iget-object v0, p0, Lcom/tencent/open/n;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a;)V

    move v0, v1

    goto :goto_0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/n;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a;)V

    goto :goto_1

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/tencent/open/n;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->b(Lcom/tencent/open/a;)Lcom/tencent/tauth/IUiListener;

    move-result-object v1

    new-instance v2, Lcom/tencent/tauth/UiError;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_1
.end method
