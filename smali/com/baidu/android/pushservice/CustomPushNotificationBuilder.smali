.class public Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;
.super Lcom/baidu/android/pushservice/PushNotificationBuilder;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a:Z

    invoke-static {p1}, Lcom/baidu/android/pushservice/LoadExecutor;->isPushLibLoaded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;-><init>(IIII)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;-><init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;Landroid/content/Context;IIII)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->start()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/PushNotificationBuilder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a:Z

    iput-object p2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

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

.method static synthetic a(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a:Z

    return p1
.end method


# virtual methods
.method public construct(Landroid/content/Context;)Landroid/app/Notification;
    .locals 1

    invoke-static {p1}, Lcom/baidu/android/pushservice/LoadExecutor;->loadPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->construct(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method public getInner()Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    check-cast v0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;

    goto :goto_1
.end method

.method public bridge synthetic getInner()Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->getInner()Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLayoutDrawable(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    check-cast v0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->setLayoutDrawable(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$2;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$2;-><init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;I)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$2;->start()V

    goto :goto_0
.end method

.method public setNotificationDefaults(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->setNotificationDefaults(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;-><init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;I)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;->start()V

    goto :goto_0
.end method

.method public setNotificationFlags(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->setNotificationFlags(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$6;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$6;-><init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;I)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$6;->start()V

    goto :goto_0
.end method

.method public setNotificationSound(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->setNotificationSound(Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$8;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$8;-><init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$8;->start()V

    goto :goto_0
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->setNotificationText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$5;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$5;-><init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$5;->start()V

    goto :goto_0
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$4;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$4;-><init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$4;->start()V

    goto :goto_0
.end method

.method public setNotificationVibrate([J)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->setNotificationVibrate([J)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$9;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$9;-><init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;[J)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$9;->start()V

    goto :goto_0
.end method

.method public setStatusbarIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->setStatusbarIcon(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$3;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$3;-><init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;I)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$3;->start()V

    goto :goto_0
.end method
