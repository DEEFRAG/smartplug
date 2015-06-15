.class final Lcom/baidu/android/pushservice/PushSettings$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushSettings;->enableDebugMode(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushSettings$1;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/baidu/android/pushservice/PushSettings$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushSettings$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/LoadExecutor;->loadPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushSettings$1;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/PushSettings$1;->b:Z

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushSettings;->enableDebugMode(Landroid/content/Context;Z)V

    goto :goto_0
.end method
