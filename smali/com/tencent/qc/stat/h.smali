.class Lcom/tencent/qc/stat/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/qc/stat/StatStore;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/StatStore;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/tencent/qc/stat/h;->c:Lcom/tencent/qc/stat/StatStore;

    iput-object p2, p0, Lcom/tencent/qc/stat/h;->a:Ljava/util/List;

    iput p3, p0, Lcom/tencent/qc/stat/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/tencent/qc/stat/h;->c:Lcom/tencent/qc/stat/StatStore;

    iget-object v1, p0, Lcom/tencent/qc/stat/h;->a:Ljava/util/List;

    iget v2, p0, Lcom/tencent/qc/stat/h;->b:I

    invoke-static {v0, v1, v2}, Lcom/tencent/qc/stat/StatStore;->a(Lcom/tencent/qc/stat/StatStore;Ljava/util/List;I)V

    .line 342
    return-void
.end method
