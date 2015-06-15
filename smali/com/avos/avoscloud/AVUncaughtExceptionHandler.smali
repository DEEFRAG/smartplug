.class public Lcom/avos/avoscloud/AVUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "AVUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private brokenThread:Ljava/lang/Thread;

.field private final context:Landroid/content/Context;

.field private final defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private enabled:Z

.field private unhandledThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->enabled:Z

    .line 21
    const-class v0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->context:Landroid/content/Context;

    .line 28
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 29
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 30
    return-void
.end method

.method private crashData(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, "crashReportData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v7, "reason"

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v7, "stack_trace"

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v7, "date"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    const-string v7, "com.avos.avoscloud.AVInstallation"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 132
    .local v5, "installationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getCurrentInstallation"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 133
    .local v3, "getMethod":Ljava/lang/reflect/Method;
    const-string v7, "getInstallationId"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 134
    .local v2, "getInstallationIdMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 135
    .local v4, "installation":Ljava/lang/Object;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 136
    .local v6, "installationId":Ljava/lang/String;
    const-string v7, "installationId"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .end local v2    # "getInstallationIdMethod":Ljava/lang/reflect/Method;
    .end local v3    # "getMethod":Ljava/lang/reflect/Method;
    .end local v4    # "installation":Ljava/lang/Object;
    .end local v5    # "installationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "installationId":Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string v7, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {p1}, Lcom/avos/avoscloud/AnalyticsUtils;->getDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 142
    const-string v7, "memInfo"

    invoke-static {}, Lcom/avos/avoscloud/AnalyticsUtils;->collectMemInfo()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v7, "totalDiskSpace"

    invoke-static {}, Lcom/avos/avoscloud/AnalyticsUtils;->getTotalInternalMemorySize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v7, "availableDiskSpace"

    invoke-static {}, Lcom/avos/avoscloud/AnalyticsUtils;->getAvailableInternalMemorySize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v7, "appFilePath"

    invoke-static {p1}, Lcom/avos/avoscloud/AnalyticsUtils;->getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v7, "ipAddress"

    invoke-static {}, Lcom/avos/avoscloud/AnalyticsUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    :goto_1
    return-object v0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v7, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error while retrieving crash data"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 137
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private endApplication()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->brokenThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->unhandledThrowable:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 166
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fatal error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->unhandledThrowable:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->unhandledThrowable:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 164
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 109
    .local v2, "result":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 113
    .local v1, "printWriter":Ljava/io/PrintWriter;
    move-object v0, p1

    .line 114
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "stacktraceAsString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 120
    return-object v3
.end method

.method private handleException(Ljava/lang/Throwable;ZZ)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "forceSilentReport"    # Z
    .param p3, "endApplication"    # Z

    .prologue
    .line 89
    iget-boolean v2, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->enabled:Z

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v1, 0x0

    .line 94
    .local v1, "sendOnlySilentReports":Z
    if-nez p1, :cond_2

    .line 95
    new-instance p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Throwable;
    const-string v2, "Report requested by developer"

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->context:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->crashData(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v0

    .line 99
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/avos/avoscloud/AVAnalytics;->reportError(Landroid/content/Context;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    .line 101
    if-eqz p3, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->endApplication()V

    goto :goto_0
.end method


# virtual methods
.method public enableCrashHanlder(Z)V
    .locals 0
    .param p1, "e"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->enabled:Z

    .line 34
    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, v0}, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->handleException(Ljava/lang/Throwable;ZZ)V

    .line 77
    return-void
.end method

.method public handleException(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "endApplication"    # Z

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->handleException(Ljava/lang/Throwable;ZZ)V

    .line 66
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    :try_start_0
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->enabled:Z

    if-nez v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "AVUncaughtExceptionHandler is disabled and fallback to default handler."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "AVUncaughtExceptionHandler is disabled and there is no default handler, good luck."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 58
    .local v0, "fatality":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 49
    .end local v0    # "fatality":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->brokenThread:Ljava/lang/Thread;

    .line 50
    iput-object p2, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->unhandledThrowable:Ljava/lang/Throwable;

    .line 52
    iget-object v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AVUncaughtExceptionHandler caught a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->unhandledThrowable:Ljava/lang/Throwable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->handleException(Ljava/lang/Throwable;ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
