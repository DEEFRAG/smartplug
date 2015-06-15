.class public Lcom/kankunit/smartplugcronus/util/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/DownloadUtil;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public downLoadFile(Ljava/lang/String;)Ljava/io/File;
    .locals 14
    .param p1, "httpUrl"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v6, "updata.apk"

    .line 28
    .local v6, "fileName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    const-string v12, "/sdcard/update"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v10, "tmpFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 30
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 32
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v12, "/sdcard/update/updata.apk"

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v5, "file":Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    .local v11, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 37
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 39
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 40
    .local v8, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 41
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v12, 0x100

    new-array v0, v12, [B

    .line 42
    .local v0, "buf":[B
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .local v2, "count":D
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0x190

    if-ge v12, v13, :cond_1

    .line 48
    :goto_0
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    cmpg-double v12, v2, v12

    if-lez v12, :cond_2

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 65
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 66
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 69
    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/util/DownloadUtil;->openFile(Ljava/io/File;)V

    .line 81
    .end local v0    # "buf":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "count":D
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v11    # "url":Ljava/net/URL;
    :goto_1
    return-object v5

    .line 49
    .restart local v0    # "buf":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "count":D
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_2
    if-eqz v8, :cond_1

    .line 50
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 51
    .local v9, "numRead":I
    if-lez v9, :cond_1

    .line 54
    const/4 v12, 0x0

    invoke-virtual {v7, v0, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 70
    .end local v0    # "buf":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "count":D
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "numRead":I
    :catch_0
    move-exception v4

    .line 73
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 75
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 78
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method

.method public openFile(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 87
    const-string v1, "OpenFile"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 92
    const-string v2, "application/vnd.android.package-archive"

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/DownloadUtil;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
