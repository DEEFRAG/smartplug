.class public Lorg/apache/log4j/net/SocketHubAppender;
.super Lorg/apache/log4j/AppenderSkeleton;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
    }
.end annotation


# static fields
.field static final DEFAULT_PORT:I = 0x11d0

.field public static final ZONE:Ljava/lang/String; = "_log4j_obj_tcpaccept_appender.local."


# instance fields
.field private advertiseViaMulticastDNS:Z

.field private application:Ljava/lang/String;

.field private buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

.field private locationInfo:Z

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

.field private zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    return-void
.end method

.method static access$000(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    return-object v0
.end method

.method private startServer()V
    .locals 3

    new-instance v0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    iget v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;-><init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/log4j/net/ZeroConfSupport;

    const-string v1, "_log4j_obj_tcpaccept_appender.local."

    iget v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/net/ZeroConfSupport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->advertise()V

    :cond_0
    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "application"

    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/log4j/spi/LoggingEvent;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->add(Lorg/apache/log4j/spi/LoggingEvent;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ObjectOutputStream;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    const-string v0, "dropped connection"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "stopping ServerSocket"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->stopMonitor()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    const-string v0, "closing client connections"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ObjectOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "could not close oos."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "could not close oos."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "closing SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->unadvertise()V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->cleanUp()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/CyclicBuffer;->getMaxSize()I

    move-result v0

    goto :goto_0
.end method

.method public getLocationInfo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    return v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    return v0
.end method

.method public isAdvertiseViaMulticastDNS()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    return v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAdvertiseViaMulticastDNS(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    return-void
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    new-instance v0, Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-direct {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    return-void
.end method
