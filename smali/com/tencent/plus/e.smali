.class Lcom/tencent/plus/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/plus/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/tencent/plus/e;->c:Lcom/tencent/plus/ImageActivity;

    iput-object p2, p0, Lcom/tencent/plus/e;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/plus/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/tencent/plus/e;->c:Lcom/tencent/plus/ImageActivity;

    iget-object v1, p0, Lcom/tencent/plus/e;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/plus/e;->b:I

    invoke-static {v0, v1, v2}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    .line 538
    return-void
.end method
