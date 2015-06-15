.class Lcom/tencent/plus/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/plus/i;


# direct methods
.method constructor <init>(Lcom/tencent/plus/i;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/tencent/plus/k;->a:Lcom/tencent/plus/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/tencent/plus/k;->a:Lcom/tencent/plus/i;

    iget-object v0, v0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->g(Lcom/tencent/plus/ImageActivity;)V

    .line 449
    return-void
.end method
