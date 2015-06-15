.class final Lcom/baidu/android/pushservice/PushManager$21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->delTags(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$21;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/android/pushservice/PushManager$21;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$21;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushManager$21;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->delTags(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
