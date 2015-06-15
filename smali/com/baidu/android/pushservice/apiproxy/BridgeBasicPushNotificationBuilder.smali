.class public Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    return-void
.end method


# virtual methods
.method public construct(Landroid/content/Context;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;->construct(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getInner()Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;->a:Lcom/baidu/android/pushservice/internal/BasicPushNotificationBuilder;

    return-object v0
.end method
