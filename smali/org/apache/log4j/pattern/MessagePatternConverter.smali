.class public final Lorg/apache/log4j/pattern/MessagePatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/MessagePatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/log4j/pattern/MessagePatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/MessagePatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/MessagePatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/MessagePatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "Message"

    const-string v1, "message"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/MessagePatternConverter;
    .locals 1

    sget-object v0, Lorg/apache/log4j/pattern/MessagePatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/MessagePatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
