.class public final Lorg/apache/log4j/spi/NOPLogger;
.super Lorg/apache/log4j/Logger;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/spi/NOPLoggerRepository;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/apache/log4j/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    sget-object v0, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    iput-object v0, p0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    iput-object p0, p0, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/log4j/Appender;)V
    .locals 0

    return-void
.end method

.method public assertLog(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 0

    return-void
.end method

.method closeNestedAppenders()V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public getAllAppenders()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChainedPriority()Lorg/apache/log4j/Priority;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/spi/NOPLogger;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveLevel()Lorg/apache/log4j/Level;
    .locals 1

    sget-object v0, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabledFor(Lorg/apache/log4j/Priority;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l7dlog(Lorg/apache/log4j/Priority;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public l7dlog(Lorg/apache/log4j/Priority;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public log(Lorg/apache/log4j/Priority;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public log(Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public removeAllAppenders()V
    .locals 0

    return-void
.end method

.method public removeAppender(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeAppender(Lorg/apache/log4j/Appender;)V
    .locals 0

    return-void
.end method

.method public setLevel(Lorg/apache/log4j/Level;)V
    .locals 0

    return-void
.end method

.method public setPriority(Lorg/apache/log4j/Priority;)V
    .locals 0

    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
