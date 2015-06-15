.class public Lorg/bouncycastle/asn1/DEROutputStream;
.super Ljava/io/FilterOutputStream;

# interfaces
.implements Lorg/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private writeLength(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    move v0, p1

    :goto_0
    ushr-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    add-int/lit8 v0, v1, -0x1

    mul-int/lit8 v0, v0, 0x8

    :goto_1
    if-ltz v0, :cond_2

    shr-int v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_1
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method writeEncoded(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    array-length v0, p2

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->writeLength(I)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/DEROutputStream;->write([B)V

    return-void
.end method

.method protected writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DEROutputStream;->writeNull()V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/asn1/DERObject;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/DERObject;->encode(Lorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/DERObject;->encode(Lorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "object not DEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
