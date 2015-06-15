.class Lcom/tencent/qc/stat/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/qc/stat/q;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/qc/stat/t;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/t;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/tencent/qc/stat/k;->b:Lcom/tencent/qc/stat/t;

    iput-object p2, p0, Lcom/tencent/qc/stat/k;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/tencent/qc/stat/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qc/stat/StatStore;->a()I

    move-result v0

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->e()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 911
    iget-object v0, p0, Lcom/tencent/qc/stat/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/StatStore;->a(I)V

    .line 917
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 922
    return-void
.end method
