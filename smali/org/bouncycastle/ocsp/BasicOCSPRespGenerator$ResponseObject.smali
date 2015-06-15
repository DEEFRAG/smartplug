.class Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseObject"
.end annotation


# instance fields
.field certId:Lorg/bouncycastle/ocsp/CertificateID;

.field certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

.field extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field final synthetic this$0:Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;

.field thisUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 6

    const/4 v5, 0x0

    iput-object p1, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->this$0:Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certId:Lorg/bouncycastle/ocsp/CertificateID;

    if-nez p3, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p4}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->thisUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz p5, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p5}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    :goto_1
    iput-object p6, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void

    :cond_0
    instance-of v0, p3, Lorg/bouncycastle/ocsp/UnknownStatus;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    const/4 v1, 0x2

    new-instance v2, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_0

    :cond_1
    check-cast p3, Lorg/bouncycastle/ocsp/RevokedStatus;

    invoke-virtual {p3}, Lorg/bouncycastle/ocsp/RevokedStatus;->hasRevocationReason()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {p3}, Lorg/bouncycastle/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance v3, Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-virtual {p3}, Lorg/bouncycastle/ocsp/RevokedStatus;->getRevocationReason()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {p3}, Lorg/bouncycastle/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {v1, v2, v5}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_0

    :cond_3
    iput-object v5, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    goto :goto_1
.end method


# virtual methods
.method public toResponse()Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    iget-object v1, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certId:Lorg/bouncycastle/ocsp/CertificateID;

    invoke-virtual {v1}, Lorg/bouncycastle/ocsp/CertificateID;->toASN1Object()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    iget-object v3, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->thisUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iget-object v4, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iget-object v5, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/CertStatus;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    return-object v0
.end method
