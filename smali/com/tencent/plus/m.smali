.class Lcom/tencent/plus/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/plus/h;


# direct methods
.method constructor <init>(Lcom/tencent/plus/h;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/tencent/plus/m;->a:Lcom/tencent/plus/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 641
    iget-object v0, p0, Lcom/tencent/plus/m;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->e(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 642
    iget-object v0, p0, Lcom/tencent/plus/m;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->e(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 643
    iget-object v0, p0, Lcom/tencent/plus/m;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/tencent/plus/m;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 645
    iget-object v0, p0, Lcom/tencent/plus/m;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->d(Lcom/tencent/plus/ImageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 646
    return-void
.end method
