.class public Lorg/bouncycastle/asn1/x509/X509Extension;
.super Ljava/lang/Object;


# instance fields
.field critical:Z

.field value:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DERBoolean;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->critical:Z

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->critical:Z

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/bouncycastle/asn1/x509/X509Extension;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isCritical()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->critical:Z

    return v0
.end method
