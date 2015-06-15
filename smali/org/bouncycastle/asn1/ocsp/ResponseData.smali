.class public Lorg/bouncycastle/asn1/ocsp/ResponseData;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# static fields
.field private static final V1:Lorg/bouncycastle/asn1/DERInteger;


# instance fields
.field private producedAt:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field private responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

.field private responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field private responses:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private version:Lorg/bouncycastle/asn1/DERInteger;

.field private versionPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->versionPresent:Z

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/DERInteger;

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responses:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/DERInteger;

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/DERInteger;

    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    iput-object p3, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object p4, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responses:Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object p5, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 6

    sget-object v1, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/DERInteger;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProducedAt()Lorg/bouncycastle/asn1/DERGeneralizedTime;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public getResponderID()Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    return-object v0
.end method

.method public getResponseExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getResponses()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responses:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->versionPresent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/DERInteger;

    sget-object v2, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responses:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
