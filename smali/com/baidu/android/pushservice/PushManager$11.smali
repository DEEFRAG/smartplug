.class final Lcom/baidu/android/pushservice/PushManager$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->fetchMessages(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$11;->a:Landroid/content/Context;

    iput p2, p0, Lcom/baidu/android/pushservice/PushManager$11;->b:I

    iput p3, p0, Lcom/baidu/android/pushservice/PushManager$11;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$11;->a:Landroid/content/Context;

    iget v1, p0, Lcom/baidu/android/pushservice/PushManager$11;->b:I

    iget v2, p0, Lcom/baidu/android/pushservice/PushManager$11;->c:I

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->fetchMessages(Landroid/content/Context;II)V

    return-void
.end method
