.class Lcom/baidu/android/pushservice/PushLightapp$4;
.super Lcom/baidu/android/pushservice/aidl/IPushServiceListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushLightapp;->unsubscribeLight(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/IPushLightappListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/IPushLightappListener;

.field final synthetic b:Lcom/baidu/android/pushservice/PushLightapp;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushLightapp$4;->b:Lcom/baidu/android/pushservice/PushLightapp;

    iput-object p2, p0, Lcom/baidu/android/pushservice/PushLightapp$4;->a:Lcom/baidu/android/pushservice/IPushLightappListener;

    invoke-direct {p0}, Lcom/baidu/android/pushservice/aidl/IPushServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscribe(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUnbindLight(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUnsubscribe(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$4;->a:Lcom/baidu/android/pushservice/IPushLightappListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$4;->a:Lcom/baidu/android/pushservice/IPushLightappListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnsubscribeResult(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
