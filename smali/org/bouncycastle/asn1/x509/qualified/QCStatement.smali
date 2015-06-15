.class public Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
.super Lorg/bouncycastle/asn1/ASN1Encodable;

# interfaces
.implements Lorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;


# instance fields
.field qcStatementId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field qcStatementInfo:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getStatementId()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getStatementInfo()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
