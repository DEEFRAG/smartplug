.class public Lcom/baidu/android/pushservice/PushLightapp;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_REGISTER_SYNC:Ljava/lang/String; = "com.baidu.android.pushservice.action.BIND_SYNC"

.field public static final CONTEXT_FLAG_MODE_MULTI_PROCESS:I = 0x4

.field public static final KEY_PRIORITY2:Ljava/lang/String; = "priority2"

.field public static final SETTINGS_KEY_CURRENT_PACKAGE_NAME:Ljava/lang/String; = "com.baidu.push.cur_pkg"

.field public static final SHARED_NAME_SETTINGS:Ljava/lang/String; = ".push_sync"

.field private static final b:I = -0x2

.field private static final c:Z = false

.field private static final d:Ljava/lang/String; = "PushLightapp"

.field private static e:Lcom/baidu/android/pushservice/PushLightapp; = null

.field private static f:Lcom/baidu/android/pushservice/IPushLightappListener; = null

.field private static final i:Ljava/lang/String; = "com.baidu.android.pushservice.PushService"

.field private static final j:Ljava/lang/String; = "com.baidu.android.pushservice.action.PUSH_SERVICE"

.field private static k:Z = false

.field private static l:I = 0x0

.field private static m:I = 0x0

.field private static final n:I = 0x17


# instance fields
.field a:Lcom/baidu/android/pushservice/aidl/IPushService;

.field private g:Landroid/content/Context;

.field private h:Z

.field private o:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/android/pushservice/PushLightapp;->k:Z

    const/16 v0, 0xdac

    sput v0, Lcom/baidu/android/pushservice/PushLightapp;->l:I

    sput v1, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->h:Z

    new-instance v0, Lcom/baidu/android/pushservice/PushLightapp$2;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushLightapp$2;-><init>(Lcom/baidu/android/pushservice/PushLightapp;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->o:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->e()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->l:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    return p0
.end method

.method private static a(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushLightapp;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/android/pushservice/PushLightapp;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushLightapp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    :cond_1
    :goto_1
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    iget-object v0, v0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/PushLightapp;->e()V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushLightapp;->getFriendPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".push_sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "priority2"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v0, 0x17

    const/4 v6, 0x4

    shl-long/2addr v0, v6

    cmp-long v6, v2, v0

    if-gez v6, :cond_5

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v4

    move-wide v10, v0

    move-wide v1, v10

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".push_sync"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v4

    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_1

    const-string v5, "priority2"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v8, v4, v1

    if-gtz v8, :cond_2

    cmp-long v8, v4, v1

    if-nez v8, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    invoke-static {v6, v0}, Lcom/baidu/android/pushservice/PushLightapp;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v2, v0

    move-wide v0, v4

    :goto_4
    move-object v3, v2

    move-wide v10, v0

    move-wide v1, v10

    goto :goto_2

    :catch_0
    move-exception v6

    move-object v6, v4

    move-object v4, v5

    goto :goto_3

    :cond_3
    move-object v4, v3

    goto/16 :goto_0

    :cond_4
    move-wide v10, v1

    move-wide v0, v10

    move-object v2, v3

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/PushLightapp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/PushLightapp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/PushLightapp;->h:Z

    return p1
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.push.cur_pkg"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lcom/baidu/android/pushservice/PushLightapp;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/baidu/android/pushservice/PushLightapp;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/android/pushservice/PushLightapp;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->f()V

    return-void
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->k:Z

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/baidu/android/pushservice/PushLightapp;)I
    .locals 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->g()I

    move-result v0

    return v0
.end method

.method static synthetic c()Lcom/baidu/android/pushservice/IPushLightappListener;
    .locals 1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->f:Lcom/baidu/android/pushservice/IPushLightappListener;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/PushLightapp;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.PUSH_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    const-string v4, "com.baidu.android.pushservice.PushService"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v0, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/android/pushservice/PushLightapp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Lcom/baidu/android/pushservice/PushLightapp;
    .locals 1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/android/pushservice/PushLightapp;)Lcom/baidu/android/pushservice/PushLightapp;
    .locals 0

    sput-object p0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    return-object p0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->f()V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-nez v0, :cond_1

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    if-lez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->f()V

    :cond_2
    sput-boolean v3, Lcom/baidu/android/pushservice/PushLightapp;->k:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->g:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/baidu/android/pushservice/PushLightapp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/android/pushservice/PushLightapp;->o:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Lcom/baidu/android/pushservice/PushLightapp$1;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushLightapp$1;-><init>(Lcom/baidu/android/pushservice/PushLightapp;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushLightapp$1;->start()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->k:Z

    const/4 v0, 0x0

    sput v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->h:Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->o:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/baidu/android/pushservice/PushLightapp;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->e()V

    return-void
.end method

.method private g()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/aidl/IPushService;->getPushVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFriendPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.BIND_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstanceAsync(Landroid/content/Context;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .locals 2

    const-class v1, Lcom/baidu/android/pushservice/PushLightapp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    iget-object v0, v0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-interface {p1, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->initialComplete(Lcom/baidu/android/pushservice/PushLightapp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sput-object p1, Lcom/baidu/android/pushservice/PushLightapp;->f:Lcom/baidu/android/pushservice/IPushLightappListener;

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushLightapp;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushLightapp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearNewMsgNum(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/aidl/IPushService;->clearNewMsgNum(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllMsg(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/aidl/IPushService;->deleteAllMsg(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public deleteMsg(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/aidl/IPushService;->deleteMsg(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->f()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/PushLightapp;->e:Lcom/baidu/android/pushservice/PushLightapp;

    :cond_0
    return-void
.end method

.method public getMsgs(Ljava/lang/String;IZII)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/baidu/android/pushservice/aidl/IPushService;->getMsgs(Ljava/lang/String;IZII)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewMsgNum(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/aidl/IPushService;->getNewMsgNum(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getSubcribeApps()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/aidl/IPushService;->getSubcribedApps()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscribedAppids()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/aidl/IPushService;->getSubscribedAppids()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscribedAppinfos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/aidl/IPushService;->getSubscribedAppinfos(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnreadMsgNumber(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/aidl/IPushService;->getUnreadMsgNumber(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/aidl/IPushService;->register(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/baidu/android/pushservice/aidl/IPushService;->registerRunTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeBlacklist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/aidl/IPushService;->removeBlacklist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllMsgRead(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/aidl/IPushService;->setAllMsgRead(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setMsgRead(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/aidl/IPushService;->setMsgRead(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setNotifySwitch(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/aidl/IPushService;->setNotifySwitch(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public subscribeLight(Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/android/pushservice/IPushLightappListener;)V
    .locals 3

    const v2, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_1

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    new-instance v1, Lcom/baidu/android/pushservice/PushLightapp$3;

    invoke-direct {v1, p0, p4}, Lcom/baidu/android/pushservice/PushLightapp$3;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/baidu/android/pushservice/aidl/IPushService;->subscribeLight(Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/android/pushservice/aidl/IPushServiceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p4, :cond_0

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p4, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_0

    const-string v0, "aidl_error: NO BINDED PUSHSERVICE"

    invoke-interface {p4, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public unbindLight(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .locals 3

    const v2, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_1

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    new-instance v1, Lcom/baidu/android/pushservice/PushLightapp$5;

    invoke-direct {v1, p0, p3}, Lcom/baidu/android/pushservice/PushLightapp$5;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/android/pushservice/aidl/IPushService;->unbindLight(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/aidl/IPushServiceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_0

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnbindLightResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "aidl_error: NO BINDED PUSHSERVICE"

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnbindLightResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public unsubscribeLight(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .locals 3

    const v2, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_1

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    new-instance v1, Lcom/baidu/android/pushservice/PushLightapp$4;

    invoke-direct {v1, p0, p3}, Lcom/baidu/android/pushservice/PushLightapp$4;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/android/pushservice/aidl/IPushService;->unsubscribeLight(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/aidl/IPushServiceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_0

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnsubscribeResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    const-string v0, "aidl_error: NO BINDED PUSHSERVICE"

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnsubscribeResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public updateBlacklist(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->m:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/android/pushservice/aidl/IPushService;->updateBlacklist(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
