.class public Lorg/bouncycastle/ocsp/RevokedStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/ocsp/CertificateStatus;


# instance fields
.field info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;


# direct methods
.method public constructor <init>(Ljava/util/Date;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/x509/CRLReason;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    return-void
.end method


# virtual methods
.method public getRevocationReason()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get a reason where none is available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getRevocationTime()Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationTime()Lorg/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hasRevocationReason()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
