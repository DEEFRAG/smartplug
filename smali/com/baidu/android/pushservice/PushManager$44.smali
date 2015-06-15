.class final Lcom/baidu/android/pushservice/PushManager$44;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->setLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$44;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/android/pushservice/PushManager$44;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/android/pushservice/PushManager$44;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$44;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushManager$44;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/PushManager$44;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->setLappTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
