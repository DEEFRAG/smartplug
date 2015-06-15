.class public Lcom/kankunit/smartplugcronus/util/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 7
    const/16 v11, 0x10

    new-array v3, v11, [C

    fill-array-data v3, :array_0

    .line 9
    .local v3, "hexDigits":[C
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 10
    .local v0, "btInput":[B
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 11
    .local v9, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 13
    .local v8, "md":[B
    array-length v5, v8

    .line 14
    .local v5, "j":I
    mul-int/lit8 v11, v5, 0x2

    new-array v10, v11, [C

    .line 15
    .local v10, "str":[C
    const/4 v6, 0x0

    .line 16
    .local v6, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 21
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V

    .line 24
    .end local v0    # "btInput":[B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :goto_1
    return-object v11

    .line 17
    .restart local v0    # "btInput":[B
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    .restart local v8    # "md":[B
    .restart local v9    # "mdInst":Ljava/security/MessageDigest;
    .restart local v10    # "str":[C
    :cond_0
    aget-byte v1, v8, v4

    .line 18
    .local v1, "byte0":B
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v7

    .line 19
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .restart local v7    # "k":I
    and-int/lit8 v11, v1, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "btInput":[B
    .end local v1    # "byte0":B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :catch_0
    move-exception v2

    .line 23
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    const/4 v11, 0x0

    goto :goto_1

    .line 7
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
