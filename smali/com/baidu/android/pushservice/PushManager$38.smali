.class final Lcom/baidu/android/pushservice/PushManager$38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->saveAppNotiMap(Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$38;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$38;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->saveAppNotiMap(Ljava/util/HashMap;)V

    return-void
.end method
