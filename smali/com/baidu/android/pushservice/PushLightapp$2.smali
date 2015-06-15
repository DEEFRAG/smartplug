.class Lcom/baidu/android/pushservice/PushLightapp$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/PushLightapp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/PushLightapp;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/PushLightapp;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushLightapp$2;->a:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/baidu/android/pushservice/PushLightapp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$2;->a:Lcom/baidu/android/pushservice/PushLightapp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/PushLightapp;->a(Lcom/baidu/android/pushservice/PushLightapp;Z)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$2;->a:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-static {p2}, Lcom/baidu/android/pushservice/aidl/IPushService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/android/pushservice/aidl/IPushService;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/PushLightapp;->a:Lcom/baidu/android/pushservice/aidl/IPushService;

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$2;->a:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushLightapp;->c(Lcom/baidu/android/pushservice/PushLightapp;)I

    move-result v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushLightapp;->a(I)I

    invoke-static {}, Lcom/baidu/android/pushservice/PushLightapp;->c()Lcom/baidu/android/pushservice/IPushLightappListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/android/pushservice/PushLightapp;->d()Lcom/baidu/android/pushservice/PushLightapp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/android/pushservice/PushLightapp;->c()Lcom/baidu/android/pushservice/IPushLightappListener;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pushservice/PushLightapp;->d()Lcom/baidu/android/pushservice/PushLightapp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/android/pushservice/IPushLightappListener;->initialComplete(Lcom/baidu/android/pushservice/PushLightapp;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$2;->a:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushLightapp;->d(Lcom/baidu/android/pushservice/PushLightapp;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/android/pushservice/PushLightapp;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp$2;->a:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushLightapp;->d(Lcom/baidu/android/pushservice/PushLightapp;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/PushLightapp;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushLightapp;->e(Lcom/baidu/android/pushservice/PushLightapp;)Lcom/baidu/android/pushservice/PushLightapp;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$2;->a:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushLightapp;->f(Lcom/baidu/android/pushservice/PushLightapp;)V

    return-void
.end method
