.class public final Lorg/apache/log4j/pattern/LoggerPatternConverter;
.super Lorg/apache/log4j/pattern/NamePatternConverter;


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/LoggerPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/log4j/pattern/LoggerPatternConverter;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LoggerPatternConverter;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 2

    const-string v0, "Logger"

    const-string v1, "logger"

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/log4j/pattern/NamePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/LoggerPatternConverter;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LoggerPatternConverter;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/LoggerPatternConverter;-><init>([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/pattern/NamePatternConverter;->abbreviate(ILjava/lang/StringBuffer;)V

    return-void
.end method
