.class Lcom/baidu/lightapp/LightAppPush$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/lightapp/LightAppPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/lightapp/LightAppPush;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/baidu/lightapp/LightAppPush;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lightapp/LightAppPush$a;->a:Lcom/baidu/lightapp/LightAppPush;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/baidu/lightapp/LightAppPush$a;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/baidu/lightapp/LightAppPush$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/lightapp/LightAppPush$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/lightapp/LightAppPush$a;->e:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/lightapp/LightAppPush$a;->f:J

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "method"

    const-string v2, "create"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "push"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/lightapp/LightAppPush$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "time"

    iget-object v2, p0, Lcom/baidu/lightapp/LightAppPush$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/baidu/lightapp/LightAppPush$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "crontab"

    iget-object v2, p0, Lcom/baidu/lightapp/LightAppPush$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "params"

    iget-object v2, p0, Lcom/baidu/lightapp/LightAppPush$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/baidu/lightapp/LightAppPush$a;->a:Lcom/baidu/lightapp/LightAppPush;

    invoke-static {v1}, Lcom/baidu/lightapp/LightAppPush;->a(Lcom/baidu/lightapp/LightAppPush;)Lcom/baidu/frontia/base/impl/FrontiaCmd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/frontia/base/impl/FrontiaCmd;->exec(Lorg/json/JSONObject;)Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;->errorOccur()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;->getResponse()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "timer_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/lightapp/LightAppPush$a;->e:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    invoke-interface {v1, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush$a;->e:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    const/4 v1, -0x1

    const-string v2, "server response bad format"

    invoke-interface {v0, v1, v2}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush$a;->e:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    invoke-virtual {p1}, Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/baidu/lightapp/LightAppPush$a;->a([Ljava/lang/Void;)Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;

    invoke-virtual {p0, p1}, Lcom/baidu/lightapp/LightAppPush$a;->a(Lcom/baidu/frontia/base/impl/FrontiaCmd$CmdResult;)V

    return-void
.end method
