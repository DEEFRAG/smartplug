.class final Lcom/baidu/android/pushservice/PushManager$31;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->setNotificationBuilder(Landroid/content/Context;ILcom/baidu/android/pushservice/PushNotificationBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/baidu/android/pushservice/PushNotificationBuilder;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/baidu/android/pushservice/PushNotificationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$31;->a:Landroid/content/Context;

    iput p2, p0, Lcom/baidu/android/pushservice/PushManager$31;->b:I

    iput-object p3, p0, Lcom/baidu/android/pushservice/PushManager$31;->c:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$31;->a:Landroid/content/Context;

    iget v1, p0, Lcom/baidu/android/pushservice/PushManager$31;->b:I

    iget-object v2, p0, Lcom/baidu/android/pushservice/PushManager$31;->c:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->getInner()Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->setNotificationBuilder(Landroid/content/Context;ILcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;)V

    return-void
.end method
