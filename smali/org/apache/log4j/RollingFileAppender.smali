.class public Lorg/apache/log4j/RollingFileAppender;
.super Lorg/apache/log4j/FileAppender;


# instance fields
.field protected maxBackupIndex:I

.field protected maxFileSize:J

.field private nextRollover:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/log4j/FileAppender;-><init>()V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    return-void
.end method


# virtual methods
.method public getMaxBackupIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    return v0
.end method

.method public getMaximumFileSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    return-wide v0
.end method

.method public rollOver()V
    .locals 7

    const/16 v6, 0x2e

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    check-cast v0, Lorg/apache/log4j/helpers/CountingQuietWriter;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/CountingQuietWriter;->getCount()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "rolling over count="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget-wide v4, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "maxBackupIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    if-lez v0, :cond_9

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_0
    iget v2, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-lt v2, v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Renaming file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->closeFile()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Renaming file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v4, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/apache/log4j/RollingFileAppender;->setFile(Ljava/lang/String;ZZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v3, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setFile(Ljava/lang/String;ZZI)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    return-void

    :catch_0
    move-exception v0

    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "setFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", true) call failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "setFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", false) call failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method public declared-synchronized setFile(Ljava/lang/String;ZZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v1, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-super {p0, p1, p2, v0, v1}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V

    if-eqz p2, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    check-cast v0, Lorg/apache/log4j/helpers/CountingQuietWriter;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/helpers/CountingQuietWriter;->setCount(J)V
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

.method public setMaxBackupIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    return-void
.end method

.method public setMaxFileSize(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->toFileSize(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    return-void
.end method

.method public setMaximumFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    return-void
.end method

.method protected setQWForFiles(Ljava/io/Writer;)V
    .locals 2

    new-instance v0, Lorg/apache/log4j/helpers/CountingQuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/helpers/CountingQuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    return-void
.end method

.method protected subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/log4j/WriterAppender;->subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    iget-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    check-cast v0, Lorg/apache/log4j/helpers/CountingQuietWriter;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/CountingQuietWriter;->getCount()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/log4j/RollingFileAppender;->rollOver()V

    :cond_0
    return-void
.end method
