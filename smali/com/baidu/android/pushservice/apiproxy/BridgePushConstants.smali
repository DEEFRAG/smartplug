.class public Lcom/baidu/android/pushservice/apiproxy/BridgePushConstants;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMethodIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushConstants;->createMethodIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static restartPushService(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushConstants;->restartPushService(Landroid/content/Context;)V

    return-void
.end method

.method public static startPushService(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/internal/PushConstants;->startPushService(Landroid/content/Context;)V

    return-void
.end method
