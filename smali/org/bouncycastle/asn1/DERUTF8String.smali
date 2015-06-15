.class public Lorg/bouncycastle/asn1/DERUTF8String;
.super Lorg/bouncycastle/asn1/DERObject;

# interfaces
.implements Lorg/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([B)V
    .locals 7

    const/16 v6, 0xe0

    const/16 v5, 0xc0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xe0

    if-ne v3, v6, :cond_0

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v5, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v4, v0, [C

    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_5

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xe0

    if-ne v2, v6, :cond_3

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x3

    move v3, v2

    move v2, v0

    :goto_2
    add-int/lit8 v0, v1, 0x1

    aput-char v3, v4, v1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_3
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v5, :cond_4

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x2

    move v3, v2

    move v2, v0

    goto :goto_2

    :cond_4
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/DERUTF8String;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_2

    aget-char v3, v1, v0

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    shr-int/lit8 v4, v3, 0x6

    or-int/lit16 v4, v4, 0xc0

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    shr-int/lit8 v4, v3, 0xc

    or-int/lit16 v4, v4, 0xe0

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERUTF8String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
