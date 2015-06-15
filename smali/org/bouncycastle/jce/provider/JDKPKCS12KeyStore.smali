.class public Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore;,
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;,
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field private static final CERT_ALGORITHM:Ljava/lang/String; = "1.2.840.113549.1.12.1.6"

.field static final KEY:I = 0x2

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "1.2.840.113549.1.12.1.3"

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x64

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3


# instance fields
.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Ljava/util/Hashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Ljava/util/Hashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    :goto_0
    return-void

    :cond_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "error creating key"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decryptData(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v1, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    const-string v4, "BC"

    invoke-static {v3, v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v5, v6, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v4, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v1, v0

    invoke-virtual {v1, p4}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    const-string v1, "BC"

    invoke-static {v3, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception decrypting data - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected encryptData(Ljava/lang/String;[BLorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    const-string v1, "BC"

    invoke-static {p1, v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    const-string v3, "BC"

    invoke-static {p1, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception encrypting data - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 4

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such entry as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 9

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificateChain."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object v3

    :cond_2
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_8

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v6, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v4

    invoke-direct {v6, p0, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    :goto_4
    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eq v0, v1, :cond_4

    :goto_5
    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v3, v0, [Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    array-length v0, v3

    if-eq v1, v0, :cond_1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_3

    :cond_6
    move-object v0, v4

    goto :goto_4

    :cond_7
    move-object v2, v3

    goto :goto_1

    :cond_8
    move-object v4, v3

    goto :goto_2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string v3, "stream does not represent a PKCS12 key store"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v6

    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v2

    if-eqz v2, :cond_2d

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/BEROutputStream;

    invoke-direct {v7, v2}, Lorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v9

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    :try_start_0
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v11, "BC"

    invoke-static {v2, v11}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v11

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BC"

    invoke-static {v2, v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v12

    new-instance v13, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v13, v9, v10}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v12, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v11, v2, v13}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v11, v7}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v11}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v10

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v15

    array-length v2, v10

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v5

    array-length v5, v5

    if-eq v2, v5, :cond_4

    new-instance v2, Ljava/io/IOException;

    const-string v3, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v2

    throw v2

    :cond_4
    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_0
    :try_start_1
    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v5, v0, :cond_6

    aget-byte v16, v10, v5

    aget-byte v17, v15, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p2

    array-length v2, v0

    if-eqz v2, :cond_5

    new-instance v2, Ljava/io/IOException;

    const-string v3, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error constructing MAC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v2, 0x0

    :cond_6
    if-nez v2, :cond_2c

    :try_start_2
    invoke-virtual {v12, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v2, v0

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    invoke-virtual {v11, v3, v13}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v11, v7}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v11}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v3

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v5

    const/4 v2, 0x0

    :goto_1
    array-length v7, v3

    if-eq v2, v7, :cond_9

    aget-byte v7, v3, v2

    aget-byte v8, v5, v2

    if-eq v7, v8, :cond_8

    new-instance v2, Ljava/io/IOException;

    const-string v3, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    const/4 v2, 0x1

    :goto_2
    move v7, v2

    :goto_3
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v15

    const/4 v2, 0x0

    move v8, v2

    move v6, v4

    :goto_4
    array-length v2, v15

    if-eq v8, v2, :cond_1e

    aget-object v2, v15, v8

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v2, v15, v8

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    move v9, v3

    move v10, v6

    :goto_5
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v9, v3, :cond_10

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v2, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v4, v1, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v13, 0x0

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v17

    if-lez v17, :cond_2b

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObject;

    invoke-interface {v3, v6, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :goto_7
    sget-object v13, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v13}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    check-cast v5, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    move-object v5, v11

    :goto_8
    move-object v11, v5

    move-object v12, v6

    goto :goto_6

    :cond_a
    sget-object v13, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v13}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    check-cast v5, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v6, v12

    goto :goto_8

    :cond_b
    if-eqz v11, :cond_d

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    move v6, v10

    :goto_a
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v10, v6

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v4, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_d
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    const-string v5, "unmarked"

    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v14, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v6, v10

    goto :goto_a

    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extra in data "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v6, v10

    goto :goto_a

    :cond_10
    move v3, v10

    :goto_b
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v6, v3

    goto/16 :goto_4

    :cond_11
    aget-object v2, v15, v8

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    aget-object v2, v15, v8

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v3, v1, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->decryptData(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v13

    const/4 v2, 0x0

    move v9, v2

    :goto_c
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v9, v2, :cond_1b

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v13, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v14, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_d
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v3, v1, v7}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v16

    :goto_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v12, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v17

    if-lez v17, :cond_29

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERObject;

    invoke-interface {v2, v5, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :goto_f
    sget-object v12, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v12}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    check-cast v4, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    move-object v4, v10

    :goto_10
    move-object v10, v4

    move-object v11, v5

    goto :goto_e

    :cond_13
    sget-object v12, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v12}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v5, v11

    goto :goto_10

    :cond_14
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    if-nez v11, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, v11, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_16
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static {v3}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v16

    :goto_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v12, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v17

    if-lez v17, :cond_27

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERObject;

    invoke-interface {v2, v5, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :goto_12
    sget-object v12, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v12}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    check-cast v4, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    move-object v4, v10

    :goto_13
    move-object v10, v4

    move-object v11, v5

    goto :goto_11

    :cond_17
    sget-object v12, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v12}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v5, v11

    goto :goto_13

    :cond_18
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    if-nez v11, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, v11, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_1a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extra in encryptedData "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_1b
    move v3, v6

    goto/16 :goto_b

    :cond_1c
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v8

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v8

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v6

    goto/16 :goto_b

    :cond_1d
    move v6, v4

    :cond_1e
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    const/4 v2, 0x0

    move v7, v2

    :goto_14
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v7, v2, :cond_0

    invoke-virtual {v14, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/CertBag;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    :try_start_3
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v10

    :goto_15
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERObject;

    instance-of v4, v5, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_1f

    move-object v4, v5

    check-cast v4, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v4, v3, v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1f
    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    check-cast v2, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v9

    :goto_16
    move-object v8, v2

    move-object v9, v3

    goto :goto_15

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_20
    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v3, v2

    move-object v2, v8

    goto :goto_16

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    const-string v5, "unmarked"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    :goto_17
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_14

    :cond_23
    if-eqz v9, :cond_24

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    if-eqz v8, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v2, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_25
    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_16

    :cond_26
    move-object v4, v10

    move-object v5, v11

    goto/16 :goto_13

    :cond_27
    move-object v4, v12

    goto/16 :goto_12

    :cond_28
    move-object v4, v10

    move-object v5, v11

    goto/16 :goto_10

    :cond_29
    move-object v4, v12

    goto/16 :goto_f

    :cond_2a
    move-object v5, v11

    move-object v6, v12

    goto/16 :goto_8

    :cond_2b
    move-object v5, v13

    goto/16 :goto_7

    :cond_2c
    move v2, v3

    goto/16 :goto_2

    :cond_2d
    move v7, v3

    goto/16 :goto_3
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is already a certificate with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is already a key with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    aget-object v2, p4, v0

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    array-length v1, p4

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 4

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x2

    new-array v7, v2, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x14

    new-array v4, v2, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v9, 0x64

    invoke-direct {v5, v4, v9}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    const-string v4, "1.2.840.113549.1.12.1.3"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v3, v5, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v4

    new-instance v9, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v10, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v11, "1.2.840.113549.1.12.1.3"

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-direct {v9, v10, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v10, v9, v4}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const/4 v5, 0x0

    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v4, v3, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v3, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERBMPString;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v11, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v11, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v11}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v3, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    sget-object v11, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v4

    invoke-interface {v3, v11, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_3
    invoke-interface {v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v11

    move v4, v5

    :goto_1
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v3, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v5, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    const/4 v4, 0x1

    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v9, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    :cond_4
    move v4, v5

    :cond_5
    if-nez v4, :cond_6

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v9, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    new-instance v5, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v9, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_6
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v5, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v6, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_7
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v8}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v9, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v9, v2}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    const/16 v2, 0x14

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v11, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v3, 0x64

    invoke-direct {v11, v2, v3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    new-instance v12, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.12.1.6"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v12, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_d

    :try_start_0
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v15, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509certType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v15, v3, v5}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V

    new-instance v16, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v3, v4, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_18

    move-object v0, v4

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v3, v0

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v3, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERBMPString;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v17, Lorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v3, v5, v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_9
    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v3, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    if-nez v5, :cond_a

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v5, v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_a
    invoke-interface {v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v17

    move v5, v6

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v18, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v3, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    move v3, v5

    :goto_4
    if-nez v3, :cond_c

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    new-instance v6, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_c
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v2, v3, v5, v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v13, v4, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encoding certificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v14

    :cond_e
    :goto_5
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_13

    :try_start_1
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    new-instance v15, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509certType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v15, v4, v5}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V

    new-instance v16, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v4, v3, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_17

    move-object v0, v3

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v4, v0

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v4, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERBMPString;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    :cond_f
    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v17, Lorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v5, v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_10
    invoke-interface {v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v17

    move v5, v6

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v18, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v4, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    const/4 v5, 0x1

    goto :goto_6

    :cond_11
    move v4, v5

    :goto_7
    if-nez v4, :cond_12

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    new-instance v6, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_12
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v2, v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v13, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encoding certificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_14
    :goto_8
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_16

    :try_start_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-virtual {v13, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_14

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509certType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v14

    invoke-direct {v6, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v5, v3, v6}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v3, v2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_15

    check-cast v2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v15, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v16, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v2, v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual/range {v15 .. v16}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v6, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encoding certificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    :try_start_3
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v3, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v14, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v14, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v2, v3, v5, v14}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_8

    :cond_16
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v2, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v8}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V

    const-string v2, "1.2.840.113549.1.12.1.6"

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v3, v11, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptData(Ljava/lang/String;[BLorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    invoke-direct {v3, v4, v12, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    const/4 v2, 0x0

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v4, v5, v9}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    aput-object v4, v7, v2

    const/4 v2, 0x1

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v5, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    aput-object v4, v7, v2

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-direct {v2, v7}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v3, Lorg/bouncycastle/asn1/BEROutputStream;

    invoke-direct {v3, v8}, Lorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    const/16 v2, 0x14

    new-array v4, v2, [B

    const/16 v5, 0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    :try_start_4
    sget-object v6, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BC"

    invoke-static {v7, v8}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v7

    new-instance v8, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v8, v4, v5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v7, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v6, v2}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v6}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    new-instance v6, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v7, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v8, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-direct {v7, v6, v2}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/MacData;

    invoke-direct {v2, v7, v4, v5}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    new-instance v2, Lorg/bouncycastle/asn1/BEROutputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    :catch_3
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error constructing MAC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    move v4, v6

    goto/16 :goto_7

    :cond_18
    move v3, v6

    goto/16 :goto_4
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v1, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    const-string v4, "BC"

    invoke-static {v3, v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v5, v6, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v4, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v1, v0

    invoke-virtual {v1, p4}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    const-string v1, "BC"

    invoke-static {v3, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v2, ""

    const/4 v3, 0x2

    invoke-virtual {v1, p2, v2, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception unwrapping private key - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    const-string v1, "BC"

    invoke-static {p1, v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    const-string v3, "BC"

    invoke-static {p1, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception encrypting data - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
