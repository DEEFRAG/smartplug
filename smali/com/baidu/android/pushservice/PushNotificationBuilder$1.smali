.class Lcom/baidu/android/pushservice/PushNotificationBuilder$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushNotificationBuilder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/android/pushservice/PushNotificationBuilder;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$1;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    iput-object p2, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$1;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/LoadExecutor;->loadPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->a(Lcom/baidu/android/pushservice/PushNotificationBuilder;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
