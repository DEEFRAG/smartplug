.class public Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;
.super Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;-><init>()V

    new-instance v0, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;-><init>(IIII)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    return-void
.end method


# virtual methods
.method public construct(Landroid/content/Context;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->construct(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getInner()Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    check-cast v0, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    return-object v0
.end method

.method public bridge synthetic getInner()Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->getInner()Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLayoutDrawable(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    check-cast v0, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;->setLayoutDrawable(I)V

    return-void
.end method

.method public setNotificationDefaults(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationDefaults(I)V

    return-void
.end method

.method public setNotificationFlags(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationFlags(I)V

    return-void
.end method

.method public setNotificationSound(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationSound(Landroid/net/Uri;)V

    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationText(Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationVibrate([J)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationVibrate([J)V

    return-void
.end method

.method public setStatusbarIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setStatusbarIcon(I)V

    return-void
.end method
