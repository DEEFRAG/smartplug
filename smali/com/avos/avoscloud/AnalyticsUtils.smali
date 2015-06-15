.class public Lcom/avos/avoscloud/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/avos/avoscloud/AnalyticsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AnalyticsUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-string p0, "offline"

    .line 69
    .end local p0    # "type":Ljava/lang/String;
    .local v0, "t":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 62
    .end local v0    # "t":Ljava/lang/String;
    .restart local p0    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0    # "t":Ljava/lang/String;
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const-string p0, "WiFi"

    goto :goto_0

    .line 66
    :cond_2
    const-string v1, "MOBILE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string p0, "Mobile"

    goto :goto_0
.end method

.method public static collectMemInfo()Ljava/lang/String;
    .locals 13

    .prologue
    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v7, "meminfo":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 179
    .local v5, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 180
    .local v9, "reader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 182
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "dumpsys"

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v11, "meminfo"

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 189
    .local v8, "process":Ljava/lang/Process;
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 190
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .local v10, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v11, 0x2000

    invoke-direct {v1, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 201
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v10}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 207
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 208
    .end local v10    # "reader":Ljava/io/InputStreamReader;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v11, 0x2000

    invoke-direct {v0, v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 210
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v4, "errorInfo":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 213
    if-nez v6, :cond_2

    .line 219
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v11

    if-eqz v11, :cond_0

    .line 220
    sget-object v11, Lcom/avos/avoscloud/AnalyticsUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    invoke-static {v9}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 231
    .end local v2    # "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "errorInfo":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "process":Ljava/lang/Process;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 198
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "process":Ljava/lang/Process;
    .restart local v10    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v11, "\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 223
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 224
    .end local v2    # "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "process":Ljava/lang/Process;
    .end local v10    # "reader":Ljava/io/InputStreamReader;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    :goto_3
    :try_start_6
    sget-object v11, Lcom/avos/avoscloud/AnalyticsUtils;->TAG:Ljava/lang/String;

    const-string v12, "DumpSysCollector.meminfo could not retrieve data"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 226
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    invoke-static {v9}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 216
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "errorInfo":Ljava/lang/StringBuilder;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "process":Ljava/lang/Process;
    :cond_2
    :try_start_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 223
    .end local v2    # "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "errorInfo":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v3

    goto :goto_3

    .line 226
    :catchall_0
    move-exception v11

    :goto_4
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    invoke-static {v9}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v11

    .line 226
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "process":Ljava/lang/Process;
    .restart local v10    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/InputStreamReader;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/InputStreamReader;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catchall_3
    move-exception v11

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 223
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/InputStreamReader;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static deviceInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AnalyticsUtils;->getNetworkInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 75
    .local v2, "networkInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AnalyticsUtils;->getDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 79
    .local v0, "deviceInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    :cond_1
    return-object v1
.end method

.method public static getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 286
    .local v0, "filesDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Couldn\'t retrieve ApplicationFilePath"

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 87
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 88
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 89
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 90
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getCPUInfo()Ljava/lang/String;
    .locals 9

    .prologue
    .line 235
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 237
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/File;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 242
    const-string v6, "Processor"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 244
    .local v4, "position":I
    if-ltz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1

    .line 245
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    .end local v4    # "position":I
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 256
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v6, Lcom/avos/avoscloud/AnalyticsUtils;->TAG:Ljava/lang/String;

    const-string v7, "getCPUInfo"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 250
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static getCurrentTimestamp()J
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v18, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 105
    .local v21, "packageName":Ljava/lang/String;
    const-string v26, "package_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 108
    .local v12, "info":Landroid/content/pm/PackageInfo;
    const-string v26, "app_version"

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v26, "version_code"

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v26, "sdk_version"

    const-string v27, "Android v2.6.7"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v12    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v26, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/WindowManager;

    .line 117
    .local v25, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v25 .. v25}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 118
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v23

    .line 119
    .local v23, "width":I
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 120
    .local v11, "height":I
    const-string v26, "resolution"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "*"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v26, "device_model"

    sget-object v27, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v26, "device_manufacturer"

    sget-object v27, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v26, "os_version"

    sget-object v27, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v26, "device_name"

    sget-object v27, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v26, "device_brand"

    sget-object v27, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v26, "device_board"

    sget-object v27, Landroid/os/Build;->BOARD:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v26, "device_manuid"

    sget-object v27, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v26, "cpu"

    invoke-static {}, Lcom/avos/avoscloud/AnalyticsUtils;->getCPUInfo()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v26, "os"

    const-string v27, "Android"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v26, "sdk_type"

    const-string v27, "Android"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 v17, 0x0

    .line 135
    .local v17, "macAddress":Ljava/lang/String;
    :try_start_1
    sget-object v26, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v27, "wifi"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/wifi/WifiManager;

    .line 137
    .local v24, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v22

    .line 138
    .local v22, "wInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 144
    .end local v22    # "wInfo":Landroid/net/wifi/WifiInfo;
    .end local v24    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "android_id"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "androidId":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    move-object v5, v4

    .line 148
    .local v5, "deviceId":Ljava/lang/String;
    :goto_2
    const-string v26, "device_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :try_start_2
    const-string v26, "com.avos.avoscloud.AVInstallation"

    invoke-static/range {v26 .. v26}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 152
    .local v14, "installationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v26, "getCurrentInstallation"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 153
    .local v10, "getMethod":Ljava/lang/reflect/Method;
    const-string v26, "getObjectId"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 154
    .local v9, "getInstallationIdMethod":Ljava/lang/reflect/Method;
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v10, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 155
    .local v13, "installation":Ljava/lang/Object;
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v9, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 156
    .local v15, "installationId":Ljava/lang/String;
    const-string v26, "iid"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 158
    .end local v9    # "getInstallationIdMethod":Ljava/lang/reflect/Method;
    .end local v10    # "getMethod":Ljava/lang/reflect/Method;
    .end local v13    # "installation":Ljava/lang/Object;
    .end local v14    # "installationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "installationId":Ljava/lang/String;
    :goto_3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 161
    .local v19, "offset":J
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v16

    .line 162
    .local v16, "loginedUser":Lcom/avos/avoscloud/AVUser;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 163
    const-string v26, "uid"

    invoke-virtual/range {v16 .. v16}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_1
    :try_start_3
    sget-object v26, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v27, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v19

    .line 170
    :goto_4
    const-string v26, "time_zone"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v26, "channel"

    invoke-static {}, Lcom/avos/avoscloud/AVAnalytics;->getAppChannel()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-object v18

    .line 111
    .end local v4    # "androidId":Ljava/lang/String;
    .end local v5    # "deviceId":Ljava/lang/String;
    .end local v6    # "display":Landroid/view/Display;
    .end local v11    # "height":I
    .end local v16    # "loginedUser":Lcom/avos/avoscloud/AVUser;
    .end local v17    # "macAddress":Ljava/lang/String;
    .end local v19    # "offset":J
    .end local v23    # "width":I
    .end local v25    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v8

    .line 112
    .local v8, "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 139
    .end local v8    # "exception":Ljava/lang/Exception;
    .restart local v6    # "display":Landroid/view/Display;
    .restart local v11    # "height":I
    .restart local v17    # "macAddress":Ljava/lang/String;
    .restart local v23    # "width":I
    .restart local v25    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v7

    .line 140
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 141
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to get wifi mac address"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "androidId":Ljava/lang/String;
    :cond_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 167
    .restart local v5    # "deviceId":Ljava/lang/String;
    .restart local v16    # "loginedUser":Lcom/avos/avoscloud/AVUser;
    .restart local v19    # "offset":J
    :catch_2
    move-exception v7

    .line 168
    .local v7, "e":Ljava/lang/NoSuchFieldError;
    const-wide/32 v26, 0x36ee80

    div-long v19, v19, v26

    goto :goto_4

    .line 157
    .end local v7    # "e":Ljava/lang/NoSuchFieldError;
    .end local v16    # "loginedUser":Lcom/avos/avoscloud/AVUser;
    .end local v19    # "offset":J
    :catch_3
    move-exception v26

    goto/16 :goto_3
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 263
    .local v3, "first":Z
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 264
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 265
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 266
    .local v5, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 267
    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 268
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 269
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_1

    .line 270
    if-nez v3, :cond_2

    .line 271
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    :cond_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    const/4 v3, 0x0

    goto :goto_0

    .line 278
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 279
    .local v2, "ex":Ljava/net/SocketException;
    sget-object v7, Lcom/avos/avoscloud/AnalyticsUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 41
    .local v1, "cm":Landroid/net/ConnectivityManager;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 43
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_1

    .line 44
    :cond_0
    const-string v5, "access_subtype"

    const-string v6, "offline"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v5, "access"

    const-string v6, "offline"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v5, "carrier"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    return-object v4

    .line 48
    :cond_1
    const-string v5, "access_subtype"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v5, "access"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avos/avoscloud/AnalyticsUtils;->cleanNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 52
    .local v3, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "carrierName":Ljava/lang/String;
    const-string v5, "carrier"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 5
    .param p0, "length"    # I

    .prologue
    .line 297
    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    .line 298
    .local v1, "letters":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v2, "randomString":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 301
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 95
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 97
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 98
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public static isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 312
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 313
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    .line 315
    :cond_0
    if-eqz p0, :cond_1

    .line 316
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static uniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
