.class final Lcom/baidu/android/pushservice/PushManager$30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->setDefaultNotificationBuilder(Landroid/content/Context;Lcom/baidu/android/pushservice/PushNotificationBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/android/pushservice/PushNotificationBuilder;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/android/pushservice/PushNotificationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$30;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/android/pushservice/PushManager$30;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$30;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushManager$30;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->getInner()Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->setDefaultNotificationBuilder(Landroid/content/Context;Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;)V

    return-void
.end method
