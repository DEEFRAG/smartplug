.class public Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;
.super Ljava/lang/Object;
.source "NTLMResponses.java"


# static fields
.field public static LM_HASH_MAGIC_CONSTANT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    .line 50
    :try_start_0
    const-string v1, "KGS!@#$%"

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void

    .line 51
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 52
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBlob([B[BJ)[B
    .locals 12
    .param p0, "targetInformation"    # [B
    .param p1, "clientNonce"    # [B
    .param p2, "time"    # J

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x4

    const/4 v10, 0x0

    .line 301
    new-array v1, v8, [B

    fill-array-data v1, :array_0

    .line 303
    .local v1, "blobSignature":[B
    new-array v4, v8, [B

    fill-array-data v4, :array_1

    .line 305
    .local v4, "reserved":[B
    new-array v6, v8, [B

    fill-array-data v6, :array_2

    .line 307
    .local v6, "unknown1":[B
    new-array v7, v8, [B

    fill-array-data v7, :array_3

    .line 309
    .local v7, "unknown2":[B
    const-wide v8, 0xa9730b66800L

    add-long/2addr p2, v8

    .line 310
    const-wide/16 v8, 0x2710

    mul-long/2addr p2, v8

    .line 312
    new-array v5, v11, [B

    .line 313
    .local v5, "timestamp":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 314
    long-to-int v8, p2

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    .line 315
    ushr-long/2addr p2, v11

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_0
    array-length v8, v1

    array-length v9, v4

    add-int/2addr v8, v9

    array-length v9, v5

    add-int/2addr v8, v9

    array-length v9, p1

    add-int/2addr v8, v9

    array-length v9, v6

    add-int/2addr v8, v9

    array-length v9, p0

    add-int/2addr v8, v9

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v0, v8, [B

    .line 320
    .local v0, "blob":[B
    const/4 v3, 0x0

    .line 321
    .local v3, "offset":I
    array-length v8, v1

    invoke-static {v1, v10, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    array-length v8, v1

    add-int/2addr v3, v8

    .line 323
    array-length v8, v4

    invoke-static {v4, v10, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    array-length v8, v4

    add-int/2addr v3, v8

    .line 325
    array-length v8, v5

    invoke-static {v5, v10, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    array-length v8, v5

    add-int/2addr v3, v8

    .line 327
    array-length v8, p1

    invoke-static {p1, v10, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    array-length v8, p1

    add-int/2addr v3, v8

    .line 329
    array-length v8, v6

    invoke-static {v6, v10, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    array-length v8, v6

    add-int/2addr v3, v8

    .line 331
    array-length v8, p0

    invoke-static {p0, v10, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    array-length v8, p0

    add-int/2addr v3, v8

    .line 334
    array-length v8, v7

    invoke-static {v7, v10, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    return-object v0

    .line 301
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 303
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 305
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 307
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static createDESKey([BI)Ljava/security/Key;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 385
    .local v0, "keyBytes":[B
    const/4 v2, 0x7

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 387
    .local v1, "material":[B
    aget-byte v2, v0, v3

    aput-byte v2, v1, v3

    .line 388
    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x7

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 389
    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 390
    aget-byte v2, v0, v5

    shl-int/lit8 v2, v2, 0x5

    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 391
    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, v0, v7

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 392
    const/4 v2, 0x5

    aget-byte v3, v0, v7

    shl-int/lit8 v3, v3, 0x3

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 393
    const/4 v2, 0x6

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x2

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 394
    const/4 v2, 0x7

    const/4 v3, 0x6

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 395
    invoke-static {v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->oddParity([B)V

    .line 396
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method public static getLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 68
    .local v0, "lmHash":[B
    invoke-static {v0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "challenge"    # [B
    .param p4, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 150
    .local v0, "ntlmv2Hash":[B
    invoke-static {v0, p4, p3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmv2Response([B[B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
    .locals 6
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B
    .param p2, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 167
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 168
    .local v1, "ntlmHash":[B
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 169
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    new-array v2, v5, [B

    .line 172
    .local v2, "sessionHash":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    invoke-static {v1, v2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object v3

    return-object v3
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 83
    .local v0, "ntlmHash":[B
    invoke-static {v0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 8
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "targetInformation"    # [B
    .param p4, "challenge"    # [B
    .param p5, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BJ)[B
    .locals 3
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "targetInformation"    # [B
    .param p4, "challenge"    # [B
    .param p5, "clientNonce"    # [B
    .param p6, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 129
    .local v1, "ntlmv2Hash":[B
    invoke-static {p3, p5, p6, p7}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createBlob([B[BJ)[B

    move-result-object v0

    .line 130
    .local v0, "blob":[B
    invoke-static {v1, v0, p4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmv2Response([B[B[B)[B

    move-result-object v2

    return-object v2
.end method

.method public static hmacMD5([B[B)[B
    .locals 8
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x40

    .line 348
    new-array v2, v6, [B

    .line 349
    .local v2, "ipad":[B
    new-array v4, v6, [B

    .line 352
    .local v4, "opad":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 353
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 354
    aget-byte v5, p1, v1

    xor-int/lit8 v5, v5, 0x36

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 355
    aget-byte v5, p1, v1

    xor-int/lit8 v5, v5, 0x5c

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 352
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    const/16 v5, 0x36

    aput-byte v5, v2, v1

    .line 358
    const/16 v5, 0x5c

    aput-byte v5, v4, v1

    goto :goto_1

    .line 362
    :cond_1
    array-length v5, p0

    add-int/lit8 v5, v5, 0x40

    new-array v0, v5, [B

    .line 363
    .local v0, "content":[B
    invoke-static {v2, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    array-length v5, p0

    invoke-static {p0, v7, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 366
    .local v3, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 367
    array-length v5, p0

    add-int/lit8 v5, v5, 0x40

    new-array v0, v5, [B

    .line 368
    invoke-static {v4, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    array-length v5, p0

    invoke-static {p0, v7, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    return-object v5
.end method

.method private static lmHash(Ljava/lang/String;)[B
    .locals 15
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v14, 0xe

    const/4 v13, 0x1

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 186
    .local v8, "oemPassword":[B
    array-length v9, v8

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 187
    .local v4, "length":I
    new-array v3, v14, [B

    .line 188
    .local v3, "keyBytes":[B
    invoke-static {v8, v11, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-static {v3, v11}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v7

    .line 190
    .local v7, "lowKey":Ljava/security/Key;
    const/4 v9, 0x7

    invoke-static {v3, v9}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v2

    .line 191
    .local v2, "highKey":Ljava/security/Key;
    const-string v9, "DES/ECB/NoPadding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 192
    .local v0, "des":Ljavax/crypto/Cipher;
    invoke-virtual {v0, v13, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 193
    sget-object v9, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 194
    .local v6, "lowHash":[B
    invoke-virtual {v0, v13, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 195
    sget-object v9, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 196
    .local v1, "highHash":[B
    const/16 v9, 0x10

    new-array v5, v9, [B

    .line 197
    .local v5, "lmHash":[B
    invoke-static {v6, v11, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    invoke-static {v1, v11, v5, v12, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    return-object v5
.end method

.method private static lmResponse([B[B)[B
    .locals 14
    .param p0, "hash"    # [B
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 244
    const/16 v9, 0x15

    new-array v3, v9, [B

    .line 245
    .local v3, "keyBytes":[B
    invoke-static {p0, v10, v3, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    invoke-static {v3, v10}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v5

    .line 247
    .local v5, "lowKey":Ljava/security/Key;
    const/4 v9, 0x7

    invoke-static {v3, v9}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v7

    .line 248
    .local v7, "middleKey":Ljava/security/Key;
    const/16 v9, 0xe

    invoke-static {v3, v9}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v1

    .line 249
    .local v1, "highKey":Ljava/security/Key;
    const-string v9, "DES/ECB/NoPadding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 250
    .local v0, "des":Ljavax/crypto/Cipher;
    invoke-virtual {v0, v12, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 251
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 252
    .local v6, "lowResponse":[B
    invoke-virtual {v0, v12, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 253
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 254
    .local v8, "middleResponse":[B
    invoke-virtual {v0, v12, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 255
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 256
    .local v2, "highResponse":[B
    const/16 v9, 0x18

    new-array v4, v9, [B

    .line 257
    .local v4, "lmResponse":[B
    invoke-static {v6, v10, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    invoke-static {v8, v10, v4, v11, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    invoke-static {v2, v10, v4, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    return-object v4
.end method

.method private static lmv2Response([B[B[B)[B
    .locals 6
    .param p0, "hash"    # [B
    .param p1, "clientData"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 276
    array-length v3, p2

    array-length v4, p1

    add-int/2addr v3, v4

    new-array v0, v3, [B

    .line 277
    .local v0, "data":[B
    array-length v3, p2

    invoke-static {p2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length v3, p2

    array-length v4, p1

    invoke-static {p1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    invoke-static {v0, p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->hmacMD5([B[B)[B

    move-result-object v2

    .line 281
    .local v2, "mac":[B
    array-length v3, v2

    array-length v4, p1

    add-int/2addr v3, v4

    new-array v1, v3, [B

    .line 282
    .local v1, "lmv2Response":[B
    array-length v3, v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    array-length v3, v2

    array-length v4, p1

    invoke-static {p1, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    return-object v1
.end method

.method private static ntlmHash(Ljava/lang/String;)[B
    .locals 3
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 212
    .local v1, "unicodePassword":[B
    const-string v2, "MD4"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 213
    .local v0, "md4":Ljava/security/MessageDigest;
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    return-object v2
.end method

.method private static ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 229
    .local v1, "ntlmHash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "identity":Ljava/lang/String;
    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->hmacMD5([B[B)[B

    move-result-object v2

    return-object v2
.end method

.method private static oddParity([B)V
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 407
    aget-byte v0, p0, v1

    .line 408
    .local v0, "b":B
    ushr-int/lit8 v3, v0, 0x7

    ushr-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x1

    xor-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 410
    .local v2, "needsParity":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 411
    aget-byte v3, p0, v1

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 406
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v2    # "needsParity":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 413
    .restart local v2    # "needsParity":Z
    :cond_1
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    goto :goto_2

    .line 416
    .end local v0    # "b":B
    .end local v2    # "needsParity":Z
    :cond_2
    return-void
.end method
