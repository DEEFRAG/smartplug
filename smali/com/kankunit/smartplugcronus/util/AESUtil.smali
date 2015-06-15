.class public Lcom/kankunit/smartplugcronus/util/AESUtil;
.super Ljava/lang/Object;
.source "AESUtil.java"


# static fields
.field private static final aesKey:Ljava/lang/String; = "abcdef0123456789"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptAES([B)[B
    .locals 7
    .param p0, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v5, "abcdef0123456789"

    if-nez v5, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v2

    .line 67
    :cond_1
    const-string v5, "abcdef0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 72
    :try_start_0
    const-string v5, "abcdef0123456789"

    const-string v6, "ASCII"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 73
    .local v3, "raw":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    .local v4, "skp":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/ECB/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 75
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 76
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .local v2, "original":[B
    goto :goto_0

    .line 78
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "original":[B
    .end local v3    # "raw":[B
    .end local v4    # "skp":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decryptJAVAAES([B)[B
    .locals 7
    .param p0, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 85
    const-string v5, "abcdef0123456789"

    if-nez v5, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v2

    .line 89
    :cond_1
    const-string v5, "abcdef0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 94
    :try_start_0
    const-string v5, "abcdef0123456789"

    const-string v6, "ASCII"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 95
    .local v3, "raw":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 96
    .local v4, "skp":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/ECB/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 97
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 98
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    .local v2, "original":[B
    goto :goto_0

    .line 100
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "original":[B
    .end local v3    # "raw":[B
    .end local v4    # "skp":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptCAES([B)[B
    .locals 7
    .param p0, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 14
    const-string v5, "abcdef0123456789"

    if-nez v5, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-object v2

    .line 18
    :cond_1
    const-string v5, "abcdef0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 23
    :try_start_0
    const-string v5, "abcdef0123456789"

    const-string v6, "ASCII"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 24
    .local v3, "raw":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 25
    .local v4, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 26
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 27
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 28
    .local v2, "encrypted":[B
    goto :goto_0

    .line 29
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encrypted":[B
    .end local v3    # "raw":[B
    .end local v4    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptJAVAAES([B)[B
    .locals 7
    .param p0, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 36
    const-string v5, "abcdef0123456789"

    if-nez v5, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v2

    .line 41
    :cond_1
    const-string v5, "abcdef0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 46
    :try_start_0
    const-string v5, "abcdef0123456789"

    const-string v6, "ASCII"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 47
    .local v3, "raw":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 49
    .local v4, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/ECB/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 50
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 51
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 52
    .local v2, "encrypted":[B
    goto :goto_0

    .line 53
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encrypted":[B
    .end local v3    # "raw":[B
    .end local v4    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 107
    const-string v3, "testlkjldkjdlkjfdlfjxfdfdfcvcgfdlkfjljljljljlj"

    .line 108
    .local v3, "test":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 110
    .local v1, "b":[B
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/AESUtil;->encryptJAVAAES([B)[B

    move-result-object v0

    .line 112
    .local v0, "a":[B
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/AESUtil;->decryptAES([B)[B

    move-result-object v2

    .line 120
    .local v2, "c":[B
    return-void
.end method
