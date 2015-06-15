.class public Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/log4j/spi/ErrorHandler;


# instance fields
.field final ERROR_PREFIX:Ljava/lang/String;

.field final WARN_PREFIX:Ljava/lang/String;

.field firstTime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "log4j warning: "

    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->WARN_PREFIX:Ljava/lang/String;

    const-string v0, "log4j error: "

    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->ERROR_PREFIX:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V
    .locals 1

    instance-of v0, p2, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    :cond_2
    return-void
.end method

.method public setAppender(Lorg/apache/log4j/Appender;)V
    .locals 0

    return-void
.end method

.method public setBackupAppender(Lorg/apache/log4j/Appender;)V
    .locals 0

    return-void
.end method

.method public setLogger(Lorg/apache/log4j/Logger;)V
    .locals 0

    return-void
.end method
