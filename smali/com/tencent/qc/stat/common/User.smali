.class public Lcom/tencent/qc/stat/common/User;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/qc/stat/common/User;->a:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tencent/qc/stat/common/User;->b:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/tencent/qc/stat/common/User;->a:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/tencent/qc/stat/common/User;->b:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/tencent/qc/stat/common/User;->c:I

    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/qc/stat/common/User;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/tencent/qc/stat/common/User;->c:I

    .line 43
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/qc/stat/common/User;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/tencent/qc/stat/common/User;->c:I

    return v0
.end method
