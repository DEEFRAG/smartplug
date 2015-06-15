.class final Lcom/baidu/android/pushservice/PushManager$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->bind(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$9;->a:Landroid/content/Context;

    iput p2, p0, Lcom/baidu/android/pushservice/PushManager$9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$9;->a:Landroid/content/Context;

    iget v1, p0, Lcom/baidu/android/pushservice/PushManager$9;->b:I

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->bind(Landroid/content/Context;I)V

    return-void
.end method
