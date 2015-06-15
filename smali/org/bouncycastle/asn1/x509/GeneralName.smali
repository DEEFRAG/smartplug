.class public Lorg/bouncycastle/asn1/x509/GeneralName;
.super Lorg/bouncycastle/asn1/ASN1Encodable;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final dNSName:I = 0x2

.field public static final directoryName:I = 0x4

.field public static final ediPartyName:I = 0x5

.field public static final iPAddress:I = 0x7

.field public static final otherName:I = 0x0

.field public static final registeredID:I = 0x8

.field public static final rfc822Name:I = 0x1

.field public static final uniformResourceIdentifier:I = 0x6

.field public static final x400Address:I = 0x3


# instance fields
.field obj:Lorg/bouncycastle/asn1/DEREncodable;

.field tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iput p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process String for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    iput p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObject;I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    iput p2, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/GeneralName;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    move-object p0, v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v2}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    move-object p0, v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v2}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    move-object p0, v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    move-object p0, v0

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    move-object p0, v0

    goto :goto_0

    :pswitch_6
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v2}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    move-object p0, v0

    goto :goto_0

    :pswitch_7
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    move-object p0, v0

    goto :goto_0

    :pswitch_8
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    move-object p0, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Lorg/bouncycastle/asn1/DEREncodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getTagNo()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 4

    iget v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
