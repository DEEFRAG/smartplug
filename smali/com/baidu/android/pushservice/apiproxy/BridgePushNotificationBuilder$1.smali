.class Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder$1;
.super Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder$1;->a:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-direct {p0}, Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Landroid/content/Context;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder$1;->a:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->construct(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
