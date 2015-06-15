.class public Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field amount:Lorg/bouncycastle/asn1/DERInteger;

.field currency:Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

.field exponent:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->currency:Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->amount:Lorg/bouncycastle/asn1/DERInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->exponent:Lorg/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;II)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->currency:Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->amount:Lorg/bouncycastle/asn1/DERInteger;

    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->exponent:Lorg/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAmount()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->amount:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->currency:Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    return-object v0
.end method

.method public getExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->exponent:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->currency:Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->amount:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->exponent:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
