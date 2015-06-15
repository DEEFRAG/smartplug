.class Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertId"
.end annotation


# instance fields
.field id:[B

.field final synthetic this$0:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # invokes: Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    invoke-static {p1, p2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->access$000(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    array-length v0, v0

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    array-length v2, v2

    if-eq v0, v2, :cond_2

    iget-object v2, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    add-int/lit8 v4, v0, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
