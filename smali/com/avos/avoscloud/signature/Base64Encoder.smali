.class public Lcom/avos/avoscloud/signature/Base64Encoder;
.super Ljava/io/FilterOutputStream;
.source "Base64Encoder.java"


# static fields
.field private static final chars:[C


# instance fields
.field private carryOver:I

.field private charCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    return-void

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

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "unencoded"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "bytes":[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 157
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    int-to-double v3, v3

    const-wide v5, 0x3ff5eb851eb851ecL    # 1.37

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 158
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/avos/avoscloud/signature/Base64Encoder;

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/signature/Base64Encoder;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .local v0, "encodedOut":Lcom/avos/avoscloud/signature/Base64Encoder;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/signature/Base64Encoder;->write([B)V

    .line 162
    invoke-virtual {v0}, Lcom/avos/avoscloud/signature/Base64Encoder;->close()V

    .line 164
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 166
    :goto_0
    return-object v3

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "ignored":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3d

    .line 121
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 122
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v0, v1, 0x3f

    .line 123
    .local v0, "lookup":I
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 124
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 125
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 131
    .end local v0    # "lookup":I
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 132
    return-void

    .line 126
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 127
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v0, v1, 0x3f

    .line 128
    .restart local v0    # "lookup":I
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 129
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-gez p1, :cond_0

    .line 65
    add-int/lit16 p1, p1, 0x100

    .line 69
    :cond_0
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_3

    .line 70
    shr-int/lit8 v0, p1, 0x2

    .line 71
    .local v0, "lookup":I
    and-int/lit8 v1, p1, 0x3

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    .line 72
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 90
    .end local v0    # "lookup":I
    :cond_1
    :goto_0
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    .line 93
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x39

    if-nez v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 96
    :cond_2
    return-void

    .line 76
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 77
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    and-int/lit8 v0, v1, 0x3f

    .line 78
    .restart local v0    # "lookup":I
    and-int/lit8 v1, p1, 0xf

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    .line 79
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 83
    .end local v0    # "lookup":I
    :cond_4
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 84
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x6

    add-int/2addr v1, v2

    and-int/lit8 v0, v1, 0x3f

    .line 85
    .restart local v0    # "lookup":I
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 86
    and-int/lit8 v0, p1, 0x3f

    .line 87
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 109
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/signature/Base64Encoder;->write(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method
