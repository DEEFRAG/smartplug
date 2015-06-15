.class public Lcom/kankunit/smartplugcronus/util/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 106
    :goto_0
    return-object v1

    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 106
    .local v0, "data":[B
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->decode([B)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static final decode([B)[B
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/16 v7, 0x3d

    .line 115
    array-length v4, p0

    .line 116
    .local v4, "tail":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    aget-byte v5, p0, v5

    if-eq v5, v7, :cond_2

    .line 117
    array-length v5, p0

    div-int/lit8 v5, v5, 0x4

    sub-int v5, v4, v5

    new-array v0, v5, [B

    .line 120
    .local v0, "dest":[B
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    array-length v5, p0

    if-lt v2, v5, :cond_3

    .line 135
    const/4 v3, 0x0

    .local v3, "sidx":I
    const/4 v1, 0x0

    .local v1, "didx":I
    :goto_2
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    if-lt v1, v5, :cond_a

    .line 144
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 146
    aget-byte v5, p0, v3

    shl-int/lit8 v5, v5, 0x2

    and-int/lit16 v5, v5, 0xff

    .line 147
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 146
    aput-byte v5, v0, v1

    .line 149
    :cond_0
    add-int/lit8 v1, v1, 0x1

    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 151
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xff

    .line 152
    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 151
    aput-byte v5, v0, v1

    .line 154
    :cond_1
    return-object v0

    .line 116
    .end local v0    # "dest":[B
    .end local v1    # "didx":I
    .end local v2    # "idx":I
    .end local v3    # "sidx":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 122
    .restart local v0    # "dest":[B
    .restart local v2    # "idx":I
    :cond_3
    aget-byte v5, p0, v2

    if-ne v5, v7, :cond_5

    const/4 v5, 0x0

    aput-byte v5, p0, v2

    .line 120
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_5
    aget-byte v5, p0, v2

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_6

    const/16 v5, 0x3f

    aput-byte v5, p0, v2

    goto :goto_3

    .line 124
    :cond_6
    aget-byte v5, p0, v2

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_7

    const/16 v5, 0x3e

    aput-byte v5, p0, v2

    goto :goto_3

    .line 125
    :cond_7
    aget-byte v5, p0, v2

    const/16 v6, 0x30

    if-lt v5, v6, :cond_8

    aget-byte v5, p0, v2

    const/16 v6, 0x39

    if-gt v5, v6, :cond_8

    .line 126
    aget-byte v5, p0, v2

    add-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, p0, v2

    goto :goto_3

    .line 127
    :cond_8
    aget-byte v5, p0, v2

    const/16 v6, 0x61

    if-lt v5, v6, :cond_9

    aget-byte v5, p0, v2

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_9

    .line 128
    aget-byte v5, p0, v2

    add-int/lit8 v5, v5, -0x47

    int-to-byte v5, v5

    aput-byte v5, p0, v2

    goto :goto_3

    .line 129
    :cond_9
    aget-byte v5, p0, v2

    const/16 v6, 0x41

    if-lt v5, v6, :cond_4

    aget-byte v5, p0, v2

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_4

    .line 130
    aget-byte v5, p0, v2

    add-int/lit8 v5, v5, -0x41

    int-to-byte v5, v5

    aput-byte v5, p0, v2

    goto :goto_3

    .line 137
    .restart local v1    # "didx":I
    .restart local v3    # "sidx":I
    :cond_a
    aget-byte v5, p0, v3

    shl-int/lit8 v5, v5, 0x2

    and-int/lit16 v5, v5, 0xff

    .line 138
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 137
    aput-byte v5, v0, v1

    .line 139
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x4

    and-int/lit16 v6, v6, 0xff

    .line 140
    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    ushr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 139
    aput-byte v6, v0, v5

    .line 141
    add-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x6

    and-int/lit16 v6, v6, 0xff

    .line 142
    add-int/lit8 v7, v3, 0x3

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 141
    aput-byte v6, v0, v5

    .line 135
    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_2
.end method

.method public static final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encode([B)Ljava/lang/String;
    .locals 8
    .param p0, "d"    # [B

    .prologue
    const/4 v6, 0x0

    .line 55
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 86
    :goto_0
    return-object v5

    .line 56
    :cond_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 57
    .local v0, "data":[B
    array-length v5, p0

    invoke-static {p0, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    array-length v5, v0

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x4

    new-array v1, v5, [B

    .line 61
    .local v1, "dest":[B
    const/4 v4, 0x0

    .local v4, "sidx":I
    const/4 v2, 0x0

    .local v2, "didx":I
    :goto_1
    array-length v5, p0

    if-lt v4, v5, :cond_1

    .line 72
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_2
    array-length v5, v1

    if-lt v3, v5, :cond_2

    .line 82
    array-length v5, v1

    add-int/lit8 v3, v5, -0x1

    :goto_3
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x3

    if-gt v3, v5, :cond_7

    .line 86
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 63
    .end local v3    # "idx":I
    :cond_1
    aget-byte v5, v0, v4

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 64
    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 65
    aget-byte v7, v0, v4

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 64
    aput-byte v6, v1, v5

    .line 66
    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, v0, v6

    ushr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    .line 67
    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 66
    aput-byte v6, v1, v5

    .line 68
    add-int/lit8 v5, v2, 0x3

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, v0, v6

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 61
    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 74
    .restart local v3    # "idx":I
    :cond_2
    aget-byte v5, v1, v3

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_3

    aget-byte v5, v1, v3

    add-int/lit8 v5, v5, 0x41

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 72
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 75
    :cond_3
    aget-byte v5, v1, v3

    const/16 v6, 0x34

    if-ge v5, v6, :cond_4

    aget-byte v5, v1, v3

    add-int/lit8 v5, v5, 0x61

    add-int/lit8 v5, v5, -0x1a

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    goto :goto_4

    .line 76
    :cond_4
    aget-byte v5, v1, v3

    const/16 v6, 0x3e

    if-ge v5, v6, :cond_5

    aget-byte v5, v1, v3

    add-int/lit8 v5, v5, 0x30

    add-int/lit8 v5, v5, -0x34

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    goto :goto_4

    .line 77
    :cond_5
    aget-byte v5, v1, v3

    const/16 v6, 0x3f

    if-ge v5, v6, :cond_6

    const/16 v5, 0x2b

    aput-byte v5, v1, v3

    goto :goto_4

    .line 78
    :cond_6
    const/16 v5, 0x2f

    aput-byte v5, v1, v3

    goto :goto_4

    .line 84
    :cond_7
    const/16 v5, 0x3d

    aput-byte v5, v1, v3

    .line 82
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3
.end method

.method public static final encodeBytes([B)Ljava/lang/String;
    .locals 1
    .param p0, "bs"    # [B

    .prologue
    .line 96
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
