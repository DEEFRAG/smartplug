.class public Lcom/baidu/android/pushservice/Internal;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBdussIntent(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/Internal$5;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/Internal$5;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static disablePushConnection(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/Internal$3;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/Internal$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static disablePushService(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/Internal$2;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/Internal$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static enablePushConnection(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/Internal$4;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/Internal$4;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static enablePushService(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/Internal$1;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/Internal$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method
