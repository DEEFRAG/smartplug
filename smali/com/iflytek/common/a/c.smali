.class public Lcom/iflytek/common/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/common/a/d;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/common/a/c;->a:Lcom/iflytek/common/a/d;

    const/4 v0, -0x1

    sput v0, Lcom/iflytek/common/a/c;->b:I

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/iflytek/common/a/c;

    monitor-enter v1

    :try_start_0
    const-string v0, "============start============="

    invoke-static {p0, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/common/a/d;->a(Landroid/content/Context;)Lcom/iflytek/common/a/d;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/a/c;->a:Lcom/iflytek/common/a/d;

    invoke-virtual {v0}, Lcom/iflytek/common/a/d;->a()V

    sget-object v0, Lcom/iflytek/common/a/c;->a:Lcom/iflytek/common/a/d;

    invoke-virtual {v0}, Lcom/iflytek/common/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/common/a/c;->a:Lcom/iflytek/common/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/common/a/d;->a(J)V

    sget-object v0, Lcom/iflytek/common/c/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/iflytek/common/a/f;

    invoke-direct {v2, p0}, Lcom/iflytek/common/a/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {p0}, Lcom/iflytek/common/a/c;->d(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/iflytek/common/a/c;->a:Lcom/iflytek/common/a/d;

    invoke-virtual {v1, v0}, Lcom/iflytek/common/a/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LaunchImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startService not need:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/common/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.iflytek.common.ACTION_LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start app:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LaunchImpl"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/common/c/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/iflytek/common/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/common/a/c;->a:Lcom/iflytek/common/a/d;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/iflytek/common/a/d;->a(Landroid/content/Context;)Lcom/iflytek/common/a/d;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/a/c;->a:Lcom/iflytek/common/a/d;

    :cond_0
    sget-object v0, Lcom/iflytek/common/a/c;->a:Lcom/iflytek/common/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/common/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/iflytek/common/a/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.iflytek.common.ACTION_LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xe0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "LaunchImpl"

    const-string v1, "query action null"

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "LaunchImpl"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/common/c/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-static {p0, v0}, Lcom/iflytek/common/a/c;->a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    goto :goto_1
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/iflytek/common/a/c;->b:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/iflytek/common/LaunchService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/iflytek/common/a/c;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/common/a/c;->b:I

    const-string v0, "LaunchImpl"

    const-string v1, "start self Service error"

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
