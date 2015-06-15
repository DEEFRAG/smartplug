.class public Lcom/avos/avoscloud/signature/Base64Decoder;
.super Ljava/io/FilterInputStream;
.source "Base64Decoder.java"


# static fields
.field private static final chars:[C

.field private static final ints:[I


# instance fields
.field private carryOver:I

.field private charCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    .line 33
    new-array v1, v3, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/avos/avoscloud/signature/Base64Decoder;->chars:[C

    .line 39
    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Lcom/avos/avoscloud/signature/Base64Decoder;->ints:[I

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 42
    sget-object v1, Lcom/avos/avoscloud/signature/Base64Decoder;->ints:[I

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Decoder;->chars:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void

    .line 33
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/avos/avoscloud/signature/Base64Decoder;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decodeToBytes(Ljava/lang/String;)[B
    .locals 10
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "bytes":[B
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 168
    :goto_0
    new-instance v4, Lcom/avos/avoscloud/signature/Base64Decoder;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Lcom/avos/avoscloud/signature/Base64Decoder;-><init>(Ljava/io/InputStream;)V

    .line 170
    .local v4, "in":Lcom/avos/avoscloud/signature/Base64Decoder;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    array-length v6, v1

    int-to-double v6, v6

    const-wide v8, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 173
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x1000

    :try_start_1
    new-array v0, v6, [B

    .line 175
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v4, v0}, Lcom/avos/avoscloud/signature/Base64Decoder;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 176
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 181
    .end local v0    # "buf":[B
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v3

    .line 182
    .local v3, "ignored":Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v3    # "ignored":Ljava/io/IOException;
    :goto_2
    return-object v6

    .line 178
    .restart local v0    # "buf":[B
    .restart local v2    # "bytesRead":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 180
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_2

    .line 166
    .end local v0    # "buf":[B
    .end local v2    # "bytesRead":I
    .end local v4    # "in":Lcom/avos/avoscloud/signature/Base64Decoder;
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    array-length v4, p0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 188
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Usage: java Base64Decoder fileToDecode"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v2, 0x0

    .line 194
    .local v2, "decoder":Lcom/avos/avoscloud/signature/Base64Decoder;
    :try_start_0
    new-instance v3, Lcom/avos/avoscloud/signature/Base64Decoder;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/avos/avoscloud/signature/Base64Decoder;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    .end local v2    # "decoder":Lcom/avos/avoscloud/signature/Base64Decoder;
    .local v3, "decoder":Lcom/avos/avoscloud/signature/Base64Decoder;
    const/16 v4, 0x1000

    :try_start_1
    new-array v0, v4, [B

    .line 197
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/signature/Base64Decoder;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 198
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/PrintStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 201
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "decoder":Lcom/avos/avoscloud/signature/Base64Decoder;
    .restart local v2    # "decoder":Lcom/avos/avoscloud/signature/Base64Decoder;
    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/avos/avoscloud/signature/Base64Decoder;->close()V

    :cond_2
    throw v4

    .end local v2    # "decoder":Lcom/avos/avoscloud/signature/Base64Decoder;
    .restart local v0    # "buf":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "decoder":Lcom/avos/avoscloud/signature/Base64Decoder;
    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/avos/avoscloud/signature/Base64Decoder;->close()V

    goto :goto_0

    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    .end local v3    # "decoder":Lcom/avos/avoscloud/signature/Base64Decoder;
    .restart local v2    # "decoder":Lcom/avos/avoscloud/signature/Base64Decoder;
    :catchall_1
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 69
    .local v2, "x":I
    if-ne v2, v0, :cond_2

    .line 110
    :cond_1
    :goto_0
    return v0

    .line 72
    :cond_2
    int-to-char v3, v2

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    iget v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->charCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->charCount:I

    .line 76
    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 81
    sget-object v3, Lcom/avos/avoscloud/signature/Base64Decoder;->ints:[I

    aget v2, v3, v2

    .line 84
    iget v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->charCount:I

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v1, v3, 0x4

    .line 87
    .local v1, "mode":I
    if-nez v1, :cond_3

    .line 88
    and-int/lit8 v3, v2, 0x3f

    iput v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    .line 89
    invoke-virtual {p0}, Lcom/avos/avoscloud/signature/Base64Decoder;->read()I

    move-result v0

    goto :goto_0

    .line 93
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 94
    iget v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v4, v2, 0x4

    add-int/2addr v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 95
    .local v0, "decoded":I
    and-int/lit8 v3, v2, 0xf

    iput v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    goto :goto_0

    .line 100
    .end local v0    # "decoded":I
    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 101
    iget v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 102
    .restart local v0    # "decoded":I
    and-int/lit8 v3, v2, 0x3

    iput v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    goto :goto_0

    .line 106
    .end local v0    # "decoded":I
    :cond_5
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 107
    iget v3, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v2

    and-int/lit16 v0, v3, 0xff

    .line 108
    .restart local v0    # "decoded":I
    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 124
    array-length v3, p1

    add-int v4, p3, p2

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 125
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The input buffer is too small: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes requested starting at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while the buffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes long."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/avos/avoscloud/signature/Base64Decoder;->read()I

    move-result v1

    .line 134
    .local v1, "x":I
    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    move v0, v2

    .line 141
    .end local v0    # "i":I
    .end local v1    # "x":I
    :cond_1
    return v0

    .line 136
    .restart local v0    # "i":I
    .restart local v1    # "x":I
    :cond_2
    if-eq v1, v2, :cond_1

    .line 139
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
