.class public Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    aget-byte v0, v1, v3

    if-nez v0, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    array-length v2, v0

    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/math/BigInteger;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
