.class Lcom/tencent/qc/stat/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/qc/stat/StatStore;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/StatStore;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tencent/qc/stat/g;->a:Lcom/tencent/qc/stat/StatStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/qc/stat/g;->a:Lcom/tencent/qc/stat/StatStore;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Lcom/tencent/qc/stat/StatStore;)V

    .line 116
    return-void
.end method
