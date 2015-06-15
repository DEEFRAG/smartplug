.class public Lcom/tencent/open/cgireport/ReportManager;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/open/cgireport/ReportManager;


# instance fields
.field private b:J

.field private c:I

.field private d:Z

.field private e:Ljava/util/Random;

.field private f:Lcom/tencent/open/cgireport/ReportDataModal;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/cgireport/ReportManager;->a:Lcom/tencent/open/cgireport/ReportManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/open/cgireport/ReportManager;->b:J

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/open/cgireport/ReportManager;->c:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/open/cgireport/ReportManager;->d:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->e:Ljava/util/Random;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/tencent/open/cgireport/ReportManager;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/tencent/open/cgireport/ReportManager;->c:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/open/cgireport/ReportManager;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/tencent/open/cgireport/ReportManager;->c:I

    return p1
.end method

.method public static a()Lcom/tencent/open/cgireport/ReportManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/tencent/open/cgireport/ReportManager;->a:Lcom/tencent/open/cgireport/ReportManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/tencent/open/cgireport/ReportManager;

    invoke-direct {v0}, Lcom/tencent/open/cgireport/ReportManager;-><init>()V

    sput-object v0, Lcom/tencent/open/cgireport/ReportManager;->a:Lcom/tencent/open/cgireport/ReportManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/tencent/open/cgireport/ReportManager;->a:Lcom/tencent/open/cgireport/ReportManager;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lcom/tencent/open/cgireport/b;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/tencent/open/cgireport/b;-><init>(Lcom/tencent/open/cgireport/ReportManager;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/b;->start()V

    .line 349
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v0

    const-string v1, "Common_CGIReportFrequency"

    invoke-virtual {v0, v1}, Lcom/tencent/open/OpenConfig;->a(Ljava/lang/String;)I

    move-result v0

    .line 100
    const-string v1, "OpenConfig_test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config 4:Common_CGIReportTimeinterval     config_value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 103
    :cond_0
    const-string v1, "OpenConfig_test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config 4:Common_CGIReportTimeinterval     result_value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/tencent/open/cgireport/ReportManager;->e:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 107
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager availableForFrequency = ture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_1
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager availableForFrequency = false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/cgireport/ReportManager;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/tencent/open/cgireport/ReportManager;->d:Z

    return p1
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    if-nez v0, :cond_0

    .line 150
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager getAPN failed:ConnectivityManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v0, "no_net"

    .line 177
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    :cond_1
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager getAPN failed:NetworkInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "no_net"

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager getAPN type = wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "wifi"

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 165
    if-nez v0, :cond_4

    .line 166
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager getAPN failed:extraInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "mobile_unknow"

    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "cgi_report_debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportManager getAPN type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    const-string v0, "unknow"

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/open/cgireport/ReportManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
    .locals 13

    .prologue
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v7, v2, p3

    .line 123
    const-string v2, "cgi_report_debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportManager updateDB url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",timeCost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reqSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rspSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v2

    const-string v3, "Common_CGIReportFrequency"

    invoke-virtual {v2, v3}, Lcom/tencent/open/OpenConfig;->a(Ljava/lang/String;)I

    move-result v2

    .line 129
    const-string v3, "OpenConfig_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config 4:Common_CGIReportFrequency     config_value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez v2, :cond_0

    const/16 v2, 0xa

    .line 132
    :cond_0
    const-string v3, "OpenConfig_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config 4:Common_CGIReportFrequency     result_value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 v3, 0x64

    div-int v2, v3, v2

    .line 136
    if-gtz v2, :cond_1

    .line 137
    const/4 v2, 0x1

    move v4, v2

    .line 142
    :goto_0
    invoke-direct {p0, p1}, Lcom/tencent/open/cgireport/ReportManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 143
    iget-object v2, p0, Lcom/tencent/open/cgireport/ReportManager;->f:Lcom/tencent/open/cgireport/ReportDataModal;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move/from16 v6, p9

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/tencent/open/cgireport/ReportDataModal;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJ)Z

    .line 144
    return-void

    .line 138
    :cond_1
    const/16 v3, 0x64

    if-le v2, v3, :cond_2

    .line 139
    const/16 v2, 0x64

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/open/cgireport/ReportManager;)Lcom/tencent/open/cgireport/ReportDataModal;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->f:Lcom/tencent/open/cgireport/ReportDataModal;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 186
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v0

    const-string v1, "Common_CGIReportTimeinterval"

    invoke-virtual {v0, v1}, Lcom/tencent/open/OpenConfig;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 188
    const-string v2, "OpenConfig_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config 5:Common_CGIReportTimeinterval     config_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const-wide/16 v0, 0x4b0

    .line 191
    :cond_0
    const-string v2, "OpenConfig_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config 5:Common_CGIReportTimeinterval     result_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 196
    iget-wide v4, p0, Lcom/tencent/open/cgireport/ReportManager;->b:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/tencent/open/cgireport/ReportManager;->b:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 198
    :cond_1
    iput-wide v2, p0, Lcom/tencent/open/cgireport/ReportManager;->b:J

    .line 199
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager availableForTime = ture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_2
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager availableForTime = false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v0

    const-string v1, "Common_CGIReportMaxcount"

    invoke-virtual {v0, v1}, Lcom/tencent/open/OpenConfig;->a(Ljava/lang/String;)I

    move-result v0

    .line 215
    const-string v1, "OpenConfig_test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config 6:Common_CGIReportMaxcount     config_value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez v0, :cond_0

    const/16 v0, 0x14

    .line 218
    :cond_0
    const-string v1, "OpenConfig_test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config 6:Common_CGIReportMaxcount     result_value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/tencent/open/cgireport/ReportManager;->f:Lcom/tencent/open/cgireport/ReportDataModal;

    invoke-virtual {v1}, Lcom/tencent/open/cgireport/ReportDataModal;->e()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 222
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager availableForCount = ture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 225
    :cond_1
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager availableForCount = false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 234
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager doUpload start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/open/cgireport/ReportManager;->d:Z

    .line 238
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->f:Lcom/tencent/open/cgireport/ReportDataModal;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/ReportDataModal;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    .line 239
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->f:Lcom/tencent/open/cgireport/ReportDataModal;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/ReportDataModal;->b()Z

    .line 242
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->f:Lcom/tencent/open/cgireport/ReportDataModal;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/ReportDataModal;->d()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    .line 243
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->f:Lcom/tencent/open/cgireport/ReportDataModal;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/ReportDataModal;->a()Z

    .line 246
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 247
    const-string v0, "appid"

    const-string v1, "1000002"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "releaseversion"

    const-string v1, "QQConnect_SDK_Android_1_5"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "device"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "qua"

    const-string v1, "V1_AND_OpenSDK_1.5_709_RDM_B"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "key"

    const-string v1, "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_6"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_7"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    if-ge v1, v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v3, v1, v0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_2"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_3"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_4"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_5"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_6"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_7"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/cgireport/reportItem;

    invoke-virtual {v0}, Lcom/tencent/open/cgireport/reportItem;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 273
    :cond_1
    const-string v0, "http://wspeed.qq.com/w.cgi"

    const-string v1, "POST"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 274
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    iget-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->f:Lcom/tencent/open/cgireport/ReportDataModal;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/tencent/open/cgireport/ReportDataModal;

    invoke-direct {v0, p1}, Lcom/tencent/open/cgireport/ReportDataModal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/cgireport/ReportManager;->f:Lcom/tencent/open/cgireport/ReportDataModal;

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 73
    invoke-direct/range {p0 .. p10}, Lcom/tencent/open/cgireport/ReportManager;->b(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/tencent/open/cgireport/ReportManager;->d:Z

    if-ne v0, v1, :cond_2

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/open/cgireport/ReportManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 85
    invoke-direct {p0, p1}, Lcom/tencent/open/cgireport/ReportManager;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 87
    :cond_3
    invoke-direct {p0, p1}, Lcom/tencent/open/cgireport/ReportManager;->d(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lcom/tencent/open/cgireport/ReportManager;->e(Landroid/content/Context;)V

    goto :goto_0
.end method
