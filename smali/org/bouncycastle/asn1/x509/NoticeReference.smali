.class public Lorg/bouncycastle/asn1/x509/NoticeReference;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private organization:Lorg/bouncycastle/asn1/x509/DisplayText;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v3, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NoticeReference;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/NoticeReference;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNoticeNumbers()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getOrganization()Lorg/bouncycastle/asn1/x509/DisplayText;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
