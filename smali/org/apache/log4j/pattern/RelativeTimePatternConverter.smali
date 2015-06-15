.class public Lorg/apache/log4j/pattern/RelativeTimePatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;
    }
.end annotation


# instance fields
.field private lastTimestamp:Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "Time"

    const-string v1, "time"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;->lastTimestamp:Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/RelativeTimePatternConverter;
    .locals 1

    new-instance v0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 4

    iget-wide v0, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    iget-object v2, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;->lastTimestamp:Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    invoke-virtual {v2, v0, v1, p2}, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->format(JLjava/lang/StringBuffer;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/log4j/spi/LoggingEvent;->getStartTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;-><init>(JLjava/lang/String;)V

    iput-object v3, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;->lastTimestamp:Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    :cond_0
    return-void
.end method
