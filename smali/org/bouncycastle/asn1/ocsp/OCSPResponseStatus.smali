.class public Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;
.super Lorg/bouncycastle/asn1/DEREnumerated;


# static fields
.field public static final INTERNAL_ERROR:I = 0x2

.field public static final MALFORMED_REQUEST:I = 0x1

.field public static final SIG_REQUIRED:I = 0x5

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_LATER:I = 0x3

.field public static final UNAUTHORIZED:I = 0x6


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DEREnumerated;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DEREnumerated;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DEREnumerated;-><init>(I)V

    return-void
.end method
