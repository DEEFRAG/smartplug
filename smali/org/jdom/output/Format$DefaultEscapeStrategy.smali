.class Lorg/jdom/output/Format$DefaultEscapeStrategy;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Lorg/jdom/output/EscapeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/output/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultEscapeStrategy"
.end annotation


# instance fields
.field private bits:I

.field canEncode:Ljava/lang/reflect/Method;

.field encoder:Ljava/lang/Object;

.field private final this$0:Lorg/jdom/output/Format;


# direct methods
.method public constructor <init>(Lorg/jdom/output/Format;Ljava/lang/String;)V
    .locals 9
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->this$0:Lorg/jdom/output/Format;

    .line 440
    const-string v5, "UTF-8"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "UTF-16"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    :cond_0
    const/16 v5, 0x10

    iput v5, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    .line 467
    :goto_0
    return-void

    .line 444
    :cond_1
    const-string v5, "ISO-8859-1"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Latin1"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 446
    :cond_2
    const/16 v5, 0x8

    iput v5, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    goto :goto_0

    .line 448
    :cond_3
    const-string v5, "US-ASCII"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ASCII"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 450
    :cond_4
    const/4 v5, 0x7

    iput v5, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    goto :goto_0

    .line 453
    :cond_5
    iput v6, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    .line 456
    :try_start_0
    const-string v5, "java.nio.charset.Charset"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 457
    .local v0, "charsetClass":Ljava/lang/Class;
    const-string v5, "java.nio.charset.CharsetEncoder"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 458
    .local v2, "encoderClass":Ljava/lang/Class;
    const-string v6, "forName"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v5, Lorg/jdom/output/Format;->class$java$lang$String:Ljava/lang/Class;

    if-nez v5, :cond_6

    const-string v5, "java.lang.String"

    invoke-static {v5}, Lorg/jdom/output/Format;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/jdom/output/Format;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v5, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 459
    .local v3, "forName":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 460
    .local v1, "charsetObj":Ljava/lang/Object;
    const-string v5, "newEncoder"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 461
    .local v4, "newEncoder":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->encoder:Ljava/lang/Object;

    .line 462
    const-string v5, "canEncode"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->canEncode:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 464
    .end local v0    # "charsetClass":Ljava/lang/Class;
    .end local v1    # "charsetObj":Ljava/lang/Object;
    .end local v2    # "encoderClass":Ljava/lang/Class;
    .end local v3    # "forName":Ljava/lang/reflect/Method;
    .end local v4    # "newEncoder":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 458
    .restart local v0    # "charsetClass":Ljava/lang/Class;
    .restart local v2    # "encoderClass":Ljava/lang/Class;
    :cond_6
    sget-object v5, Lorg/jdom/output/Format;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public shouldEscape(C)Z
    .locals 8
    .param p1, "ch"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    iget v3, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v2

    .line 473
    :cond_1
    iget v3, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 474
    const/16 v3, 0xff

    if-le p1, v3, :cond_0

    move v2, v1

    .line 475
    goto :goto_0

    .line 479
    :cond_2
    iget v3, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 480
    const/16 v3, 0x7f

    if-le p1, v3, :cond_0

    move v2, v1

    .line 481
    goto :goto_0

    .line 486
    :cond_3
    iget-object v3, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->canEncode:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->encoder:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 488
    :try_start_0
    iget-object v3, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->canEncode:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->encoder:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p1}, Ljava/lang/Character;-><init>(C)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 489
    .local v0, "val":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 491
    .end local v0    # "val":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
