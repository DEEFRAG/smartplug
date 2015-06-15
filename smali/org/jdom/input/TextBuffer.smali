.class Lorg/jdom/input/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: TextBuffer.java,v $ $Revision: 1.10 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"


# instance fields
.field private array:[C

.field private arraySize:I

.field private prefixString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jdom/input/TextBuffer;->array:[C

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    .line 99
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6
    .param p1, "csize"    # I

    .prologue
    const/4 v5, 0x0

    .line 175
    iget-object v3, p0, Lorg/jdom/input/TextBuffer;->array:[C

    array-length v0, v3

    .line 176
    .local v0, "capacity":I
    if-le p1, v0, :cond_1

    .line 177
    iget-object v2, p0, Lorg/jdom/input/TextBuffer;->array:[C

    .line 178
    .local v2, "old":[C
    move v1, v0

    .line 179
    .local v1, "nsize":I
    :goto_0
    if-le p1, v1, :cond_0

    .line 180
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    goto :goto_0

    .line 182
    :cond_0
    new-array v3, v1, [C

    iput-object v3, p0, Lorg/jdom/input/TextBuffer;->array:[C

    .line 183
    iget-object v3, p0, Lorg/jdom/input/TextBuffer;->array:[C

    iget v4, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .end local v1    # "nsize":I
    .end local v2    # "old":[C
    :cond_1
    return-void
.end method


# virtual methods
.method append([CII)V
    .locals 2
    .param p1, "source"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    iget v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lorg/jdom/input/TextBuffer;->ensureCapacity(I)V

    .line 110
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->array:[C

    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    goto :goto_0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    .line 129
    return-void
.end method

.method isAllWhitespace()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v4, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 148
    :cond_1
    :goto_0
    return v2

    .line 136
    :cond_2
    iget-object v4, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 137
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 138
    iget-object v4, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    if-ge v0, v4, :cond_4

    .line 144
    iget-object v4, p0, Lorg/jdom/input/TextBuffer;->array:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 148
    goto :goto_0
.end method

.method size()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    iget-object v1, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 154
    const-string v0, ""

    .line 170
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const-string v0, ""

    .line 158
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    if-nez v1, :cond_1

    .line 160
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v2, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/TextBuffer;->array:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
