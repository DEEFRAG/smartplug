.class public Lorg/bouncycastle/asn1/DERTaggedObject;
.super Lorg/bouncycastle/asn1/ASN1TaggedObject;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->empty:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    or-int/lit16 v1, v1, 0xa0

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    :goto_0
    return-void

    :cond_0
    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    or-int/lit16 v1, v1, 0xa0

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write([B)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    or-int/lit16 v0, v0, 0xa0

    new-array v1, v3, [B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    goto :goto_0
.end method
