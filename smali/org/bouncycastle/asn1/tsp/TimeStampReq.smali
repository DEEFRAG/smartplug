.class public Lorg/bouncycastle/asn1/tsp/TimeStampReq;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field certReq:Lorg/bouncycastle/asn1/DERBoolean;

.field extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

.field nonce:Lorg/bouncycastle/asn1/DERInteger;

.field tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/DERInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v4}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/DERBoolean;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/DERInteger;

    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    iput-object p4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    iput-object p5, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TimeStampReq;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object in \'TimeStampReq\' factory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCertReq()Lorg/bouncycastle/asn1/DERBoolean;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    return-object v0
.end method

.method public getNonce()Lorg/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getReqPolicy()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
