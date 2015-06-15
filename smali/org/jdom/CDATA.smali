.class public Lorg/jdom/CDATA;
.super Lorg/jdom/Text;
.source "CDATA.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: CDATA.java,v $ $Revision: 1.32 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/jdom/Text;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/jdom/Text;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lorg/jdom/CDATA;->setText(Ljava/lang/String;)Lorg/jdom/Text;

    .line 97
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lorg/jdom/CDATA;->value:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_2

    .line 152
    move-object v1, p1

    .line 163
    .local v1, "tmpValue":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lorg/jdom/Verifier;->checkCDATASection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 165
    new-instance v2, Lorg/jdom/IllegalDataException;

    const-string v3, "CDATA section"

    invoke-direct {v2, p1, v3, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 154
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "tmpValue":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/jdom/CDATA;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tmpValue":Ljava/lang/String;
    goto :goto_1

    .line 168
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Lorg/jdom/CDATA;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public append(Lorg/jdom/Text;)V
    .locals 1
    .param p1, "text"    # Lorg/jdom/Text;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/CDATA;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Text;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lorg/jdom/CDATA;->value:Ljava/lang/String;

    .line 126
    :goto_0
    return-object p0

    .line 119
    :cond_1
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCDATASection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 121
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "CDATA section"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_2
    iput-object p1, p0, Lorg/jdom/CDATA;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[CDATA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom/CDATA;->getText()Ljava/lang/String;

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
