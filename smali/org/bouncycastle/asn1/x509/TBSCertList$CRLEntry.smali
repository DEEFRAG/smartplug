.class public Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CRLEntry"
.end annotation


# instance fields
.field crlEntryExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field revocationDate:Lorg/bouncycastle/asn1/x509/Time;

.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field final synthetic this$0:Lorg/bouncycastle/asn1/x509/TBSCertList;

.field userCertificate:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->this$0:Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->userCertificate:Lorg/bouncycastle/asn1/DERInteger;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->revocationDate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    :cond_0
    return-void
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getRevocationDate()Lorg/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->revocationDate:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getUserCertificate()Lorg/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->userCertificate:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
