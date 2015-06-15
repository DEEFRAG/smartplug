.class final Lcom/baidu/android/pushservice/PushManager$39;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->setNoDisturbMode(Landroid/content/Context;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$39;->a:Landroid/content/Context;

    iput p2, p0, Lcom/baidu/android/pushservice/PushManager$39;->b:I

    iput p3, p0, Lcom/baidu/android/pushservice/PushManager$39;->c:I

    iput p4, p0, Lcom/baidu/android/pushservice/PushManager$39;->d:I

    iput p5, p0, Lcom/baidu/android/pushservice/PushManager$39;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$39;->a:Landroid/content/Context;

    iget v1, p0, Lcom/baidu/android/pushservice/PushManager$39;->b:I

    iget v2, p0, Lcom/baidu/android/pushservice/PushManager$39;->c:I

    iget v3, p0, Lcom/baidu/android/pushservice/PushManager$39;->d:I

    iget v4, p0, Lcom/baidu/android/pushservice/PushManager$39;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->setNoDisturbMode(Landroid/content/Context;IIII)V

    return-void
.end method
