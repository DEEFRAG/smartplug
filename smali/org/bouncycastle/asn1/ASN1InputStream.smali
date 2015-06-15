.class public Lorg/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;

# interfaces
.implements Lorg/bouncycastle/asn1/DERTags;


# instance fields
.field private END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

.field eofFound:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream$1;-><init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->eofFound:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream$1;-><init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->eofFound:Z

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
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

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

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

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
.method protected buildObject(I[B)Lorg/bouncycastle/asn1/DERObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(I[B)V

    :goto_0
    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_a

    and-int/lit8 v0, p1, 0x1f

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_4

    move v0, v1

    move v3, v1

    :goto_1
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x7

    move v3, v0

    move v0, v2

    goto :goto_1

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    goto :goto_3

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;Z)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lorg/bouncycastle/asn1/DERBoolean;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERBoolean;-><init>([B)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>([B)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lorg/bouncycastle/asn1/DEREnumerated;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    goto/16 :goto_0

    :pswitch_8
    aget-byte v2, p2, v1

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    new-array v3, v0, [B

    const/4 v0, 0x1

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    invoke-static {p2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, v3, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lorg/bouncycastle/asn1/DERNumericString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERNumericString;-><init>([B)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lorg/bouncycastle/asn1/DERT61String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lorg/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lorg/bouncycastle/asn1/DERGeneralString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lorg/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Lorg/bouncycastle/asn1/DERUTCTime;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    goto/16 :goto_0

    :cond_3
    aget-byte v2, p2, v0

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v2, v3

    array-length v3, p2

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    add-int/lit8 v0, v0, 0x1

    array-length v4, v3

    invoke-static {p2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    move-object p2, v3

    :cond_4
    array-length v2, p2

    if-nez v2, :cond_6

    and-int/lit8 v2, p1, 0x20

    if-nez v2, :cond_5

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v2, v1, v0, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-direct {v2, v1, v0, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v2, p1, 0x20

    if-nez v2, :cond_7

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v1, v0, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->available()I

    move-result v4

    if-nez v4, :cond_8

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_4
    if-eqz v2, :cond_9

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_4

    :cond_9
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v2, v1, v0, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lorg/bouncycastle/asn1/DERUnknownTag;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/DERUnknownTag;-><init>(I[B)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_12
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_2

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF found when length expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v2, 0x80

    if-ne v0, v2, :cond_2

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    and-int/lit8 v3, v0, 0x7f

    const/4 v0, 0x4

    if-le v3, v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER length more than 4 bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    :goto_0
    if-ge v1, v3, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v2

    if-gez v2, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF found reading length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_5
    if-gez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted steam - negative length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/DERObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->eofFound:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "attempt to read past end of file."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->eofFound:Z

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v0

    if-gez v0, :cond_a

    sparse-switch v3, :sswitch_data_0

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_9

    and-int/lit8 v0, v3, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    move v1, v2

    :goto_1
    if-ltz v0, :cond_4

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_4

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x7

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    goto :goto_1

    :sswitch_0
    new-instance v0, Lorg/bouncycastle/asn1/BERNull;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/BERNull;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v0, v2, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_2

    :sswitch_2
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_3
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v0, v3, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/BERSet;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_3

    :sswitch_3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildConstructedOctetString()Lorg/bouncycastle/asn1/BERConstructedOctetString;

    move-result-object v0

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    move v1, v0

    :goto_4
    and-int/lit8 v0, v3, 0x20

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readIndefiniteLengthFully()[B

    move-result-object v3

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v2, v1, v4}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v3, v0, :cond_6

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v0, v4, :cond_7

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_7
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_8
    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v0, v3, :cond_8

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez v3, :cond_b

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    goto/16 :goto_0

    :cond_b
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readFully([B)V

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildObject(I[B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    move v1, v0

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x24 -> :sswitch_3
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
    .end sparse-switch
.end method
