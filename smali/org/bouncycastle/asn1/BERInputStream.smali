.class public Lorg/bouncycastle/asn1/BERInputStream;
.super Lorg/bouncycastle/asn1/DERInputStream;


# instance fields
.field private END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lorg/bouncycastle/asn1/BERInputStream$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/BERInputStream$1;-><init>(Lorg/bouncycastle/asn1/BERInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    return-void
.end method

.method private buildConstructedOctetString()Lorg/bouncycastle/asn1/BERConstructedOctetString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private readIndefiniteLengthFully()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->read()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public readObject()Lorg/bouncycastle/asn1/DERObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->read()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->readLength()I

    move-result v0

    if-gez v0, :cond_9

    sparse-switch v1, :sswitch_data_0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_8

    and-int/lit8 v0, v1, 0x1f

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported high tag encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :sswitch_1
    new-instance v0, Lorg/bouncycastle/asn1/BERConstructedSequence;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/BERConstructedSequence;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/BERConstructedSequence;->addObject(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/BERInputStream;->buildConstructedOctetString()Lorg/bouncycastle/asn1/BERConstructedOctetString;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v0, v2, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/BERSet;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_2

    :cond_3
    and-int/lit8 v0, v1, 0x20

    if-nez v0, :cond_4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/BERInputStream;->readIndefiniteLengthFully()[B

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    and-int/lit8 v1, v1, 0x1f

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v4, v1, v3}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v2, v0, :cond_5

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v0, v3, :cond_6

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_6
    new-instance v3, Lorg/bouncycastle/asn1/BERConstructedSequence;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/BERConstructedSequence;-><init>()V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/BERConstructedSequence;->addObject(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_7
    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/BERConstructedSequence;->addObject(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v0, v2, :cond_7

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v4, v1, v3}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-nez v1, :cond_a

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    goto/16 :goto_0

    :cond_a
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/BERInputStream;->readFully([B)V

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/asn1/BERInputStream;->buildObject(I[B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x24 -> :sswitch_2
        0x30 -> :sswitch_1
        0x31 -> :sswitch_3
    .end sparse-switch
.end method
