.class public final Lorg/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    aget-byte v0, v1, v4

    if-nez v0, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
