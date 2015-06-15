.class public Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;
.super Ljava/lang/Object;


# instance fields
.field private acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

.field private extOrdering:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;

.field private sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/bouncycastle/x509/X509Attribute;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509Attribute;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Attribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->addAttribute(Lorg/bouncycastle/asn1/x509/Attribute;)V

    return-void
.end method

.method public addExtension(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->addExtension(Ljava/lang/String;Z[B)V

    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/asn1/x509/X509Extension;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, p2, v3}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v0

    return-object v0
.end method

.method public generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no signature algorithm specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {v0, p1, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v2, Lorg/bouncycastle/asn1/x509/X509Extensions;

    iget-object v3, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    iget-object v4, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->generateAttributeCertificateInfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :try_start_2
    new-instance v0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception creating signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception encoding Attribute cert - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "constructed invalid certificate!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    return-void
.end method

.method public setHolder(Lorg/bouncycastle/x509/AttributeCertificateHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p1, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setHolder(Lorg/bouncycastle/asn1/x509/Holder;)V

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/x509/AttributeCertificateIssuer;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p1, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-void
.end method

.method public setIssuerUniqueId([Z)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented (yet)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setEndDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V

    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setStartDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V

    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setSerialNumber(Lorg/bouncycastle/asn1/DERInteger;)V

    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown signature type requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
