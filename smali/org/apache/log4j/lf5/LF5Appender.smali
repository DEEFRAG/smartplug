.class public Lorg/apache/log4j/lf5/LF5Appender;
.super Lorg/apache/log4j/AppenderSkeleton;


# static fields
.field protected static _defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field protected static _finalizer:Lorg/apache/log4j/lf5/AppenderFinalizer;


# instance fields
.field protected _logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultInstance()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/LF5Appender;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    :cond_0
    return-void
.end method

.method protected static declared-synchronized getDefaultInstance()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .locals 4

    const-class v1, Lorg/apache/log4j/lf5/LF5Appender;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLog4JLevels()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;-><init>(Ljava/util/List;)V

    sput-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    new-instance v0, Lorg/apache/log4j/lf5/AppenderFinalizer;

    sget-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {v0, v2}, Lorg/apache/log4j/lf5/AppenderFinalizer;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    sput-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_finalizer:Lorg/apache/log4j/lf5/AppenderFinalizer;

    sget-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorWidth()I

    move-result v2

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFrameSize(II)V

    sget-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(I)V

    sget-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->show()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getDefaultMonitorHeight()I
    .locals 1

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getDefaultMonitorWidth()I
    .locals 1

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getScreenHeight()I
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x258

    goto :goto_0
.end method

.method protected static getScreenWidth()I
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x320

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/log4j/lf5/LF5Appender;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/LF5Appender;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 9

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/log4j/Priority;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v7

    new-instance v8, Lorg/apache/log4j/lf5/Log4JLogRecord;

    invoke-direct {v8}, Lorg/apache/log4j/lf5/Log4JLogRecord;-><init>()V

    invoke-virtual {v8, v0}, Lorg/apache/log4j/lf5/LogRecord;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lorg/apache/log4j/lf5/LogRecord;->setMessage(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/apache/log4j/lf5/LogRecord;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Lorg/apache/log4j/lf5/LogRecord;->setMillis(J)V

    invoke-virtual {v8, v3}, Lorg/apache/log4j/lf5/LogRecord;->setThreadDescription(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v8, v2}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setThrownStackTrace(Lorg/apache/log4j/spi/ThrowableInformation;)V

    :cond_0
    :try_start_0
    invoke-static {v4}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, v8}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, ""

    invoke-virtual {v8, v0}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v8, v0}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    goto :goto_1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public equals(Lorg/apache/log4j/lf5/LF5Appender;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LF5Appender;->getLogBrokerMonitor()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogBrokerMonitor()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCallSystemExitOnClose(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setCallSystemExitOnClose(Z)V

    return-void
.end method

.method public setMaxNumberOfRecords(I)V
    .locals 1

    sget-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setMaxNumberOfLogRecords(I)V

    return-void
.end method
