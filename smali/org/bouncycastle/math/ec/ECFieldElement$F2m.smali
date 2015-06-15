.class public Lorg/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lorg/bouncycastle/math/ec/ECFieldElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private representation:I


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0, p5}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>(Ljava/math/BigInteger;)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    :goto_0
    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p3, p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_0

    :cond_3
    iput p1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iput p2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iput p3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iput p4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-void
.end method

.method public static checkFieldElements(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p1, Lorg/bouncycastle/math/ec/ECFieldElement;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    check-cast p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-eq v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field elements are not elements of the same field F2m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of the field elements are not elements has incorrect representation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method private multZModF(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 7

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Ljava/math/BigInteger;

    iget-object v6, p1, Lorg/bouncycastle/math/ec/ECFieldElement;->x:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "F2m"

    return-object v0
.end method

.method public getK1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 8

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "x is zero or negative, inversion is impossible"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_1
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_3

    neg-int v3, v3

    move v6, v3

    move-object v3, v5

    move-object v5, v0

    move v0, v6

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_1
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0

    :cond_3
    move v6, v3

    move-object v3, v0

    move v0, v6

    goto :goto_1
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement;->x:Ljava/math/BigInteger;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    move-object v5, v0

    move v0, v2

    :goto_1
    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->multZModF(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p0}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Ljava/math/BigInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
