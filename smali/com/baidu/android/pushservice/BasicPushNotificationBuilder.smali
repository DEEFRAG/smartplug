.class public Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder$1;-><init>(Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder$1;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->a:Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;)Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->a:Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;

    return-object p1
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
    iget-object v0, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->a:Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;->construct(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method public getInner()Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->a:Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;

    return-object v0
.end method
