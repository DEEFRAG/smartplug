.class Lcom/tencent/plus/l;
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
    .line 677
    iput-object p1, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 680
    iget-object v0, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->e(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 681
    iget-object v0, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->e(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 682
    iget-object v0, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 683
    iget-object v0, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 684
    iget-object v0, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v0, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->d(Lcom/tencent/plus/ImageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/h;

    iget-object v0, v0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0, v2}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Z)Z

    .line 687
    return-void
.end method
