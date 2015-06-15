.class public Lorg/bouncycastle/asn1/BERConstructedSequence;
.super Lorg/bouncycastle/asn1/DERConstructedSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1OutputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/asn1/BEROutputStream;

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERConstructedSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    :goto_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/DERConstructedSequence;->encode(Lorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_1
.end method
