.class public Lcom/iflytek/common/a/a;
.super Ljava/lang/Thread;


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:Lcom/iflytek/common/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iflytek/common/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/common/a/a;->a:Z

    iput-object p1, p0, Lcom/iflytek/common/a/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/common/a/a;->c:Lcom/iflytek/common/a/b;

    return-void
.end method

.method private a([B)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v0, "HttpGetThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unzip len "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/iflytek/common/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Lcom/iflytek/common/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "HttpGetThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unzip str "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iflytek/common/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    const-string v2, "HttpGetThread"

    const-string v3, "unzip error "

    invoke-static {v2, v3, v1}, Lcom/iflytek/common/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6

    const/16 v5, 0x400

    const/4 v4, 0x0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v1, v5, [B

    :goto_0
    invoke-virtual {v0, v1, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, 0x100000

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/iflytek/common/a/a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v4, "Accept-Encoding"

    const-string v5, "gzip, deflate"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    const-string v3, "Content-Length"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-lez v0, :cond_3

    if-ge v0, v6, :cond_3

    new-array v0, v0, [B

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-object v2, v0

    :goto_0
    iget-boolean v0, p0, Lcom/iflytek/common/a/a;->a:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Lcom/iflytek/common/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/a/a;->c:Lcom/iflytek/common/a/b;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/common/a/a;->c:Lcom/iflytek/common/a/b;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/iflytek/common/a/b;->a(Ljava/lang/String;I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/high16 v0, 0x100000

    new-array v3, v0, [B

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    new-array v0, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HttpGetThread"

    const-string v3, "Other Exception"

    invoke-static {v2, v3, v0}, Lcom/iflytek/common/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iget-object v0, p0, Lcom/iflytek/common/a/a;->c:Lcom/iflytek/common/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/common/a/a;->c:Lcom/iflytek/common/a/b;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/iflytek/common/a/b;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method
