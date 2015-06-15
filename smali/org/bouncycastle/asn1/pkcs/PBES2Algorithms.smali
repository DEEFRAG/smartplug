.class public Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;
.super Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private objectId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private scheme:Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    :goto_0
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-void

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    goto :goto_0
.end method


# virtual methods
.method public getDERObject()Lorg/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-object v0
.end method

.method public getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0
.end method

.method public getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
