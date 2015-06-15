.class Lcom/tencent/qc/stat/j;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:[I

.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 66
    new-array v0, v1, [I

    sput-object v0, Lcom/tencent/qc/stat/j;->a:[I

    .line 67
    new-array v0, v1, [I

    sput-object v0, Lcom/tencent/qc/stat/j;->b:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B[B)[B
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v0, 0x0

    .line 79
    array-length v2, p1

    .line 80
    const/4 v1, 0x1

    if-lt v2, v1, :cond_0

    if-le v2, v6, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be between 1 and 256 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v0

    .line 84
    :goto_0
    if-ge v1, v6, :cond_2

    .line 85
    sget-object v3, Lcom/tencent/qc/stat/j;->a:[I

    aput v1, v3, v1

    .line 86
    sget-object v3, Lcom/tencent/qc/stat/j;->b:[I

    rem-int v4, v1, v2

    aget-byte v4, p1, v4

    aput v4, v3, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    move v2, v0

    .line 89
    :goto_1
    if-ge v1, v6, :cond_3

    .line 91
    sget-object v3, Lcom/tencent/qc/stat/j;->a:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    sget-object v3, Lcom/tencent/qc/stat/j;->b:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 92
    sget-object v3, Lcom/tencent/qc/stat/j;->a:[I

    aget v3, v3, v1

    .line 93
    sget-object v4, Lcom/tencent/qc/stat/j;->a:[I

    sget-object v5, Lcom/tencent/qc/stat/j;->a:[I

    aget v5, v5, v2

    aput v5, v4, v1

    .line 94
    sget-object v4, Lcom/tencent/qc/stat/j;->a:[I

    aput v3, v4, v2

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_3
    array-length v1, p0

    new-array v3, v1, [B

    move v1, v0

    move v2, v0

    .line 99
    :goto_2
    array-length v4, p0

    if-ge v0, v4, :cond_4

    .line 101
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 102
    sget-object v4, Lcom/tencent/qc/stat/j;->a:[I

    aget v4, v4, v2

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    .line 103
    sget-object v4, Lcom/tencent/qc/stat/j;->a:[I

    aget v4, v4, v2

    .line 104
    sget-object v5, Lcom/tencent/qc/stat/j;->a:[I

    sget-object v6, Lcom/tencent/qc/stat/j;->a:[I

    aget v6, v6, v1

    aput v6, v5, v2

    .line 105
    sget-object v5, Lcom/tencent/qc/stat/j;->a:[I

    aput v4, v5, v1

    .line 106
    sget-object v4, Lcom/tencent/qc/stat/j;->a:[I

    aget v4, v4, v2

    sget-object v5, Lcom/tencent/qc/stat/j;->a:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 107
    sget-object v5, Lcom/tencent/qc/stat/j;->a:[I

    aget v4, v5, v4

    .line 108
    aget-byte v5, p0, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 110
    :cond_4
    return-object v3
.end method

.method public static b([B[B)[B
    .locals 1

    .prologue
    .line 123
    invoke-static {p0, p1}, Lcom/tencent/qc/stat/j;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method
