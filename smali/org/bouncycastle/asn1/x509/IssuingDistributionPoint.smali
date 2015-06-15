.class public Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

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

    const-string v1, "unknown tag in IssuingDistributionPoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    :goto_1
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    goto :goto_1

    :pswitch_3
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    goto :goto_1

    :pswitch_4
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isIndirectCRL()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method public onlyContainsAttributeCerts()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public onlyContainsCACerts()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method public onlyContainsUserCerts()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
