.class public Lorg/bouncycastle/asn1/DERUnknownTag;
.super Lorg/bouncycastle/asn1/DERObject;


# instance fields
.field data:[B

.field tag:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

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

    iget v0, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERUnknownTag;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/DERUnknownTag;

    iget v0, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget v2, p1, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    array-length v0, v0

    iget-object v2, p1, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    aget-byte v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERUnknownTag;->getData()[B

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
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERUnknownTag;->getTag()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
