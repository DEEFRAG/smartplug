.class public Lu/aly/t;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Lu/aly/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lu/aly/t;->b:Ljava/lang/String;

    .line 42
    const/16 v0, 0x50

    iput v0, p0, Lu/aly/t;->c:I

    .line 48
    iput-object p1, p0, Lu/aly/t;->d:Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Lu/aly/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/t;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 173
    const-string v0, "Android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v0, "5.4.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    invoke-static {p1}, Lu/aly/bq;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-static {p1}, Lu/aly/bq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu/aly/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lu/aly/t;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 80
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v4, p0, Lu/aly/t;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 101
    :goto_0
    return v0

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lu/aly/t;->d:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_2

    const-string v3, "cmwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3gwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "uniwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 92
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method private a([BLjava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 106
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 108
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 113
    const-string v2, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "X-Umeng-Sdk"

    iget-object v4, p0, Lu/aly/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "Msg-Type"

    const-string v4, "envelope"

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :try_start_0
    invoke-direct {p0}, Lu/aly/t;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lu/aly/t;->b:Ljava/lang/String;

    iget v5, p0, Lu/aly/t;->c:I

    invoke-direct {v2, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 120
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 125
    :cond_0
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v5, p1

    int-to-long v5, v5

    invoke-direct {v2, v4, v5, v6}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 128
    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 131
    iget-object v2, p0, Lu/aly/t;->e:Lu/aly/r;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lu/aly/t;->e:Lu/aly/r;

    invoke-interface {v2}, Lu/aly/r;->a()V

    .line 133
    :cond_1
    invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lu/aly/t;->e:Lu/aly/r;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lu/aly/t;->e:Lu/aly/r;

    invoke-interface {v2}, Lu/aly/r;->b()V

    .line 137
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 139
    const-string v3, "MobclickAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 141
    const-string v2, "MobclickAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send message to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_3

    .line 146
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 149
    :try_start_1
    invoke-static {v2}, Lu/aly/cd;->b(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 151
    :try_start_2
    invoke-static {v2}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    .line 166
    :goto_0
    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    throw v0
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v2, "MobclickAgent"

    const-string v3, "ClientProtocolException,Failed to send message."

    invoke-static {v2, v3, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 163
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 155
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 157
    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    const-string v2, "MobclickAgent"

    const-string v3, "IOException,Failed to send message."

    invoke-static {v2, v3, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 166
    goto :goto_0
.end method


# virtual methods
.method public a(Lu/aly/r;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lu/aly/t;->e:Lu/aly/r;

    .line 54
    return-void
.end method

.method public a([B)[B
    .locals 3

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 65
    sget-object v1, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, p1, v1}, Lu/aly/t;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    .line 68
    iget-object v0, p0, Lu/aly/t;->e:Lu/aly/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/t;->e:Lu/aly/r;

    invoke-interface {v0}, Lu/aly/r;->c()V

    .line 75
    :cond_0
    return-object v1

    .line 72
    :cond_1
    iget-object v2, p0, Lu/aly/t;->e:Lu/aly/r;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lu/aly/t;->e:Lu/aly/r;

    invoke-interface {v2}, Lu/aly/r;->d()V

    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
