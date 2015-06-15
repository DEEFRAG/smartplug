.class public Lorg/xbill/DNS/NSEC3Record;
.super Lorg/xbill/DNS/Record;
.source "NSEC3Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/NSEC3Record$Digest;,
        Lorg/xbill/DNS/NSEC3Record$Flags;
    }
.end annotation


# static fields
.field public static final SHA1_DIGEST_ID:I = 0x1

.field private static final b32:Lorg/xbill/DNS/utils/base32;

.field private static final serialVersionUID:J = -0x62dbc5b976c6cbf7L


# instance fields
.field private flags:I

.field private hashAlg:I

.field private iterations:I

.field private next:[B

.field private salt:[B

.field private types:Lorg/xbill/DNS/TypeBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Lorg/xbill/DNS/utils/base32;

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUV="

    invoke-direct {v0, v1, v2, v2}, Lorg/xbill/DNS/utils/base32;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/utils/base32;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B[B[I)V
    .locals 7

    .prologue
    .line 81
    const/16 v3, 0x32

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 82
    const-string v1, "hashAlg"

    invoke-static {v1, p5}, Lorg/xbill/DNS/NSEC3Record;->checkU8(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 83
    const-string v1, "flags"

    invoke-static {v1, p6}, Lorg/xbill/DNS/NSEC3Record;->checkU8(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 84
    const-string v1, "iterations"

    invoke-static {v1, p7}, Lorg/xbill/DNS/NSEC3Record;->checkU16(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 86
    if-eqz p8, :cond_1

    .line 87
    array-length v1, p8

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid salt"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    array-length v1, p8

    if-lez v1, :cond_1

    .line 90
    array-length v1, p8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 91
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    const/4 v3, 0x0

    array-length v4, p8

    invoke-static {p8, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    :cond_1
    move-object/from16 v0, p9

    array-length v1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_2

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid next hash"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_2
    move-object/from16 v0, p9

    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 99
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    const/4 v3, 0x0

    move-object/from16 v0, p9

    array-length v4, v0

    move-object/from16 v0, p9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    new-instance v1, Lorg/xbill/DNS/TypeBitmap;

    move-object/from16 v0, p10

    invoke-direct {v1, v0}, Lorg/xbill/DNS/TypeBitmap;-><init>([I)V

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    .line 101
    return-void
.end method

.method static hashName(Lorg/xbill/DNS/Name;II[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 231
    packed-switch p1, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown NSEC3 algorithmidentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_0
    const-string v0, "sha-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 240
    const/4 v1, 0x0

    .line 241
    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_2

    .line 242
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 243
    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 247
    :goto_1
    if-eqz p3, :cond_0

    .line 248
    invoke-virtual {v2, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 249
    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    .line 251
    :cond_2
    return-object v1

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    return v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    return v0
.end method

.method public getNext()[B
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lorg/xbill/DNS/NSEC3Record;

    invoke-direct {v0}, Lorg/xbill/DNS/NSEC3Record;-><init>()V

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    return-object v0
.end method

.method public getTypes()[I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v0}, Lorg/xbill/DNS/TypeBitmap;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public hasType(I)Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/TypeBitmap;->contains(I)Z

    move-result v0

    return v0
.end method

.method public hashName(Lorg/xbill/DNS/Name;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 263
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-static {p1, v0, v1, v2}, Lorg/xbill/DNS/NSEC3Record;->hashName(Lorg/xbill/DNS/Name;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 140
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 141
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 143
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 153
    :cond_0
    sget-object v0, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/utils/base32;

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getBase32String(Lorg/xbill/DNS/utils/base32;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 154
    new-instance v0, Lorg/xbill/DNS/TypeBitmap;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/TypeBitmap;-><init>(Lorg/xbill/DNS/Tokenizer;)V

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    .line 155
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 148
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getHexString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 149
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 150
    const-string v0, "salt value too long"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 106
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 107
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 109
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 110
    if-lez v0, :cond_0

    .line 111
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 115
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 116
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 117
    new-instance v0, Lorg/xbill/DNS/TypeBitmap;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/TypeBitmap;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    .line 118
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    if-nez v1, :cond_1

    .line 168
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    sget-object v1, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/utils/base32;

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/base32;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v1}, Lorg/xbill/DNS/TypeBitmap;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v1}, Lorg/xbill/DNS/TypeBitmap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 123
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 124
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 126
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 128
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 132
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 133
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 134
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/TypeBitmap;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 135
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_0
.end method
