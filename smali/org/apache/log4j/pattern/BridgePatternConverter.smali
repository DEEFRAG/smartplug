.class public final Lorg/apache/log4j/pattern/BridgePatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;


# instance fields
.field private handlesExceptions:Z

.field private patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

.field private patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/helpers/PatternConverter;-><init>()V

    iput-object v4, p0, Lorg/apache/log4j/helpers/PatternConverter;->next:Lorg/apache/log4j/helpers/PatternConverter;

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->handlesExceptions:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/apache/log4j/pattern/PatternParser;->getPatternLayoutRules()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, v1, v2, v4, v3}, Lorg/apache/log4j/pattern/PatternParser;->parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    iput-object v3, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/log4j/pattern/FormattingInfo;

    iput-object v3, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    check-cast v0, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    aput-object v0, v4, v1

    iget-boolean v0, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->handlesExceptions:Z

    iget-object v4, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;->handlesThrowable()Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->handlesExceptions:Z

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/pattern/FormattingInfo;

    aput-object v0, v4, v1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    new-instance v4, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    const-string v5, ""

    invoke-direct {v4, v5}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method protected convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/pattern/BridgePatternConverter;->format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2, p1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;->format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V

    iget-object v2, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1}, Lorg/apache/log4j/pattern/FormattingInfo;->format(ILjava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ignoresThrowable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->handlesExceptions:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
