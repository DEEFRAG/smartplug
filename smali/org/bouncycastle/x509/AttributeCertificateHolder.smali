.class public Lorg/bouncycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/CertSelector;


# instance fields
.field final holder:Lorg/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/Holder;

    new-instance v2, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lorg/bouncycastle/jce/X509Principal;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/DERInteger;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v1, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lorg/bouncycastle/jce/X509Principal;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lorg/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/X509Principal;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lorg/bouncycastle/jce/X509Principal;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v4, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/DERInteger;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method private generateGeneralNames(Lorg/bouncycastle/jce/X509Principal;)Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method private getNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-eq v1, v0, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "badly formed Name object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getPrincipals(Lorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_1

    aget-object v3, v1, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Principal;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Principal;

    check-cast v0, [Ljava/security/Principal;

    return-object v0
.end method

.method private matchesDN(Lorg/bouncycastle/jce/X509Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    move v1, v2

    :goto_0
    array-length v0, v3

    if-eq v1, v0, :cond_0

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :try_start_0
    new-instance v4, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v4, p1}, Lorg/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public getEntityNames()[Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIssuer()[Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Ljava/security/cert/X509Certificate;

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lorg/bouncycastle/jce/X509Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lorg/bouncycastle/jce/X509Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
