.class public Lcom/baidu/android/pushservice/PushSettings;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugMode(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/PushSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/PushSettings$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushSettings$1;->start()V

    return-void
.end method
