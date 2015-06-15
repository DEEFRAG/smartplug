.class public Lorg/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iput p2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    iget v0, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget v2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    array-length v0, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    array-length v2, v2

    if-eq v0, v2, :cond_2

    iget-object v2, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget v1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
