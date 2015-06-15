.class public Lorg/apache/mina/filter/codec/textline/LineDelimiter;
.super Ljava/lang/Object;
.source "LineDelimiter.java"


# static fields
.field public static final AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final CRLF:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final DEFAULT:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final MAC:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final NUL:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final UNIX:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final WINDOWS:Lorg/apache/mina/filter/codec/textline/LineDelimiter;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 45
    .local v1, "out":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 46
    new-instance v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->DEFAULT:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 55
    new-instance v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 60
    new-instance v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v3, "\r\n"

    invoke-direct {v2, v3}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->CRLF:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 65
    new-instance v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->UNIX:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 70
    sget-object v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->CRLF:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    sput-object v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->WINDOWS:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 75
    new-instance v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v3, "\r"

    invoke-direct {v2, v3}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->MAC:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 81
    new-instance v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v3, "\u0000"

    invoke-direct {v2, v3}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->NUL:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delimiter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 117
    if-ne p0, p1, :cond_0

    .line 118
    const/4 v1, 0x1

    .line 127
    :goto_0
    return v1

    .line 121
    :cond_0
    instance-of v1, p1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    if-nez v1, :cond_1

    .line 122
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 125
    check-cast v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 127
    .local v0, "that":Lorg/apache/mina/filter/codec/textline/LineDelimiter;
    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    iget-object v2, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const-string v2, "delimiter: auto"

    .line 146
    :goto_0
    return-object v2

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "delimiter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 142
    const-string v2, " 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
