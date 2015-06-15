.class public Lorg/videolan/vlc/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/Util/Strings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static StartsWith([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 37
    array-length v3, p0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 40
    :goto_1
    return v1

    .line 37
    :cond_0
    aget-object v0, p0, v2

    .line 38
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    const/4 v1, 0x1

    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static formatRateString(F)Ljava/lang/String;
    .locals 5
    .param p0, "rate"    # F

    .prologue
    .line 105
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2fx"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millisToString(J)Ljava/lang/String;
    .locals 1
    .param p0, "millis"    # J

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/videolan/vlc/util/Strings;->millisToString(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static millisToString(JZ)Ljava/lang/String;
    .locals 12
    .param p0, "millis"    # J
    .param p2, "text"    # Z

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 64
    cmp-long v6, p0, v10

    if-gez v6, :cond_0

    const/4 v3, 0x1

    .line 65
    .local v3, "negative":Z
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 67
    const-wide/16 v6, 0x3e8

    div-long/2addr p0, v6

    .line 68
    rem-long v6, p0, v8

    long-to-int v4, v6

    .line 69
    .local v4, "sec":I
    div-long/2addr p0, v8

    .line 70
    rem-long v6, p0, v8

    long-to-int v2, v6

    .line 71
    .local v2, "min":I
    div-long/2addr p0, v8

    .line 72
    long-to-int v1, p0

    .line 75
    .local v1, "hours":I
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 76
    .local v0, "format":Ljava/text/DecimalFormat;
    const-string v6, "00"

    invoke-virtual {v0, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 77
    if-eqz p2, :cond_6

    .line 78
    cmp-long v6, p0, v10

    if-lez v6, :cond_2

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const-string v6, "-"

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "min"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "time":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 64
    .end local v0    # "format":Ljava/text/DecimalFormat;
    .end local v1    # "hours":I
    .end local v2    # "min":I
    .end local v3    # "negative":Z
    .end local v4    # "sec":I
    .end local v5    # "time":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 79
    .restart local v0    # "format":Ljava/text/DecimalFormat;
    .restart local v1    # "hours":I
    .restart local v2    # "min":I
    .restart local v3    # "negative":Z
    .restart local v4    # "sec":I
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 80
    :cond_2
    if-lez v2, :cond_4

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    const-string v6, "-"

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "min"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "time":Ljava/lang/String;
    goto :goto_2

    .end local v5    # "time":Ljava/lang/String;
    :cond_3
    const-string v6, ""

    goto :goto_3

    .line 83
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    const-string v6, "-"

    :goto_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    .restart local v5    # "time":Ljava/lang/String;
    goto :goto_2

    .line 83
    .end local v5    # "time":Ljava/lang/String;
    :cond_5
    const-string v6, ""

    goto :goto_4

    .line 86
    :cond_6
    cmp-long v6, p0, v10

    if-lez v6, :cond_8

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    const-string v6, "-"

    :goto_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "time":Ljava/lang/String;
    goto :goto_2

    .end local v5    # "time":Ljava/lang/String;
    :cond_7
    const-string v6, ""

    goto :goto_5

    .line 89
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_9

    const-string v6, "-"

    :goto_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "time":Ljava/lang/String;
    goto/16 :goto_2

    .end local v5    # "time":Ljava/lang/String;
    :cond_9
    const-string v6, ""

    goto :goto_6
.end method

.method public static millisToText(J)Ljava/lang/String;
    .locals 1
    .param p0, "millis"    # J

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/videolan/vlc/util/Strings;->millisToString(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 98
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 33
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
