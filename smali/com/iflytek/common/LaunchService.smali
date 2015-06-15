.class public Lcom/iflytek/common/LaunchService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/iflytek/common/a/d;

.field private b:J

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/common/LaunchService;->b:J

    new-instance v0, Lcom/iflytek/common/b;

    invoke-direct {v0, p0}, Lcom/iflytek/common/b;-><init>(Lcom/iflytek/common/LaunchService;)V

    iput-object v0, p0, Lcom/iflytek/common/LaunchService;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/common/LaunchService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_LAUNCH_ALARM_LAUNCH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/common/LaunchService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/common/LaunchService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LaunchService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/common/c/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/common/LaunchService;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/common/LaunchService;->b()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 11

    const-wide/16 v9, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/LaunchService;->a:Lcom/iflytek/common/a/d;

    invoke-virtual {v0}, Lcom/iflytek/common/a/d;->c()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-wide v5, p0, Lcom/iflytek/common/LaunchService;->b:J

    sub-long v5, v3, v5

    cmp-long v0, v5, v9

    if-lez v0, :cond_0

    cmp-long v0, v5, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reg next alarm too short:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/iflytek/common/LaunchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v5, Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/common/LaunchService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_LAUNCH_ALARM_LAUNCH"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/common/LaunchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    cmp-long v1, v1, v9

    if-lez v1, :cond_1

    iput-wide v3, p0, Lcom/iflytek/common/LaunchService;->b:J

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/iflytek/common/LaunchService;->b:J

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reg next alarm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/iflytek/common/LaunchService;->b:J

    invoke-static {v1, v2}, Lcom/iflytek/common/c/c;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LaunchService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/common/c/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    const-string v0, "not reg alarm,periodrun = 0."

    invoke-static {p0, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LaunchService onCreate pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/common/LaunchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/a/d;->a(Landroid/content/Context;)Lcom/iflytek/common/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/LaunchService;->a:Lcom/iflytek/common/a/d;

    invoke-direct {p0}, Lcom/iflytek/common/LaunchService;->a()V

    invoke-static {p0}, Lcom/iflytek/common/a/c;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/iflytek/common/LaunchService;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "LaunchService onDestroy"

    invoke-static {p0, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/LaunchService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/iflytek/common/LaunchService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LaunchService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/common/c/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    const-wide/16 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LaunchService onStart lastalarm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/iflytek/common/LaunchService;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " periodrun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/LaunchService;->a:Lcom/iflytek/common/a/d;

    invoke-virtual {v1}, Lcom/iflytek/common/a/d;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/iflytek/common/LaunchService;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/LaunchService;->a:Lcom/iflytek/common/a/d;

    invoke-virtual {v0}, Lcom/iflytek/common/a/d;->c()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/common/LaunchService;->b()V

    :cond_0
    return-void
.end method
