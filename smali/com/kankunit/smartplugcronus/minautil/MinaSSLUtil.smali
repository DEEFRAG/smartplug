.class public Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
.super Ljava/lang/Object;
.source "MinaSSLUtil.java"


# instance fields
.field private Client_sslSocket:Ljavax/net/ssl/SSLSocket;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->Client_sslSocket:Ljavax/net/ssl/SSLSocket;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;)Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->Client_sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method


# virtual methods
.method public closeSocket()V
    .locals 2

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->Client_sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->Client_sslSocket:Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIn(Ljavax/net/ssl/SSLSocket;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    .locals 7
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "mrl"    # Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    .prologue
    .line 94
    const-string v3, ""

    .line 95
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 98
    new-instance v4, Ljava/io/InputStreamReader;

    .line 99
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "utf-8"

    .line 98
    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 97
    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .local v0, "bReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 112
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "str.length()~==========="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "str~==========="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;->doReceive(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void

    .line 101
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 116
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getOut(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    .line 80
    new-instance v2, Ljava/io/BufferedWriter;

    .line 81
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 82
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 81
    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 80
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 84
    const/4 v3, 0x1

    .line 79
    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 85
    .local v1, "out":Ljava/io/PrintWriter;
    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "out":Ljava/io/PrintWriter;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "mrl"    # Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    .prologue
    .line 33
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 62
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil$1;->start()V

    .line 63
    return-void
.end method
