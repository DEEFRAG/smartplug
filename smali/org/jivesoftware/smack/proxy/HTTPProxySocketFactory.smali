.class Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;
.super Ljavax/net/SocketFactory;
.source "HTTPProxySocketFactory.java"


# static fields
.field private static final RESPONSE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const-string v0, "HTTP/\\S+\\s(\\d+)\\s(.*)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 30
    return-void
.end method

.method private httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPort()I

    move-result v0

    .line 64
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v2, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONNECT "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 70
    const-string v0, ""

    .line 79
    :goto_0
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP/1.1\r\nHost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 82
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 88
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-char v6, v6

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0x400

    if-le v7, v8, :cond_2

    .line 92
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recieved header of >1024 characters from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cancelling connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iget-object v5, p0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v5

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\nProxy-Authorization: Basic "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 96
    :cond_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 98
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;)V

    throw v0

    .line 100
    :cond_3
    if-eqz v0, :cond_4

    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    :cond_4
    const/16 v7, 0xd

    if-ne v6, v7, :cond_5

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 112
    :goto_1
    if-ne v0, v10, :cond_0

    .line 118
    if-eq v0, v10, :cond_8

    .line 120
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Never received blank line from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cancelling connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_5
    if-eq v0, v9, :cond_6

    const/4 v7, 0x3

    if-ne v0, v7, :cond_7

    :cond_6
    const/16 v7, 0xa

    if-ne v6, v7, :cond_7

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v1

    .line 110
    goto :goto_1

    .line 125
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 130
    if-nez v0, :cond_9

    .line 132
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty proxy response from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cancelling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_9
    sget-object v1, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_a

    .line 139
    new-instance v1, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v3, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected proxy response from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_a
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 145
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_b

    .line 147
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;)V

    throw v0

    .line 150
    :cond_b
    return-object v3
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
