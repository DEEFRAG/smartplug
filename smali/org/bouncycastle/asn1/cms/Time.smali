.class public Lorg/bouncycastle/asn1/cms/Time;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field time:Lorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "Z"

    invoke-direct {v0, v3, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x79e

    if-lt v1, v2, :cond_0

    const/16 v2, 0x801

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERUTCTime;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObject;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERUTCTime;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Time;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Time;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cms/Time;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/Time;

    check-cast p0, Lorg/bouncycastle/asn1/DERUTCTime;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/cms/Time;

    check-cast p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/Time;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Time;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/Time;->getTime()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    check-cast v0, Lorg/bouncycastle/asn1/DERUTCTime;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERUTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    check-cast v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method
