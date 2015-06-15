.class public Lorg/bouncycastle/asn1/x509/CRLNumber;
.super Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getCRLNumber()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLNumber;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
