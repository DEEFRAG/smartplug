.class public Lorg/apache/log4j/lf5/util/LogFileParser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ATTRIBUTE_DELIMITER:Ljava/lang/String; = "[slf5s."

.field public static final CATEGORY_DELIMITER:Ljava/lang/String; = "[slf5s.CATEGORY]"

.field public static final DATE_DELIMITER:Ljava/lang/String; = "[slf5s.DATE]"

.field public static final LOCATION_DELIMITER:Ljava/lang/String; = "[slf5s.LOCATION]"

.field public static final MESSAGE_DELIMITER:Ljava/lang/String; = "[slf5s.MESSAGE]"

.field public static final NDC_DELIMITER:Ljava/lang/String; = "[slf5s.NDC]"

.field public static final PRIORITY_DELIMITER:Ljava/lang/String; = "[slf5s.PRIORITY]"

.field public static final RECORD_DELIMITER:Ljava/lang/String; = "[slf5s.start]"

.field public static final THREAD_DELIMITER:Ljava/lang/String; = "[slf5s.THREAD]"

.field private static _sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private _in:Ljava/io/InputStream;

.field _loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

.field private _monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss,S"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/util/LogFileParser;->_sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    return-void
.end method

.method static access$000(Lorg/apache/log4j/lf5/util/LogFileParser;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    return-void
.end method

.method private createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/log4j/lf5/Log4JLogRecord;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/Log4JLogRecord;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/lf5/LogRecord;->setMillis(J)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parsePriority(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setCategory(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setLocation(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setThreadDescription(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseNDC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setMessage(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseThrowable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setThrownStackTrace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private destroyDialog()V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->hide()V

    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    invoke-virtual {v0}, Ljava/awt/Window;->dispose()V

    return-void
.end method

.method private getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[slf5s."

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "]"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadLogFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x400

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/lf5/util/LogFileParser;->getAttribute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private parseCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[slf5s.CATEGORY]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "[slf5s.DATE]"

    invoke-direct {p0, v2, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v3, Lorg/apache/log4j/lf5/util/LogFileParser;->_sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private parseLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[slf5s.LOCATION]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[slf5s.MESSAGE]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseNDC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[slf5s.NDC]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parsePriority(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    .locals 1

    const-string v0, "[slf5s.PRIORITY]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_0
.end method

.method private parseThread(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[slf5s.THREAD]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseThrowable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->getAttribute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected displayError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    iget-object v1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    return-void
.end method

.method public parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    iget-object v2, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v2

    const-string v3, "Loading file..."

    invoke-direct {v1, v2, v3}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/apache/log4j/lf5/util/LogFileParser;->loadLogFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move v1, v0

    :goto_0
    const-string v3, "[slf5s.start]"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/util/LogFileParser;->createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v4, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    :cond_0
    const-string v1, "[slf5s.start]"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/log4j/lf5/util/LogFileParser;->createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid log file format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    const-string v0, "Error - Invalid log file format.\nPlease see documentation on how to load log files."

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/util/LogFileParser;->displayError(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Lorg/apache/log4j/lf5/util/LogFileParser$1;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/util/LogFileParser$1;-><init>(Lorg/apache/log4j/lf5/util/LogFileParser;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    const-string v0, "Error - Unable to load log file!"

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/util/LogFileParser;->displayError(Ljava/lang/String;)V

    goto :goto_1
.end method
