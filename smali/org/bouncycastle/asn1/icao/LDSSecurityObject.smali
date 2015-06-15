.class public Lorg/bouncycastle/asn1/icao/LDSSecurityObject;
.super Lorg/bouncycastle/asn1/ASN1Encodable;

# interfaces
.implements Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;


# static fields
.field public static final ub_DataGroups:I = 0x10


# instance fields
.field datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

.field digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->version:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or empty sequence passed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->checkDatagroupHashSeqSize(I)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bouncycastle/asn1/icao/DataGroupHash;

    iput-object v2, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/icao/DataGroupHash;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/icao/DataGroupHash;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/icao/DataGroupHash;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->version:Lorg/bouncycastle/asn1/DERInteger;

    iput-object p1, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    array-length v0, p2

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->checkDatagroupHashSeqSize(I)V

    return-void
.end method

.method private checkDatagroupHashSeqSize(I)V
    .locals 2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong size in DataGroupHashValues : not in (2..16)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/icao/LDSSecurityObject;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDatagroupHash()[Lorg/bouncycastle/asn1/icao/DataGroupHash;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    return-object v0
.end method

.method public getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 4

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v0
.end method
