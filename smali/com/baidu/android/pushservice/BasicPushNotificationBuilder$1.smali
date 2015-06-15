.class Lcom/baidu/android/pushservice/BasicPushNotificationBuilder$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder$1;->b:Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;

    iput-object p2, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/LoadExecutor;->loadPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder$1;->b:Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;

    new-instance v1, Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->a(Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;)Lcom/baidu/android/pushservice/apiproxy/BridgeBasicPushNotificationBuilder;

    goto :goto_0
.end method
