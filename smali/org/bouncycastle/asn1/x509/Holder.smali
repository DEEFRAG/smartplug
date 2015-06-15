.class public Lorg/bouncycastle/asn1/x509/Holder;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

.field entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_1

    :pswitch_2
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Holder;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/Holder;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
