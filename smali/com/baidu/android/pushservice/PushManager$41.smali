.class final Lcom/baidu/android/pushservice/PushManager$41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->sdkStartWork(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$41;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/android/pushservice/PushManager$41;->b:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/android/pushservice/PushManager$41;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$41;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushManager$41;->b:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/android/pushservice/PushManager$41;->c:I

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->sdkStartWork(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
