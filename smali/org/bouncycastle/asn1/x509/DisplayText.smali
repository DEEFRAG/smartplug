.class public Lorg/bouncycastle/asn1/x509/DisplayText;
.super Lorg/bouncycastle/asn1/ASN1Encodable;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final CONTENT_TYPE_BMPSTRING:I = 0x1

.field public static final CONTENT_TYPE_IA5STRING:I = 0x0

.field public static final CONTENT_TYPE_UTF8STRING:I = 0x2

.field public static final CONTENT_TYPE_VISIBLESTRING:I = 0x3

.field public static final DISPLAY_TEXT_MAXIMUM_SIZE:I = 0xc8


# instance fields
.field contentType:I

.field contents:Lorg/bouncycastle/asn1/DERString;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/16 v1, 0xc8

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput p1, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERVisibleString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xc8

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/DisplayText;->canBeUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    return-void
.end method

.method private canBeUTF8(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/DERString;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    check-cast p0, Lorg/bouncycastle/asn1/DERString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(Lorg/bouncycastle/asn1/DERString;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/x509/DisplayText;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DisplayText;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    check-cast v0, Lorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method
