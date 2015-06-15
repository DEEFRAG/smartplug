.class public Lcom/baidu/android/pushservice/LoadExecutor;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYAFbG0oYmKgh6o7BhZIHf1njBpZXqyWBnYz2ip3Wp+s97OeA/pTe8xebuGJHwq4xbsGQrJWepIbUVrdjm6JRmdvuJhar7/hC/UNnUkJgYdYl10OZKlvcFFgK3V7XGBPplXldDnhbgscna3JG8U3025WSxZCP5vy/8cfxsEoVx5QIDAQAB"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/baidu/android/pushservice/LoadExecutor;->isPushLibLoaded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/LoadExecutor$1;

    invoke-direct {v0, p1, p0}, Lcom/baidu/android/pushservice/LoadExecutor$1;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/LoadExecutor$1;->start()V

    goto :goto_0
.end method

.method public static isPushLibLoaded(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.baidu.android.pushservice.internal.PushManager"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized loadPush(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const-class v1, Lcom/baidu/android/pushservice/LoadExecutor;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.baidu.android.pushservice.internal.PushManager"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYAFbG0oYmKgh6o7BhZIHf1njBpZXqyWBnYz2ip3Wp+s97OeA/pTe8xebuGJHwq4xbsGQrJWepIbUVrdjm6JRmdvuJhar7/hC/UNnUkJgYdYl10OZKlvcFFgK3V7XGBPplXldDnhbgscna3JG8U3025WSxZCP5vy/8cfxsEoVx5QIDAQAB"

    invoke-static {v2}, Lcom/baidu/android/silentupdate/SilentManager;->setKey(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "frontia_plugin"

    const-string v3, "plugin-deploy.jar"

    invoke-static {p0, v2, v3}, Lcom/baidu/android/silentupdate/SilentManager;->loadLib(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.baidu.android.pushservice.internal.PushManager"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
