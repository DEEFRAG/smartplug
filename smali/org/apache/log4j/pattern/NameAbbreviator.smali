.class public abstract Lorg/apache/log4j/pattern/NameAbbreviator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$NOPAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;
    }
.end annotation


# static fields
.field private static final DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/log4j/pattern/NameAbbreviator$NOPAbbreviator;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/NameAbbreviator$NOPAbbreviator;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbbreviator(Ljava/lang/String;)Lorg/apache/log4j/pattern/NameAbbreviator;
    .locals 9

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    new-instance v0, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;

    invoke-direct {v0, v1}, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;

    neg-int v1, v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;-><init>(I)V

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    if-ltz v0, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_7

    const v3, 0x7fffffff

    add-int/lit8 v2, v0, 0x1

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_5

    move v2, v1

    :cond_5
    :goto_4
    new-instance v6, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    invoke-direct {v6, v3, v2}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;-><init>(IC)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "."

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    :cond_6
    new-instance v0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;

    invoke-direct {v0, v5}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_8

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v8, :cond_8

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v2, -0x30

    add-int/lit8 v2, v0, 0x1

    goto :goto_3

    :cond_8
    move v2, v0

    move v3, v1

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    sget-object v0, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    goto/16 :goto_0

    :cond_b
    move v2, v1

    goto :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method public static getDefaultAbbreviator()Lorg/apache/log4j/pattern/NameAbbreviator;
    .locals 1

    sget-object v0, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    return-object v0
.end method


# virtual methods
.method public abstract abbreviate(ILjava/lang/StringBuffer;)V
.end method
