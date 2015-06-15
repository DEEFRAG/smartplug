.class public Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;


# instance fields
.field private currentStream:Ljava/io/InputStream;

.field private sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

.field private sDataObjectCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    return-void
.end method

.method private readDERCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lorg/bouncycastle/jce/provider/X509CRLObject;

    new-instance v2, Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/x509/CertificateList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    return-object v1
.end method

.method private readDERCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/pkcs/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    if-ltz v1, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "-----BEGIN CRL-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-----BEGIN X509 CRL-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "-----END CRL-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-----END X509 CRL-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-----BEGIN X509 CERTIFICATE-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "-----END CERTIFICATE-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-----END X509 CERTIFICATE-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private readPKCS7Certificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/pkcs/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXCertPath;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/jce/provider/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list contains none X509Certificate object while creating CertPath\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXCertPath;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-nez v1, :cond_2

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    iput v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    iput v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    :cond_5
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPKCS7Certificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
