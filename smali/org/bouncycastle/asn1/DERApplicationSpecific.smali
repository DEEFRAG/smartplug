.class public Lorg/bouncycastle/asn1/DERApplicationSpecific;
.super Lorg/bouncycastle/asn1/DERObject;


# instance fields
.field private octets:[B

.field private tag:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/DEREncodable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    or-int/lit8 v0, p1, 0x20

    iput v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p2}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    or-int/lit8 v0, v0, 0x40

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    iget v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iget v2, p1, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v0, v0

    iget-object v2, p1, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    aget-byte v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getApplicationTag()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public getContents()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    return-object v0
.end method

.method public getObject()Lorg/bouncycastle/asn1/DERObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v2

    move v1, v0

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    rem-int/lit8 v4, v0, 0x4

    shl-int/2addr v3, v4

    xor-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isConstructed()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
