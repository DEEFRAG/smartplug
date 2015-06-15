.class public Lcom/kankunit/smartplugcronus/baidupush/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/MyService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 14
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/MyService;->mPendingIntent:Landroid/app/PendingIntent;

    .line 11
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 19
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kankunit/smartplugcronus/baidupush/MyService;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/baidupush/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/MyService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 21
    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    invoke-static {p0, v0, v7, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/MyService;->mPendingIntent:Landroid/app/PendingIntent;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 23
    .local v2, "now":J
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/MyService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    const-wide/32 v4, 0xea60

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/baidupush/MyService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 46
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/baidupush/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Callback !!!Successed!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    return v2
.end method
