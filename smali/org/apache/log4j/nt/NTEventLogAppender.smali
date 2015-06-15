.class public Lorg/apache/log4j/nt/NTEventLogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;


# instance fields
.field private _handle:I

.field private server:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "os.arch"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v2

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "NTEventLogAppender."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    const-string v0, "NTEventLogAppender"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amd64"

    aput-object v1, v0, v2

    const-string v1, "ia64"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "x86"

    aput-object v4, v0, v1

    goto :goto_0

    :catch_1
    move-exception v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "Log4j"

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Lorg/apache/log4j/TTCCLayout;

    invoke-direct {v0}, Lorg/apache/log4j/TTCCLayout;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    iput-object p3, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method private native deregisterEventSource(I)V
.end method

.method private native registerEventSource(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native reportEvent(ILjava/lang/String;I)V
.end method


# virtual methods
.method public activateOptions()V
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not register event source."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    goto :goto_0
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v0

    iget v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->reportEvent(ILjava/lang/String;I)V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public finalize()V
    .locals 1

    iget v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-direct {p0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->deregisterEventSource(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    return-void
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    return-void
.end method
