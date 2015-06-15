.class public Lorg/jdom/Text;
.super Lorg/jdom/Content;
.source "Text.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Text.java,v $ $Revision: 1.25 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field protected value:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 99
    invoke-virtual {p0, p1}, Lorg/jdom/Text;->setText(Ljava/lang/String;)Lorg/jdom/Text;

    .line 100
    return-void
.end method

.method public static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    const-string v6, ""

    .line 167
    :goto_0
    return-object v6

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 149
    .local v0, "c":[C
    array-length v6, v0

    new-array v2, v6, [C

    .line 150
    .local v2, "n":[C
    const/4 v5, 0x1

    .line 151
    .local v5, "white":Z
    const/4 v3, 0x0

    .line 152
    .local v3, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 153
    const-string v6, " \t\n\r"

    aget-char v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 154
    if-nez v5, :cond_1

    .line 155
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    const/16 v6, 0x20

    aput-char v6, v2, v3

    .line 156
    const/4 v5, 0x1

    move v3, v4

    .line 152
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    aget-char v6, v0, v1

    aput-char v6, v2, v3

    .line 161
    const/4 v5, 0x0

    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_2

    .line 164
    :cond_3
    if-eqz v5, :cond_4

    if-lez v3, :cond_4

    .line 165
    add-int/lit8 v3, v3, -0x1

    .line 167
    :cond_4
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 210
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "character content"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_1
    const-string v1, ""

    if-ne p1, v1, :cond_2

    .line 214
    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public append(Lorg/jdom/Text;)V
    .locals 2
    .param p1, "text"    # Lorg/jdom/Text;

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Text;

    .line 267
    .local v0, "text":Lorg/jdom/Text;
    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    iput-object v1, v0, Lorg/jdom/Text;->value:Ljava/lang/String;

    .line 268
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTextNormalize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Text;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const-string v1, ""

    iput-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    .line 191
    :goto_0
    return-object p0

    .line 187
    :cond_0
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 188
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "character content"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_1
    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[Text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
