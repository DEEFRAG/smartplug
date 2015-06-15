.class public Lorg/bouncycastle/asn1/DERInputStream;
.super Ljava/io/FilterInputStream;

# interfaces
.implements Lorg/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected buildObject(I[B)Lorg/bouncycastle/asn1/DERObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_5

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported high tag encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/asn1/BERInputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERConstructedSequence;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/DERConstructedSequence;->addObject(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/asn1/BERInputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v0, Lorg/bouncycastle/asn1/DERConstructedSet;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERConstructedSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/bouncycastle/asn1/DERBoolean;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERBoolean;-><init>([B)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>([B)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/bouncycastle/asn1/DEREnumerated;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    goto :goto_0

    :sswitch_7
    aget-byte v1, p2, v4

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    new-array v2, v0, [B

    const/4 v0, 0x1

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lorg/bouncycastle/asn1/DERT61String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lorg/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto/16 :goto_0

    :sswitch_d
    new-instance v0, Lorg/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto/16 :goto_0

    :sswitch_e
    new-instance v0, Lorg/bouncycastle/asn1/DERGeneralString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto/16 :goto_0

    :sswitch_10
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto/16 :goto_0

    :sswitch_11
    new-instance v0, Lorg/bouncycastle/asn1/DERUTCTime;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    goto/16 :goto_0

    :cond_0
    array-length v0, p2

    if-nez v0, :cond_2

    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v1, p1, 0x1f

    new-instance v2, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v1, p1, 0x1f

    new-instance v2, Lorg/bouncycastle/asn1/DERConstructedSequence;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v1, p1, 0x1f

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/asn1/BERInputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERInputStream;->available()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_4
    new-instance v3, Lorg/bouncycastle/asn1/DERConstructedSequence;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/DERConstructedSequence;->addObject(Lorg/bouncycastle/asn1/DEREncodable;)V

    :goto_3
    :try_start_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/DERConstructedSequence;->addObject(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {v0, v4, v1, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lorg/bouncycastle/asn1/DERUnknownTag;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/DERUnknownTag;-><init>(I[B)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_7
        0x4 -> :sswitch_10
        0x5 -> :sswitch_0
        0x6 -> :sswitch_6
        0xa -> :sswitch_5
        0xc -> :sswitch_8
        0x13 -> :sswitch_9
        0x14 -> :sswitch_b
        0x16 -> :sswitch_a
        0x17 -> :sswitch_11
        0x18 -> :sswitch_12
        0x1a -> :sswitch_c
        0x1b -> :sswitch_e
        0x1c -> :sswitch_d
        0x1e -> :sswitch_f
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
    .end sparse-switch
.end method

.method protected readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    sub-int/2addr v0, v1

    :cond_2
    if-lez v0, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/asn1/DERInputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "unexpected end of stream"

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

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInputStream;->read()I

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

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInputStream;->read()I

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInputStream;->readLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/DERInputStream;->readFully([B)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/asn1/DERInputStream;->buildObject(I[B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
