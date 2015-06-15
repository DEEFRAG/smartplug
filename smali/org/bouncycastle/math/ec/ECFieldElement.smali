.class public abstract Lorg/bouncycastle/math/ec/ECFieldElement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/ECConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/ECFieldElement$F2m;,
        Lorg/bouncycastle/math/ec/ECFieldElement$Fp;
    }
.end annotation


# instance fields
.field x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECFieldElement;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public abstract add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract getFieldName()Ljava/lang/String;
.end method

.method public abstract invert()Lorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract negate()Lorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract square()Lorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement;->x:Ljava/math/BigInteger;

    return-object v0
.end method
