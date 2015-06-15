.class public Lcom/avos/avoscloud/signature/AES;
.super Ljava/lang/Object;
.source "AES.java"


# instance fields
.field private final CIPHERMODEPADDING:Ljava/lang/String;

.field private final HASH_ITERATIONS:I

.field private IV:Ljavax/crypto/spec/IvParameterSpec;

.field private final KEY_GENERATION_ALG:Ljava/lang/String;

.field private final KEY_LENGTH:I

.field private humanPassphrase:[C

.field private iv:[B

.field private keyfactory:Ljavax/crypto/SecretKeyFactory;

.field private myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

.field private salt:[B

.field private sk:Ljavax/crypto/SecretKey;

.field private skforAES:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/16 v9, 0x2710

    const/16 v8, 0x100

    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v3, "PBKDF2WithHmacSHA1"

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->KEY_GENERATION_ALG:Ljava/lang/String;

    .line 85
    iput v9, p0, Lcom/avos/avoscloud/signature/AES;->HASH_ITERATIONS:I

    .line 86
    iput v8, p0, Lcom/avos/avoscloud/signature/AES;->KEY_LENGTH:I

    .line 88
    const-string v3, "QxciDjdHjuAIf8VCsqhmGK3OZV7pBQTZ"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->humanPassphrase:[C

    .line 93
    new-array v3, v7, [B

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->salt:[B

    .line 99
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v4, p0, Lcom/avos/avoscloud/signature/AES;->humanPassphrase:[C

    iget-object v5, p0, Lcom/avos/avoscloud/signature/AES;->salt:[B

    invoke-direct {v3, v4, v5, v9, v8}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    .line 100
    const-string v3, "AES/CBC/PKCS7Padding"

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->CIPHERMODEPADDING:Ljava/lang/String;

    .line 102
    iput-object v6, p0, Lcom/avos/avoscloud/signature/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 103
    iput-object v6, p0, Lcom/avos/avoscloud/signature/AES;->sk:Ljavax/crypto/SecretKey;

    .line 104
    iput-object v6, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    .line 105
    new-array v3, v7, [B

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->iv:[B

    .line 112
    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 113
    iget-object v3, p0, Lcom/avos/avoscloud/signature/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    iget-object v4, p0, Lcom/avos/avoscloud/signature/AES;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->sk:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/avos/avoscloud/signature/AES;->sk:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 130
    .local v2, "skAsByteArray":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    .line 134
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lcom/avos/avoscloud/signature/AES;->iv:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v3, p0, Lcom/avos/avoscloud/signature/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    .line 136
    return-void

    .line 115
    .end local v2    # "skAsByteArray":[B
    :catch_0
    move-exception v1

    .line 116
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "AESdemo"

    const-string v4, "no key factory support for PBEWITHSHAANDTWOFISH-CBC"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v1    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "ikse":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "AESdemo"

    const-string v4, "invalid key spec for PBEWITHSHAANDTWOFISH-CBC"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    .line 105
    :array_1
    .array-data 1
        0xat
        0x1t
        0xbt
        0x5t
        0x4t
        0xft
        0x7t
        0x9t
        0x17t
        0x3t
        0x1t
        0x6t
        0x8t
        0xct
        0xdt
        0x5bt
    .end array-data
.end method

.method private addPadding([B)[B
    .locals 4
    .param p1, "plain"    # [B

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "plainpad":[B
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v2, v3, 0x10

    .line 162
    .local v2, "shortage":I
    if-nez v2, :cond_0

    const/16 v2, 0x10

    .line 165
    :cond_0
    array-length v3, p1

    add-int/2addr v3, v2

    new-array v1, v3, [B

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 167
    aget-byte v3, p1, v0

    aput-byte v3, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    array-length v0, p1

    :goto_1
    array-length v3, p1

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    .line 170
    int-to-byte v3, v2

    aput-byte v3, v1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_2
    return-object v1
.end method

.method private decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 7
    .param p1, "cmp"    # Ljava/lang/String;
    .param p2, "sk"    # Ljavax/crypto/SecretKey;
    .param p3, "IV"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p4, "ciphertext"    # [B

    .prologue
    .line 214
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 215
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 216
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v4

    .line 231
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :goto_0
    return-object v4

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "AESdemo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no cipher getinstance support for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v2    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 219
    :catch_1
    move-exception v3

    .line 220
    .local v3, "nspe":Ljavax/crypto/NoSuchPaddingException;
    const-string v4, "AESdemo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no cipher getinstance support for padding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    .end local v3    # "nspe":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 222
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v4, "AESdemo"

    const-string v5, "invalid key exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 224
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v4, "AESdemo"

    const-string v5, "invalid algorithm parameter exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .line 226
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v4, "AESdemo"

    const-string v5, "illegal block size exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .line 228
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    const-string v4, "AESdemo"

    const-string v5, "bad padding exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1
.end method

.method private dropPadding([B)[B
    .locals 4
    .param p1, "plainpad"    # [B

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "plain":[B
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, p1, v3

    .line 183
    .local v0, "drop":I
    array-length v3, p1

    sub-int/2addr v3, v0

    new-array v2, v3, [B

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 185
    aget-byte v3, p1, v1

    aput-byte v3, v2, v1

    .line 186
    const/4 v3, 0x0

    aput-byte v3, p1, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-object v2
.end method

.method private encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 7
    .param p1, "cmp"    # Ljava/lang/String;
    .param p2, "sk"    # Ljavax/crypto/SecretKey;
    .param p3, "IV"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p4, "msg"    # [B

    .prologue
    .line 193
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 194
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 195
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v4

    .line 209
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :goto_0
    return-object v4

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "AESdemo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no cipher getinstance support for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v2    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 198
    :catch_1
    move-exception v3

    .line 199
    .local v3, "nspe":Ljavax/crypto/NoSuchPaddingException;
    const-string v4, "AESdemo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no cipher getinstance support for padding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    .end local v3    # "nspe":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 201
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v4, "AESdemo"

    const-string v5, "invalid key exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 203
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v4, "AESdemo"

    const-string v5, "invalid algorithm parameter exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .line 205
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v4, "AESdemo"

    const-string v5, "illegal block size exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .line 207
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    const-string v4, "AESdemo"

    const-string v5, "bad padding exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ciphertext_base64"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p1}, Lcom/avos/avoscloud/signature/Base64Decoder;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 147
    .local v1, "s":[B
    new-instance v0, Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS7Padding"

    iget-object v3, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/avos/avoscloud/signature/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/avos/avoscloud/signature/AES;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 148
    .local v0, "decrypted":Ljava/lang/String;
    return-object v0
.end method

.method public encrypt([B)Ljava/lang/String;
    .locals 5
    .param p1, "plaintext"    # [B

    .prologue
    .line 140
    const-string v2, "AES/CBC/PKCS7Padding"

    iget-object v3, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/avos/avoscloud/signature/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/avos/avoscloud/signature/AES;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object v1

    .line 141
    .local v1, "ciphertext":[B
    invoke-static {v1}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "base64_ciphertext":Ljava/lang/String;
    return-object v0
.end method
