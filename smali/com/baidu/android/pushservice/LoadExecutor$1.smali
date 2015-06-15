.class final Lcom/baidu/android/pushservice/LoadExecutor$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/LoadExecutor;->excuteMethod(Ljava/lang/Runnable;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/LoadExecutor$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/android/pushservice/LoadExecutor$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/LoadExecutor$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/LoadExecutor;->loadPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/LoadExecutor$1;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
