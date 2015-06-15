.class public Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;
.super Lcom/baidu/frontia/api/FrontiaPushUtil$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrontiaPushCustomNotificationBuilder"
.end annotation


# instance fields
.field private a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/frontia/api/FrontiaPushUtil$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    new-instance v0, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;-><init>(IIII)V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    return-object v0
.end method

.method public setNotificationDefaults(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;->setNotificationDefaults(I)V

    return-void
.end method

.method public setNotificationFlags(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;->setNotificationFlags(I)V

    return-void
.end method

.method public setNotificationSound(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;->setNotificationSound(Landroid/net/Uri;)V

    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;->setNotificationText(Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationVibrate([J)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;->setNotificationVibrate([J)V

    return-void
.end method

.method public setStatusbarIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$FrontiaPushCustomNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/CustomPushNotificationBuilder;->setStatusbarIcon(I)V

    return-void
.end method
