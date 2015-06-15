.class public Lcom/baidu/lightapp/LightAppPush;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/lightapp/LightAppPush$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/lightapp/LightAppPush;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/lightapp/LightAppPush;->a:Lcom/baidu/lightapp/LightAppPush;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/lightapp/LightAppPush;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/lightapp/LightAppPush;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/baidu/frontia/base/impl/FrontiaCmd;
    .locals 3

    invoke-static {}, Lcom/baidu/frontia/base/httpclient/DomainManager;->get()Lcom/baidu/frontia/base/httpclient/DomainManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/frontia/base/httpclient/DomainManager;->getPushUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/frontia/base/impl/FrontiaCmd;

    iget-object v2, p0, Lcom/baidu/lightapp/LightAppPush;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/baidu/frontia/base/impl/FrontiaCmd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Lcom/baidu/lightapp/LightAppPush;)Lcom/baidu/frontia/base/impl/FrontiaCmd;
    .locals 1

    invoke-direct {p0}, Lcom/baidu/lightapp/LightAppPush;->a()Lcom/baidu/frontia/base/impl/FrontiaCmd;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/lightapp/LightAppPush;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/baidu/lightapp/LightAppPush;->a:Lcom/baidu/lightapp/LightAppPush;

    if-nez v0, :cond_3

    const-class v1, Lcom/baidu/frontia/api/FrontiaPush;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/lightapp/LightAppPush;->a:Lcom/baidu/lightapp/LightAppPush;

    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/lightapp/LightAppPush;

    invoke-direct {v0, p0, p1}, Lcom/baidu/lightapp/LightAppPush;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/lightapp/LightAppPush;->a:Lcom/baidu/lightapp/LightAppPush;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/baidu/lightapp/LightAppPush;->a:Lcom/baidu/lightapp/LightAppPush;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkLightAppBindState()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/lightapp/LightAppPush;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/PushManager;->getLappBindState(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public delLightAppTags(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/lightapp/LightAppPush;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/baidu/android/pushservice/PushManager;->delLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public lightAppBind()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush;->b:Landroid/content/Context;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/baidu/lightapp/LightAppPush;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public lightAppUnbind()V
    .locals 0

    return-void
.end method

.method public listLightAppTags()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/lightapp/LightAppPush;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/PushManager;->listLappTags(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public pushMessage(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V
    .locals 7

    const/4 v6, -0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "Message body is null."

    invoke-interface {p2, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/frontia/base/check/NetworkCheck;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "push_type"

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lcom/baidu/lightapp/LightAppPush$a;

    invoke-direct {p0}, Lcom/baidu/lightapp/LightAppPush;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/lightapp/LightAppPush$a;-><init>(Lcom/baidu/lightapp/LightAppPush;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/lightapp/LightAppPush$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "The network is not available."

    invoke-interface {p2, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public pushMessage(Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V
    .locals 7

    const/4 v6, -0x1

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "tag is null or empty."

    invoke-interface {p3, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const-string v0, "Message body is null."

    invoke-interface {p3, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/frontia/base/check/NetworkCheck;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {p2}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "push_type"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "tag"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/baidu/lightapp/LightAppPush$a;

    invoke-direct {p0}, Lcom/baidu/lightapp/LightAppPush;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/lightapp/LightAppPush$a;-><init>(Lcom/baidu/lightapp/LightAppPush;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/lightapp/LightAppPush$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "The network is not available."

    invoke-interface {p3, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public pushMessage(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V
    .locals 7

    const/4 v6, -0x1

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "uid is null or empty."

    invoke-interface {p4, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_3

    const-string v0, "uid is longer than 256 bytes."

    invoke-interface {p4, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    if-nez p3, :cond_6

    const-string v0, "Message body is null."

    invoke-interface {p4, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_4

    const-string v0, "channelId is longer than 128 bytes."

    invoke-interface {p4, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/frontia/base/check/NetworkCheck;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_0
    invoke-virtual {p3}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "push_type"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_7

    const-string v0, "channel_id"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    new-instance v0, Lcom/baidu/lightapp/LightAppPush$a;

    invoke-direct {p0}, Lcom/baidu/lightapp/LightAppPush;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/lightapp/LightAppPush$a;-><init>(Lcom/baidu/lightapp/LightAppPush;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/lightapp/LightAppPush$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v0, "The network is not available."

    invoke-interface {p4, v6, v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setLightAppTags(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/lightapp/LightAppPush;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/lightapp/LightAppPush;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/baidu/android/pushservice/PushManager;->setLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
