.class public final enum Lcom/tencent/qc/stat/StatReportStrategy;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/tencent/qc/stat/StatReportStrategy;

.field public static final enum b:Lcom/tencent/qc/stat/StatReportStrategy;

.field public static final enum c:Lcom/tencent/qc/stat/StatReportStrategy;

.field public static final enum d:Lcom/tencent/qc/stat/StatReportStrategy;

.field public static final enum e:Lcom/tencent/qc/stat/StatReportStrategy;

.field public static final enum f:Lcom/tencent/qc/stat/StatReportStrategy;

.field private static final synthetic h:[Lcom/tencent/qc/stat/StatReportStrategy;


# instance fields
.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11
    new-instance v0, Lcom/tencent/qc/stat/StatReportStrategy;

    const-string v1, "INSTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qc/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->a:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 15
    new-instance v0, Lcom/tencent/qc/stat/StatReportStrategy;

    const-string v1, "ONLY_WIFI"

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/qc/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->b:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 22
    new-instance v0, Lcom/tencent/qc/stat/StatReportStrategy;

    const-string v1, "BATCH"

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/qc/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->c:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 26
    new-instance v0, Lcom/tencent/qc/stat/StatReportStrategy;

    const-string v1, "APP_LAUNCH"

    invoke-direct {v0, v1, v5, v6}, Lcom/tencent/qc/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->d:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 32
    new-instance v0, Lcom/tencent/qc/stat/StatReportStrategy;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/qc/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->e:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 40
    new-instance v0, Lcom/tencent/qc/stat/StatReportStrategy;

    const-string v1, "PERIOD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/qc/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->f:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/qc/stat/StatReportStrategy;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/qc/stat/StatReportStrategy;->a:Lcom/tencent/qc/stat/StatReportStrategy;

    aput-object v2, v0, v1

    sget-object v1, Lcom/tencent/qc/stat/StatReportStrategy;->b:Lcom/tencent/qc/stat/StatReportStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qc/stat/StatReportStrategy;->c:Lcom/tencent/qc/stat/StatReportStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qc/stat/StatReportStrategy;->d:Lcom/tencent/qc/stat/StatReportStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qc/stat/StatReportStrategy;->e:Lcom/tencent/qc/stat/StatReportStrategy;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qc/stat/StatReportStrategy;->f:Lcom/tencent/qc/stat/StatReportStrategy;

    aput-object v1, v0, v7

    sput-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->h:[Lcom/tencent/qc/stat/StatReportStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/tencent/qc/stat/StatReportStrategy;->g:I

    .line 46
    return-void
.end method

.method public static a(I)Lcom/tencent/qc/stat/StatReportStrategy;
    .locals 5

    .prologue
    .line 60
    invoke-static {}, Lcom/tencent/qc/stat/StatReportStrategy;->a()[Lcom/tencent/qc/stat/StatReportStrategy;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 61
    invoke-virtual {v0}, Lcom/tencent/qc/stat/StatReportStrategy;->b()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 65
    :goto_1
    return-object v0

    .line 60
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a()[Lcom/tencent/qc/stat/StatReportStrategy;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->h:[Lcom/tencent/qc/stat/StatReportStrategy;

    invoke-virtual {v0}, [Lcom/tencent/qc/stat/StatReportStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qc/stat/StatReportStrategy;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/qc/stat/StatReportStrategy;->g:I

    return v0
.end method
