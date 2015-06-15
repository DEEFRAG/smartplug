.class public Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private policyQualifierId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private qualifier:Lorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lorg/bouncycastle/asn1/x509/PolicyQualifierId;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPolicyQualifierId()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getQualifier()Lorg/bouncycastle/asn1/DEREncodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
