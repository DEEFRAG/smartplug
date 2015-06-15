.class public Lcom/kankunit/smartplugcronus/util/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x7d0

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 70
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 72
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v2, v7, v8}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 73
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 74
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 75
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 76
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5, v2}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 78
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 79
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 80
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x2000

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 82
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 83
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 86
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 88
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 84
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v2, "000000000000"

    .line 28
    .local v2, "macAddress":Ljava/lang/String;
    :try_start_0
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 27
    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 29
    .local v4, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 31
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 33
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v3, v2

    .line 41
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "macAddress":Ljava/lang/String;
    .end local v4    # "wifiMgr":Landroid/net/wifi/WifiManager;
    .local v3, "macAddress":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 30
    .end local v3    # "macAddress":Ljava/lang/String;
    .restart local v2    # "macAddress":Ljava/lang/String;
    .restart local v4    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_2
    move-object v3, v2

    .line 35
    .end local v2    # "macAddress":Ljava/lang/String;
    .restart local v3    # "macAddress":Ljava/lang/String;
    goto :goto_1

    .line 37
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v3    # "macAddress":Ljava/lang/String;
    .end local v4    # "wifiMgr":Landroid/net/wifi/WifiManager;
    .restart local v2    # "macAddress":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    .line 39
    .end local v2    # "macAddress":Ljava/lang/String;
    .restart local v3    # "macAddress":Ljava/lang/String;
    goto :goto_1
.end method

.method public static isNetConnect()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    if-eqz p0, :cond_0

    .line 47
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 49
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 53
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 91
    if-eqz p0, :cond_1

    .line 93
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 96
    .local v1, "mWiFiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 98
    .local v2, "wifi":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_1

    .line 102
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mWiFiNetworkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "wifi":Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
