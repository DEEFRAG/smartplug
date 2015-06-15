.class public Lorg/videolan/vlc/util/Logcat;
.super Ljava/lang/Object;
.source "Logcat.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/Util/Logcat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogcat()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v6, 0x6

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "logcat"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "-v"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "time"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "-d"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "-t"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "500"

    aput-object v7, v0, v6

    .line 82
    .local v0, "args":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 83
    .local v5, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/InputStreamReader;

    .line 84
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 83
    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 85
    .local v2, "input":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v4, "log":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 93
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 90
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static writeLogcat(Ljava/lang/String;)V
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v9, 0x4

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "logcat"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "-v"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-string v10, "time"

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-string v10, "-d"

    aput-object v10, v0, v9

    .line 43
    .local v0, "args":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 45
    .local v8, "process":Ljava/lang/Process;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v5, "input":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v4, "fileStream":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 55
    .local v7, "output":Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    .local v2, "bw":Ljava/io/BufferedWriter;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 66
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 67
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 68
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 69
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 71
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "output":Ljava/io/OutputStreamWriter;
    :goto_1
    return-void

    .line 50
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 61
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "output":Ljava/io/OutputStreamWriter;
    :cond_0
    :try_start_2
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 64
    .end local v6    # "line":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 66
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 67
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 68
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 69
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v9

    .line 66
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 67
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 68
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 69
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 70
    throw v9
.end method
