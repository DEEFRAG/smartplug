.class Lcom/baidu/android/pushservice/PushLightapp$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushLightapp;->e()V
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

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushLightapp$1;->a:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/baidu/android/pushservice/PushLightapp;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/PushLightapp$1;->sleep(J)V

    invoke-static {}, Lcom/baidu/android/pushservice/PushLightapp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$1;->a:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushLightapp;->a(Lcom/baidu/android/pushservice/PushLightapp;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$1;->a:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushLightapp;->b(Lcom/baidu/android/pushservice/PushLightapp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
