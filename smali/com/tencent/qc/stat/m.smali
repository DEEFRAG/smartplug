.class Lcom/tencent/qc/stat/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/qc/stat/q;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/qc/stat/b;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/b;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/tencent/qc/stat/m;->c:Lcom/tencent/qc/stat/b;

    iput-object p2, p0, Lcom/tencent/qc/stat/m;->a:Ljava/util/List;

    iput p3, p0, Lcom/tencent/qc/stat/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 585
    iget-object v0, p0, Lcom/tencent/qc/stat/m;->c:Lcom/tencent/qc/stat/b;

    iget-object v0, v0, Lcom/tencent/qc/stat/b;->b:Lcom/tencent/qc/stat/StatStore;

    iget-object v1, p0, Lcom/tencent/qc/stat/m;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/StatStore;->a(Ljava/util/List;)V

    .line 586
    iget-object v0, p0, Lcom/tencent/qc/stat/m;->c:Lcom/tencent/qc/stat/b;

    iget v0, v0, Lcom/tencent/qc/stat/b;->a:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/qc/stat/m;->c:Lcom/tencent/qc/stat/b;

    iget v0, v0, Lcom/tencent/qc/stat/b;->a:I

    .line 589
    :goto_0
    if-eq v0, v2, :cond_0

    if-lez v0, :cond_1

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/tencent/qc/stat/m;->c:Lcom/tencent/qc/stat/b;

    iget-object v1, v1, Lcom/tencent/qc/stat/b;->b:Lcom/tencent/qc/stat/StatStore;

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/StatStore;->a(I)V

    .line 592
    :cond_1
    return-void

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/tencent/qc/stat/m;->c:Lcom/tencent/qc/stat/b;

    iget v0, v0, Lcom/tencent/qc/stat/b;->a:I

    iget-object v1, p0, Lcom/tencent/qc/stat/m;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/tencent/qc/stat/m;->c:Lcom/tencent/qc/stat/b;

    iget-object v0, v0, Lcom/tencent/qc/stat/b;->b:Lcom/tencent/qc/stat/StatStore;

    iget v1, v0, Lcom/tencent/qc/stat/StatStore;->b:I

    iget v2, p0, Lcom/tencent/qc/stat/m;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/qc/stat/StatStore;->b:I

    .line 597
    iget-object v0, p0, Lcom/tencent/qc/stat/m;->c:Lcom/tencent/qc/stat/b;

    iget-object v0, v0, Lcom/tencent/qc/stat/b;->b:Lcom/tencent/qc/stat/StatStore;

    iget-object v1, p0, Lcom/tencent/qc/stat/m;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qc/stat/StatStore;->a(Ljava/util/List;I)V

    .line 598
    return-void
.end method
