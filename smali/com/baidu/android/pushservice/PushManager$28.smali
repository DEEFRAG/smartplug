.class final Lcom/baidu/android/pushservice/PushManager$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->fetchGroupMessages(Landroid/content/Context;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushManager$28;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/android/pushservice/PushManager$28;->b:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/android/pushservice/PushManager$28;->c:I

    iput p4, p0, Lcom/baidu/android/pushservice/PushManager$28;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushManager$28;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushManager$28;->b:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/android/pushservice/PushManager$28;->c:I

    iget v3, p0, Lcom/baidu/android/pushservice/PushManager$28;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/android/pushservice/apiproxy/BridgePushManager;->fetchGroupMessages(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method
