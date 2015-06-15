.class public abstract Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;
.super Ljava/lang/Object;


# instance fields
.field protected mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder$1;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder$1;-><init>(Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    return-void
.end method


# virtual methods
.method public abstract construct(Landroid/content/Context;)Landroid/app/Notification;
.end method

.method public getInner()Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    return-object v0
.end method

.method public setNotificationDefaults(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationDefaults(I)V

    return-void
.end method

.method public setNotificationFlags(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationFlags(I)V

    return-void
.end method

.method public setNotificationSound(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationSound(Landroid/net/Uri;)V

    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationText(Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationVibrate([J)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setNotificationVibrate([J)V

    return-void
.end method

.method public setStatusbarIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;->setStatusbarIcon(I)V

    return-void
.end method
