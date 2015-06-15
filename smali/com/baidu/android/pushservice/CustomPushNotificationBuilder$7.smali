.class Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->setNotificationDefaults(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;I)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;->b:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    iput p2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;->b:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    iget-object v0, v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;->b:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    invoke-static {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;->b:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;->b:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    invoke-static {v0}, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->a(Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;->b:Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;

    iget-object v0, v0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder$7;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->setNotificationDefaults(I)V

    goto :goto_1
.end method
