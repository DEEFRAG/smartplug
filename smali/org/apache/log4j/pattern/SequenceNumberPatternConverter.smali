.class public Lorg/apache/log4j/pattern/SequenceNumberPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/SequenceNumberPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/log4j/pattern/SequenceNumberPatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/SequenceNumberPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/SequenceNumberPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/SequenceNumberPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "Sequence Number"

    const-string v1, "sn"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/SequenceNumberPatternConverter;
    .locals 1

    sget-object v0, Lorg/apache/log4j/pattern/SequenceNumberPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/SequenceNumberPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
