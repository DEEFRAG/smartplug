.class Lcom/avos/avoscloud/PushService$3;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushService;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushService;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$3;->this$0:Lcom/avos/avoscloud/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 227
    # getter for: Lcom/avos/avoscloud/PushService;->connecting:Ljava/lang/Object;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$100()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 229
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    .line 230
    .local v1, "installation":Lcom/avos/avoscloud/AVInstallation;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "installationId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    .line 232
    .local v3, "persistenceUtils":Lcom/avos/avoscloud/AVPersistenceUtils;
    const-string v4, "AV_PUSH_SERVICE_SETTINGS_KEY"

    const-string v6, "INSTALLATION_SAVED"

    invoke-virtual {v3, v4, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 235
    :try_start_1
    # getter for: Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start to connect to push server with installationId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->save()V

    .line 238
    const-string v4, "AV_PUSH_SERVICE_SETTINGS_KEY"

    const-string v6, "INSTALLATION_SAVED"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Lcom/avos/avoscloud/AVException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/avos/avoscloud/PushService$3;->this$0:Lcom/avos/avoscloud/PushService;

    # invokes: Lcom/avos/avoscloud/PushService;->initConnectionManager()V
    invoke-static {v4}, Lcom/avos/avoscloud/PushService;->access$300(Lcom/avos/avoscloud/PushService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    .end local v1    # "installation":Lcom/avos/avoscloud/AVInstallation;
    .end local v2    # "installationId":Ljava/lang/String;
    .end local v3    # "persistenceUtils":Lcom/avos/avoscloud/AVPersistenceUtils;
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    return-void

    .line 240
    .restart local v1    # "installation":Lcom/avos/avoscloud/AVInstallation;
    .restart local v2    # "installationId":Ljava/lang/String;
    .restart local v3    # "persistenceUtils":Lcom/avos/avoscloud/AVPersistenceUtils;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Lcom/avos/avoscloud/AVException;
    :try_start_4
    # getter for: Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Save installationId Failed"

    invoke-static {v4, v6, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 242
    # getter for: Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVException;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVException;->getCode()I

    move-result v4

    const/16 v6, 0x89

    if-ne v4, v6, :cond_0

    .line 245
    # getter for: Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v6, "error Code 137"

    invoke-static {v4, v6}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v4, "AV_PUSH_SERVICE_SETTINGS_KEY"

    const-string v6, "INSTALLATION_SAVED"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 252
    .end local v0    # "e":Lcom/avos/avoscloud/AVException;
    .end local v1    # "installation":Lcom/avos/avoscloud/AVInstallation;
    .end local v2    # "installationId":Ljava/lang/String;
    .end local v3    # "persistenceUtils":Lcom/avos/avoscloud/AVPersistenceUtils;
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    # getter for: Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Exception when init connection, looks like you have not called AVOSCloud.initialized yet"

    invoke-static {v4, v6, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4
.end method
