.class public final Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;


# instance fields
.field private final lineSep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "Line Sep"

    const-string v1, "lineSep"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->lineSep:Ljava/lang/String;

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;
    .locals 1

    sget-object v0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->lineSep:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->lineSep:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
