.class Lcom/tencent/qc/stat/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/qc/stat/q;


# instance fields
.field final synthetic a:Lcom/tencent/qc/stat/t;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/t;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/tencent/qc/stat/a;->a:Lcom/tencent/qc/stat/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/tencent/qc/stat/a;->a:Lcom/tencent/qc/stat/t;

    invoke-static {v0}, Lcom/tencent/qc/stat/t;->a(Lcom/tencent/qc/stat/t;)Lcom/tencent/qc/stat/event/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qc/stat/event/Event;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/StatStore;->a(I)V

    .line 857
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 861
    iget-object v0, p0, Lcom/tencent/qc/stat/a;->a:Lcom/tencent/qc/stat/t;

    invoke-static {v0}, Lcom/tencent/qc/stat/t;->a(Lcom/tencent/qc/stat/t;)Lcom/tencent/qc/stat/event/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qc/stat/event/Event;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qc/stat/a;->a:Lcom/tencent/qc/stat/t;

    invoke-static {v1}, Lcom/tencent/qc/stat/t;->a(Lcom/tencent/qc/stat/t;)Lcom/tencent/qc/stat/event/Event;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qc/stat/StatStore;->b(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V

    .line 862
    return-void
.end method
