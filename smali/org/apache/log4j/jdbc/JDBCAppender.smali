.class public Lorg/apache/log4j/jdbc/JDBCAppender;
.super Lorg/apache/log4j/AppenderSkeleton;

# interfaces
.implements Lorg/apache/log4j/Appender;


# instance fields
.field protected buffer:Ljava/util/ArrayList;

.field protected bufferSize:I

.field protected connection:Ljava/sql/Connection;

.field protected databasePassword:Ljava/lang/String;

.field protected databaseURL:Ljava/lang/String;

.field protected databaseUser:Ljava/lang/String;

.field private locationInfo:Z

.field protected removes:Ljava/util/ArrayList;

.field protected sqlStatement:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    const-string v0, "jdbc:odbc:myDB"

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    const-string v0, "me"

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    const-string v0, "mypassword"

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->sqlStatement:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->locationInfo:Z

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    iget-boolean v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->locationInfo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->flushBuffer()V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->flushBuffer()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Error closing connection"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method protected closeConnection(Ljava/sql/Connection;)V
    .locals 0

    return-void
.end method

.method protected execute(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/jdbc/JDBCAppender;->closeConnection(Ljava/sql/Connection;)V

    return-void

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    :cond_0
    throw v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->close()V

    return-void
.end method

.method public flushBuffer()V
    .locals 5

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/jdbc/JDBCAppender;->getLogStatement(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/jdbc/JDBCAppender;->execute(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v3, "Failed to excute sql"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    return v0
.end method

.method protected getConnection()Ljava/sql/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Ljava/sql/DriverManager;->getDrivers()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sun.jdbc.odbc.JdbcOdbcDriver"

    invoke-virtual {p0, v0}, Lorg/apache/log4j/jdbc/JDBCAppender;->setDriver(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->locationInfo:Z

    return v0
.end method

.method protected getLogStatement(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->sqlStatement:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBufferSize(I)V
    .locals 2

    iput p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    return-void
.end method

.method public setDriver(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Failed to load driver"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method public setLocationInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->locationInfo:Z

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    return-void
.end method

.method public setSql(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->sqlStatement:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/log4j/PatternLayout;

    invoke-direct {v0, p1}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/AppenderSkeleton;->setLayout(Lorg/apache/log4j/Layout;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/PatternLayout;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/PatternLayout;->setConversionPattern(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    return-void
.end method
