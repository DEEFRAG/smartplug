.class public abstract Lcom/baidu/android/pushservice/PushNotificationBuilder;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field protected mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    new-instance v0, Lcom/baidu/android/pushservice/PushNotificationBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder$1;-><init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder$1;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    iput-object p2, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    return-void
.end method

.method private a(I)V
    .locals 2

    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/PushNotificationBuilder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/PushNotificationBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/PushNotificationBuilder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->a:Z

    return p1
.end method


# virtual methods
.method public abstract construct(Landroid/content/Context;)Landroid/app/Notification;
.end method

.method public getInner()Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    return-object v0
.end method

.method public setNotificationDefaults(I)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushNotificationBuilder$6;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder$6;-><init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;I)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder$6;->start()V

    return-void
.end method

.method public setNotificationFlags(I)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushNotificationBuilder$5;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder$5;-><init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;I)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder$5;->start()V

    return-void
.end method

.method public setNotificationSound(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushNotificationBuilder$7;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder$7;-><init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder$7;->start()V

    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushNotificationBuilder$4;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder$4;-><init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder$4;->start()V

    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushNotificationBuilder$3;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder$3;-><init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder$3;->start()V

    return-void
.end method

.method public setNotificationVibrate([J)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;-><init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;[J)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;->start()V

    return-void
.end method

.method public setStatusbarIcon(I)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushNotificationBuilder$2;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder$2;-><init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;I)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder$2;->start()V

    return-void
.end method
