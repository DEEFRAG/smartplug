.class public Lorg/apache/log4j/EnhancedPatternLayout;
.super Lorg/apache/log4j/Layout;


# static fields
.field public static final DEFAULT_CONVERSION_PATTERN:Ljava/lang/String; = "%m%n"

.field public static final PATTERN_RULE_REGISTRY:Ljava/lang/String; = "PATTERN_RULE_REGISTRY"

.field public static final TTCC_CONVERSION_PATTERN:Ljava/lang/String; = "%r [%t] %p %c %x - %m%n"


# instance fields
.field protected final BUF_SIZE:I

.field protected final MAX_CAPACITY:I

.field private conversionPattern:Ljava/lang/String;

.field private handlesExceptions:Z

.field private head:Lorg/apache/log4j/helpers/PatternConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "%m%n"

    invoke-direct {p0, v0}, Lorg/apache/log4j/EnhancedPatternLayout;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/Layout;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->BUF_SIZE:I

    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->MAX_CAPACITY:I

    iput-object p1, p0, Lorg/apache/log4j/EnhancedPatternLayout;->conversionPattern:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "%m%n"

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/log4j/EnhancedPatternLayout;->createPatternParser(Ljava/lang/String;)Lorg/apache/log4j/helpers/PatternParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/PatternParser;->parse()Lorg/apache/log4j/helpers/PatternConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    instance-of v0, v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    check-cast v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    invoke-virtual {v0}, Lorg/apache/log4j/pattern/BridgePatternConverter;->ignoresThrowable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    goto :goto_1
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    return-void
.end method

.method protected createPatternParser(Ljava/lang/String;)Lorg/apache/log4j/helpers/PatternParser;
    .locals 1

    new-instance v0, Lorg/apache/log4j/pattern/BridgePatternParser;

    invoke-direct {v0, p1}, Lorg/apache/log4j/pattern/BridgePatternParser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, p1}, Lorg/apache/log4j/helpers/PatternConverter;->format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V

    iget-object v0, v0, Lorg/apache/log4j/helpers/PatternConverter;->next:Lorg/apache/log4j/helpers/PatternConverter;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversionPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->conversionPattern:Ljava/lang/String;

    return-object v0
.end method

.method public ignoresThrowable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConversionPattern(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/apache/log4j/helpers/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->conversionPattern:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->conversionPattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/EnhancedPatternLayout;->createPatternParser(Ljava/lang/String;)Lorg/apache/log4j/helpers/PatternParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/PatternParser;->parse()Lorg/apache/log4j/helpers/PatternConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    instance-of v0, v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    check-cast v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    invoke-virtual {v0}, Lorg/apache/log4j/pattern/BridgePatternConverter;->ignoresThrowable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    goto :goto_1
.end method
