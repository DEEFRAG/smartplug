.class Lcom/tencent/qc/stat/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tencent/qc/stat/q;

.field final synthetic c:Lcom/tencent/qc/stat/l;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/l;Ljava/util/List;Lcom/tencent/qc/stat/q;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/tencent/qc/stat/o;->c:Lcom/tencent/qc/stat/l;

    iput-object p2, p0, Lcom/tencent/qc/stat/o;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/qc/stat/o;->b:Lcom/tencent/qc/stat/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/tencent/qc/stat/o;->c:Lcom/tencent/qc/stat/l;

    iget-object v1, p0, Lcom/tencent/qc/stat/o;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/qc/stat/o;->b:Lcom/tencent/qc/stat/q;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qc/stat/l;->a(Ljava/util/List;Lcom/tencent/qc/stat/q;)V

    .line 343
    return-void
.end method
