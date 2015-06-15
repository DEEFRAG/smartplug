.class public Lorg/jdom/output/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/output/Format$TextMode;,
        Lorg/jdom/output/Format$DefaultEscapeStrategy;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Format.java,v $ $Revision: 1.13 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $"

.field private static final STANDARD_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final STANDARD_INDENT:Ljava/lang/String; = "  "

.field private static final STANDARD_LINE_SEPARATOR:Ljava/lang/String; = "\r\n"

.field static class$java$lang$String:Ljava/lang/Class;


# instance fields
.field encoding:Ljava/lang/String;

.field escapeStrategy:Lorg/jdom/output/EscapeStrategy;

.field expandEmptyElements:Z

.field ignoreTrAXEscapingPIs:Z

.field indent:Ljava/lang/String;

.field lineSeparator:Ljava/lang/String;

.field mode:Lorg/jdom/output/Format$TextMode;

.field omitDeclaration:Z

.field omitEncoding:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    .line 138
    const-string v0, "\r\n"

    iput-object v0, p0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    .line 141
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    .line 145
    iput-boolean v1, p0, Lorg/jdom/output/Format;->omitDeclaration:Z

    .line 149
    iput-boolean v1, p0, Lorg/jdom/output/Format;->omitEncoding:Z

    .line 153
    iput-boolean v1, p0, Lorg/jdom/output/Format;->expandEmptyElements:Z

    .line 157
    iput-boolean v1, p0, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    .line 160
    sget-object v0, Lorg/jdom/output/Format$TextMode;->PRESERVE:Lorg/jdom/output/Format$TextMode;

    iput-object v0, p0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    .line 163
    new-instance v0, Lorg/jdom/output/Format$DefaultEscapeStrategy;

    iget-object v1, p0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lorg/jdom/output/Format$DefaultEscapeStrategy;-><init>(Lorg/jdom/output/Format;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    .line 168
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 458
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCompactFormat()Lorg/jdom/output/Format;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lorg/jdom/output/Format;

    invoke-direct {v0}, Lorg/jdom/output/Format;-><init>()V

    .line 120
    .local v0, "f":Lorg/jdom/output/Format;
    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom/output/Format;->setTextMode(Lorg/jdom/output/Format$TextMode;)Lorg/jdom/output/Format;

    .line 121
    return-object v0
.end method

.method public static getPrettyFormat()Lorg/jdom/output/Format;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lorg/jdom/output/Format;

    invoke-direct {v0}, Lorg/jdom/output/Format;-><init>()V

    .line 104
    .local v0, "f":Lorg/jdom/output/Format;
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lorg/jdom/output/Format;->setIndent(Ljava/lang/String;)Lorg/jdom/output/Format;

    .line 105
    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom/output/Format;->setTextMode(Lorg/jdom/output/Format$TextMode;)Lorg/jdom/output/Format;

    .line 106
    return-object v0
.end method

.method public static getRawFormat()Lorg/jdom/output/Format;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lorg/jdom/output/Format;

    invoke-direct {v0}, Lorg/jdom/output/Format;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 420
    .local v1, "format":Lorg/jdom/output/Format;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/jdom/output/Format;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-object v1

    .line 422
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEscapeStrategy()Lorg/jdom/output/EscapeStrategy;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    return-object v0
.end method

.method public getExpandEmptyElements()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lorg/jdom/output/Format;->expandEmptyElements:Z

    return v0
.end method

.method public getIgnoreTrAXEscapingPIs()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitDeclaration()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lorg/jdom/output/Format;->omitDeclaration:Z

    return v0
.end method

.method public getOmitEncoding()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lorg/jdom/output/Format;->omitEncoding:Z

    return v0
.end method

.method public getTextMode()Lorg/jdom/output/Format$TextMode;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)Lorg/jdom/output/Format;
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    .line 403
    new-instance v0, Lorg/jdom/output/Format$DefaultEscapeStrategy;

    invoke-direct {v0, p0, p1}, Lorg/jdom/output/Format$DefaultEscapeStrategy;-><init>(Lorg/jdom/output/Format;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    .line 404
    return-object p0
.end method

.method public setEscapeStrategy(Lorg/jdom/output/EscapeStrategy;)Lorg/jdom/output/Format;
    .locals 0
    .param p1, "strategy"    # Lorg/jdom/output/EscapeStrategy;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    .line 178
    return-object p0
.end method

.method public setExpandEmptyElements(Z)Lorg/jdom/output/Format;
    .locals 0
    .param p1, "expandEmptyElements"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lorg/jdom/output/Format;->expandEmptyElements:Z

    .line 296
    return-object p0
.end method

.method public setIgnoreTrAXEscapingPIs(Z)V
    .locals 0
    .param p1, "ignoreTrAXEscapingPIs"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    .line 337
    return-void
.end method

.method public setIndent(Ljava/lang/String;)Lorg/jdom/output/Format;
    .locals 0
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    .line 381
    return-object p0
.end method

.method public setLineSeparator(Ljava/lang/String;)Lorg/jdom/output/Format;
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public setOmitDeclaration(Z)Lorg/jdom/output/Format;
    .locals 0
    .param p1, "omitDeclaration"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lorg/jdom/output/Format;->omitDeclaration:Z

    .line 273
    return-object p0
.end method

.method public setOmitEncoding(Z)Lorg/jdom/output/Format;
    .locals 0
    .param p1, "omitEncoding"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lorg/jdom/output/Format;->omitEncoding:Z

    .line 249
    return-object p0
.end method

.method public setTextMode(Lorg/jdom/output/Format$TextMode;)Lorg/jdom/output/Format;
    .locals 0
    .param p1, "mode"    # Lorg/jdom/output/Format$TextMode;

    .prologue
    .line 356
    iput-object p1, p0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    .line 357
    return-object p0
.end method
