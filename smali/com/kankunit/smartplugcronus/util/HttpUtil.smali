.class public Lcom/kankunit/smartplugcronus/util/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public http(Ljava/lang/String;[B)Ljava/io/InputStream;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "PostData"    # [B

    .prologue
    .line 10
    const/4 v5, 0x0

    .line 11
    .local v5, "u":Ljava/net/URL;
    const/4 v1, 0x0

    .line 12
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 14
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .end local v5    # "u":Ljava/net/URL;
    .local v6, "u":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 16
    const-string v7, "POST"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 17
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 18
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 19
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 20
    const-string v7, "Content-Type"

    const-string v8, "binary/octet-stream"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 22
    .local v4, "outStream":Ljava/io/OutputStream;
    invoke-virtual {v4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 23
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 24
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 30
    .end local v4    # "outStream":Ljava/io/OutputStream;
    .end local v6    # "u":Ljava/net/URL;
    .restart local v5    # "u":Ljava/net/URL;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 38
    :goto_1
    return-object v3

    .line 25
    :catch_0
    move-exception v2

    .line 26
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 32
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 33
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 37
    throw v7

    .line 25
    .end local v5    # "u":Ljava/net/URL;
    .restart local v6    # "u":Ljava/net/URL;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "u":Ljava/net/URL;
    .restart local v5    # "u":Ljava/net/URL;
    goto :goto_2
.end method

.method public sendPost(Ljava/lang/String;[B)Ljava/net/HttpURLConnection;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "PostData"    # [B

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 43
    .local v4, "u":Ljava/net/URL;
    const/4 v1, 0x0

    .line 45
    .local v1, "con":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v4    # "u":Ljava/net/URL;
    .local v5, "u":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 47
    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 48
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 49
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 50
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 51
    const-string v6, "Content-Type"

    const-string v7, "binary/octet-stream"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 53
    .local v3, "outStream":Ljava/io/OutputStream;
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 54
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 55
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 60
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .end local v5    # "u":Ljava/net/URL;
    .restart local v4    # "u":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "u":Ljava/net/URL;
    .restart local v5    # "u":Ljava/net/URL;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "u":Ljava/net/URL;
    .restart local v4    # "u":Ljava/net/URL;
    goto :goto_1
.end method
