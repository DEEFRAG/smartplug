.class Lcom/tencent/qc/stat/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/qc/stat/event/Event;

.field final synthetic b:Lcom/tencent/qc/stat/q;

.field final synthetic c:Lcom/tencent/qc/stat/StatStore;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/StatStore;Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/tencent/qc/stat/f;->c:Lcom/tencent/qc/stat/StatStore;

    iput-object p2, p0, Lcom/tencent/qc/stat/f;->a:Lcom/tencent/qc/stat/event/Event;

    iput-object p3, p0, Lcom/tencent/qc/stat/f;->b:Lcom/tencent/qc/stat/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tencent/qc/stat/f;->c:Lcom/tencent/qc/stat/StatStore;

    iget-object v1, p0, Lcom/tencent/qc/stat/f;->a:Lcom/tencent/qc/stat/event/Event;

    iget-object v2, p0, Lcom/tencent/qc/stat/f;->b:Lcom/tencent/qc/stat/q;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qc/stat/StatStore;->a(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V

    .line 435
    return-void
.end method
