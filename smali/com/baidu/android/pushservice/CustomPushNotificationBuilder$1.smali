.class Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;-><init>(Landroid/content/Context;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;Landroid/content/Context;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->f:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    iput-object p2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->a:Landroid/content/Context;

    iput p3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->b:I

    iput p4, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->c:I

    iput p5, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->d:I

    iput p6, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->e:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/LoadExecutor;->loadPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->f:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->f:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    new-instance v1, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->b:I

    iget v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->c:I

    iget v4, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->d:I

    iget v5, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$1;->e:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/android/pushservice/apiproxy/BridgeCustomPushNotificationBuilder;-><init>(IIII)V

    iput-object v1, v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    goto :goto_0
.end method
