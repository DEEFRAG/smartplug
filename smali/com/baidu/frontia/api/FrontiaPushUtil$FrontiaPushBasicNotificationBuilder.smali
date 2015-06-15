.class public Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;
.super Lcom/baidu/frontia/api/FrontiaPushUtil$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrontiaPushBasicNotificationBuilder"
.end annotation


# instance fields
.field private a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/frontia/api/FrontiaPushUtil$a;-><init>()V

    new-instance v0, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    return-object v0
.end method

.method public setNotificationDefaults(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;->setNotificationDefaults(I)V

    return-void
.end method

.method public setNotificationFlags(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;->setNotificationFlags(I)V

    return-void
.end method

.method public setNotificationSound(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;->setNotificationSound(Landroid/net/Uri;)V

    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;->setNotificationText(Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationVibrate([J)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;->setNotificationVibrate([J)V

    return-void
.end method

.method public setStatusbarIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushBasicNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;->setStatusbarIcon(I)V

    return-void
.end method
