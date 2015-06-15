.class public Lorg/apache/log4j/net/SyslogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;


# static fields
.field protected static final FACILITY_OI:I = 0x1

.field public static final LOG_AUTH:I = 0x20

.field public static final LOG_AUTHPRIV:I = 0x50

.field public static final LOG_CRON:I = 0x48

.field public static final LOG_DAEMON:I = 0x18

.field public static final LOG_FTP:I = 0x58

.field public static final LOG_KERN:I = 0x0

.field public static final LOG_LOCAL0:I = 0x80

.field public static final LOG_LOCAL1:I = 0x88

.field public static final LOG_LOCAL2:I = 0x90

.field public static final LOG_LOCAL3:I = 0x98

.field public static final LOG_LOCAL4:I = 0xa0

.field public static final LOG_LOCAL5:I = 0xa8

.field public static final LOG_LOCAL6:I = 0xb0

.field public static final LOG_LOCAL7:I = 0xb8

.field public static final LOG_LPR:I = 0x30

.field public static final LOG_MAIL:I = 0x10

.field public static final LOG_NEWS:I = 0x38

.field public static final LOG_SYSLOG:I = 0x28

.field public static final LOG_USER:I = 0x8

.field public static final LOG_UUCP:I = 0x40

.field protected static final SYSLOG_HOST_OI:I = 0x0

.field static final TAB:Ljava/lang/String; = "    "


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field facilityPrinting:Z

.field facilityStr:Ljava/lang/String;

.field private header:Z

.field private layoutHeaderChecked:Z

.field private localHostname:Ljava/lang/String;

.field sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

.field syslogFacility:I

.field syslogHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    iput p2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/apache/log4j/net/SyslogAppender;-><init>(Lorg/apache/log4j/Layout;I)V

    invoke-virtual {p0, p2}, Lorg/apache/log4j/net/SyslogAppender;->setSyslogHost(Ljava/lang/String;)V

    return-void
.end method

.method public static getFacility(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "KERN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "USER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const-string v0, "MAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    goto :goto_0

    :cond_3
    const-string v0, "DAEMON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x18

    goto :goto_0

    :cond_4
    const-string v0, "AUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x20

    goto :goto_0

    :cond_5
    const-string v0, "SYSLOG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x28

    goto :goto_0

    :cond_6
    const-string v0, "LPR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x30

    goto :goto_0

    :cond_7
    const-string v0, "NEWS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x38

    goto :goto_0

    :cond_8
    const-string v0, "UUCP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x40

    goto :goto_0

    :cond_9
    const-string v0, "CRON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x48

    goto :goto_0

    :cond_a
    const-string v0, "AUTHPRIV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x50

    goto :goto_0

    :cond_b
    const-string v0, "FTP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x58

    goto :goto_0

    :cond_c
    const-string v0, "LOCAL0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x80

    goto/16 :goto_0

    :cond_d
    const-string v0, "LOCAL1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x88

    goto/16 :goto_0

    :cond_e
    const-string v0, "LOCAL2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x90

    goto/16 :goto_0

    :cond_f
    const-string v0, "LOCAL3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x98

    goto/16 :goto_0

    :cond_10
    const-string v0, "LOCAL4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xa0

    goto/16 :goto_0

    :cond_11
    const-string v0, "LOCAL5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa8

    goto/16 :goto_0

    :cond_12
    const-string v0, "LOCAL6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0xb0

    goto/16 :goto_0

    :cond_13
    const-string v0, "LOCAL7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xb8

    goto/16 :goto_0

    :cond_14
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getFacilityString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "kern"

    goto :goto_0

    :sswitch_1
    const-string v0, "user"

    goto :goto_0

    :sswitch_2
    const-string v0, "mail"

    goto :goto_0

    :sswitch_3
    const-string v0, "daemon"

    goto :goto_0

    :sswitch_4
    const-string v0, "auth"

    goto :goto_0

    :sswitch_5
    const-string v0, "syslog"

    goto :goto_0

    :sswitch_6
    const-string v0, "lpr"

    goto :goto_0

    :sswitch_7
    const-string v0, "news"

    goto :goto_0

    :sswitch_8
    const-string v0, "uucp"

    goto :goto_0

    :sswitch_9
    const-string v0, "cron"

    goto :goto_0

    :sswitch_a
    const-string v0, "authpriv"

    goto :goto_0

    :sswitch_b
    const-string v0, "ftp"

    goto :goto_0

    :sswitch_c
    const-string v0, "local0"

    goto :goto_0

    :sswitch_d
    const-string v0, "local1"

    goto :goto_0

    :sswitch_e
    const-string v0, "local2"

    goto :goto_0

    :sswitch_f
    const-string v0, "local3"

    goto :goto_0

    :sswitch_10
    const-string v0, "local4"

    goto :goto_0

    :sswitch_11
    const-string v0, "local5"

    goto :goto_0

    :sswitch_12
    const-string v0, "local6"

    goto :goto_0

    :sswitch_13
    const-string v0, "local7"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x80 -> :sswitch_c
        0x88 -> :sswitch_d
        0x90 -> :sswitch_e
        0x98 -> :sswitch_f
        0xa0 -> :sswitch_10
        0xa8 -> :sswitch_11
        0xb0 -> :sswitch_12
        0xb8 -> :sswitch_13
    .end sparse-switch
.end method

.method private getLocalHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "UNKNOWN_HOST"

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPacketHeader(J)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    const/4 v3, 0x4

    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->getLocalHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private initSyslogFacilityStr()V
    .locals 3

    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-static {v0}, Lorg/apache/log4j/net/SyslogAppender;->getFacilityString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" is an unknown syslog facility. Defaulting to \"USER\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    const-string v0, "user:"

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    goto :goto_0
.end method

.method private sendLayoutMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/net/SyslogAppender;->getPacketHeader(J)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setLevel(I)V

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private splitPacket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x3fb

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v0, p2}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public activateOptions()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->getLocalHostname()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/AppenderSkeleton;->isAsSevereAsThreshold(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No syslog host is set for SyslogAppedender named \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    :cond_3
    iput-boolean v6, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    :cond_4
    iget-wide v0, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/net/SyslogAppender;->getPacketHeader(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-boolean v2, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/log4j/Priority;->getSyslogEquivalent()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setLevel(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_a

    invoke-direct {p0, v1, v0}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v2, v0}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v0}, Ljava/io/FilterWriter;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getFacility()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-static {v0}, Lorg/apache/log4j/net/SyslogAppender;->getFacilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityPrinting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    return v0
.end method

.method public final getHeader()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    return v0
.end method

.method public getSyslogHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogHost:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setFacility(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lorg/apache/log4j/net/SyslogAppender;->getFacility(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] is an unknown syslog facility. Defaulting to [USER]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    :cond_2
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    iget v1, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-virtual {v0, v1}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setSyslogFacility(I)V

    goto :goto_0
.end method

.method public setFacilityPrinting(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    return-void
.end method

.method public final setHeader(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    return-void
.end method

.method public setSyslogHost(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v1, Lorg/apache/log4j/helpers/SyslogWriter;

    invoke-direct {v1, p1}, Lorg/apache/log4j/helpers/SyslogWriter;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/SyslogQuietWriter;-><init>(Ljava/io/Writer;ILorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    iput-object p1, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogHost:Ljava/lang/String;

    return-void
.end method
