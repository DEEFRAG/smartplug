.class public Lcom/kankunit/smartplugcronus/util/AES256Utils;
.super Ljava/lang/Object;
.source "AES256Utils.java"


# static fields
.field public static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/ECB/PKCS7Padding"

.field public static final KEY_ALGORITHM:Ljava/lang/String; = "AES"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([B[B)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/util/AES256Utils;->toKey([B)Ljava/security/Key;

    move-result-object v1

    .line 60
    .local v1, "k":Ljava/security/Key;
    new-instance v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 61
    const-string v2, "AES/ECB/PKCS7Padding"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 63
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 65
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static encrypt([B[B)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/util/AES256Utils;->toKey([B)Ljava/security/Key;

    move-result-object v1

    .line 48
    .local v1, "k":Ljava/security/Key;
    new-instance v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 49
    const-string v2, "AES/ECB/PKCS7Padding"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 51
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 53
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static initRootKey()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x8t
        0x8t
        0x4t
        0xbt
        0x2t
        0xft
        0xbt
        0xct
        0x1t
        0x3t
        0x9t
        0x7t
        0xct
        0x3t
        0x7t
        0xat
        0x4t
        0xft
        0x6t
        0xft
        0xet
        0x9t
        0x5t
        0x1t
        0xat
        0xat
        0x1t
        0x9t
        0x6t
        0x7t
        0x9t
        0xdt
    .end array-data
.end method

.method public static initkey()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 20
    const-string v2, "AES"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 21
    .local v0, "kg":Ljavax/crypto/KeyGenerator;
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 22
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 24
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 26
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v5, "Test sweet"

    .line 75
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/AES256Utils;->initkey()[B

    move-result-object v3

    .line 76
    .local v3, "key":[B
    const-string v4, "abcdef0123456789"

    .line 77
    .local v4, "keyStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 78
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-lt v2, v6, :cond_0

    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v3}, Lcom/kankunit/smartplugcronus/util/AES256Utils;->encrypt([B[B)[B

    move-result-object v0

    .line 83
    .local v0, "data":[B
    const/4 v2, 0x0

    :goto_1
    array-length v6, v0

    if-lt v2, v6, :cond_1

    .line 88
    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/AES256Utils;->decrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "data":[B
    .end local v2    # "i":I
    .end local v3    # "key":[B
    .end local v4    # "keyStr":Ljava/lang/String;
    :goto_2
    return-void

    .line 78
    .restart local v2    # "i":I
    .restart local v3    # "key":[B
    .restart local v4    # "keyStr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .restart local v0    # "data":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "data":[B
    .end local v2    # "i":I
    .end local v3    # "key":[B
    .end local v4    # "keyStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static toKey([B)Ljava/security/Key;
    .locals 2
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    .local v0, "secretKey":Ljavax/crypto/SecretKey;
    return-object v0
.end method
