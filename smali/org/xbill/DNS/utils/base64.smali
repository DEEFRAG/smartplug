.class public Lorg/xbill/DNS/utils/base64;
.super Ljava/lang/Object;
.source "base64.java"


# static fields
.field private static final Base64:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatString([BILjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 71
    invoke-static {p0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 74
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int v3, v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    if-eqz p3, :cond_0

    .line 78
    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_0
    :goto_1
    add-int/2addr v0, p1

    goto :goto_0

    .line 81
    :cond_1
    add-int v3, v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)[B
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x3

    const/4 v1, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 96
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    .line 98
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 99
    aget-byte v5, v3, v0

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    aget-byte v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 103
    array-length v0, v5

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move-object v0, v2

    .line 142
    :goto_1
    return-object v0

    .line 107
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 108
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v0, v1

    .line 110
    :goto_2
    array-length v3, v5

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    if-ge v0, v3, :cond_9

    .line 111
    const/4 v3, 0x4

    new-array v7, v3, [S

    .line 112
    new-array v8, v13, [S

    move v3, v1

    .line 114
    :goto_3
    const/4 v9, 0x4

    if-ge v3, v9, :cond_3

    .line 115
    const-string v9, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    mul-int/lit8 v10, v0, 0x4

    add-int/2addr v10, v3

    aget-byte v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v7, v3

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 117
    :cond_3
    aget-short v3, v7, v1

    shl-int/lit8 v3, v3, 0x2

    aget-short v9, v7, v12

    shr-int/lit8 v9, v9, 0x4

    add-int/2addr v3, v9

    int-to-short v3, v3

    aput-short v3, v8, v1

    .line 118
    aget-short v3, v7, v11

    const/16 v9, 0x40

    if-ne v3, v9, :cond_4

    .line 119
    const/4 v3, -0x1

    aput-short v3, v8, v11

    aput-short v3, v8, v12

    .line 120
    aget-short v3, v7, v12

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_6

    move-object v0, v2

    .line 121
    goto :goto_1

    .line 123
    :cond_4
    aget-short v3, v7, v13

    const/16 v9, 0x40

    if-ne v3, v9, :cond_5

    .line 124
    aget-short v3, v7, v12

    shl-int/lit8 v3, v3, 0x4

    aget-short v9, v7, v11

    shr-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v8, v12

    .line 125
    const/4 v3, -0x1

    aput-short v3, v8, v11

    .line 126
    aget-short v3, v7, v11

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_6

    move-object v0, v2

    .line 127
    goto :goto_1

    .line 130
    :cond_5
    aget-short v3, v7, v12

    shl-int/lit8 v3, v3, 0x4

    aget-short v9, v7, v11

    shr-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v8, v12

    .line 131
    aget-short v3, v7, v11

    shl-int/lit8 v3, v3, 0x6

    aget-short v7, v7, v13

    add-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v8, v11

    :cond_6
    move v3, v1

    .line 135
    :goto_4
    if-ge v3, v13, :cond_8

    .line 136
    :try_start_0
    aget-short v7, v8, v3

    if-ltz v7, :cond_7

    .line 137
    aget-short v7, v8, v3

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 139
    :catch_0
    move-exception v3

    .line 110
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 142
    :cond_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 28
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    .line 30
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_6

    .line 31
    new-array v4, v10, [S

    .line 32
    const/4 v2, 0x4

    new-array v5, v2, [S

    move v2, v1

    .line 33
    :goto_1
    if-ge v2, v10, :cond_1

    .line 34
    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v6, v2

    array-length v7, p0

    if-ge v6, v7, :cond_0

    .line 35
    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v6, v2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v4, v2

    .line 33
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_0
    aput-short v11, v4, v2

    goto :goto_2

    .line 40
    :cond_1
    aget-short v2, v4, v1

    shr-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    aput-short v2, v5, v1

    .line 41
    aget-short v2, v4, v8

    if-ne v2, v11, :cond_2

    .line 42
    aget-short v2, v4, v1

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    aput-short v2, v5, v8

    .line 45
    :goto_3
    aget-short v2, v4, v8

    if-ne v2, v11, :cond_3

    .line 46
    const/16 v2, 0x40

    aput-short v2, v5, v10

    aput-short v2, v5, v9

    :goto_4
    move v2, v1

    .line 55
    :goto_5
    const/4 v4, 0x4

    if-ge v2, v4, :cond_5

    .line 56
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    aget-short v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 44
    :cond_2
    aget-short v2, v4, v1

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-short v6, v4, v8

    shr-int/lit8 v6, v6, 0x4

    add-int/2addr v2, v6

    int-to-short v2, v2

    aput-short v2, v5, v8

    goto :goto_3

    .line 47
    :cond_3
    aget-short v2, v4, v9

    if-ne v2, v11, :cond_4

    .line 48
    aget-short v2, v4, v8

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    aput-short v2, v5, v9

    .line 49
    const/16 v2, 0x40

    aput-short v2, v5, v10

    goto :goto_4

    .line 52
    :cond_4
    aget-short v2, v4, v8

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-short v6, v4, v9

    shr-int/lit8 v6, v6, 0x6

    add-int/2addr v2, v6

    int-to-short v2, v2

    aput-short v2, v5, v9

    .line 53
    aget-short v2, v4, v9

    and-int/lit8 v2, v2, 0x3f

    int-to-short v2, v2

    aput-short v2, v5, v10

    goto :goto_4

    .line 30
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 58
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
