.class Lcom/tencent/qc/stat/s;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>(JLjava/lang/String;II)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide p1, p0, Lcom/tencent/qc/stat/s;->a:J

    .line 90
    iput-object p3, p0, Lcom/tencent/qc/stat/s;->b:Ljava/lang/String;

    .line 91
    iput p4, p0, Lcom/tencent/qc/stat/s;->c:I

    .line 92
    iput p5, p0, Lcom/tencent/qc/stat/s;->d:I

    .line 93
    return-void
.end method
