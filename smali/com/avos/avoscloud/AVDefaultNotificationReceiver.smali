.class public Lcom/avos/avoscloud/AVDefaultNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVDefaultNotificationReceiver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/avos/avoscloud/AVDefaultNotificationReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVDefaultNotificationReceiver;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    const-string v9, "AV_APPLICATION_ID"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "AV_PUSH_SERVICE_ACTION_MESSAGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 26
    const-string v8, "AV_NOTIFICATION_MSG"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 29
    .local v0, "cls":Ljava/lang/Class;
    const-string v8, "AV_DEFAULT_CALLBACK"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "clsName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v7, "resultIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 35
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 36
    .local v6, "notification":Landroid/app/Notification;
    const-string v8, "Notification"

    invoke-virtual {v6, p1, v8, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 37
    iget v8, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/app/Notification;->defaults:I

    .line 38
    iget v8, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/app/Notification;->defaults:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v8, v6, Landroid/app/Notification;->icon:I

    .line 40
    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v6, Landroid/app/Notification;->flags:I

    .line 41
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 43
    .local v4, "manager":Landroid/app/NotificationManager;
    const/4 v8, 0x1

    invoke-virtual {v4, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "clsName":Ljava/lang/String;
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "manager":Landroid/app/NotificationManager;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "resultIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v1    # "clsName":Ljava/lang/String;
    .restart local v5    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 45
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v8, Lcom/avos/avoscloud/AVDefaultNotificationReceiver;->LOGTAG:Ljava/lang/String;

    const-string v9, "Class not Found"

    invoke-static {v8, v9, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
