.class public Lorg/apache/log4j/lf5/util/DateFormatManager;
.super Ljava/lang/Object;


# instance fields
.field private _dateFormat:Ljava/text/DateFormat;

.field private _locale:Ljava/util/Locale;

.field private _pattern:Ljava/lang/String;

.field private _timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    iput-object p3, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method private declared-synchronized configure()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDateFormatInstance()Ljava/text/DateFormat;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocale()Ljava/util/Locale;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutputFormat()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPattern()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeZone()Ljava/util/TimeZone;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setDateFormatInstance(Ljava/text/DateFormat;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocale(Ljava/util/Locale;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOutputFormat(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPattern(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
