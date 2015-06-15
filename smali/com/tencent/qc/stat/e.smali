.class Lcom/tencent/qc/stat/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tencent/qc/stat/StatStore;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/StatStore;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/tencent/qc/stat/e;->b:Lcom/tencent/qc/stat/StatStore;

    iput-object p2, p0, Lcom/tencent/qc/stat/e;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/tencent/qc/stat/e;->b:Lcom/tencent/qc/stat/StatStore;

    iget-object v1, p0, Lcom/tencent/qc/stat/e;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/qc/stat/StatStore;->a(Lcom/tencent/qc/stat/StatStore;Ljava/util/List;)V

    .line 357
    return-void
.end method
