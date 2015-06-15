.class public abstract Lcom/avos/avoscloud/HttpClientUploader;
.super Lcom/avos/avoscloud/AVUploader;
.source "HttpClientUploader.java"


# static fields
.field private static counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field protected final httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/client/methods/HttpPost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/avos/avoscloud/HttpClientUploader;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 1
    .param p1, "parseFile"    # Lcom/avos/avoscloud/AVFile;
    .param p2, "saveCallback"    # Lcom/avos/avoscloud/SaveCallback;
    .param p3, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/HttpClientUploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    return-void
.end method

.method protected static declared-synchronized getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 9

    .prologue
    .line 35
    const-class v5, Lcom/avos/avoscloud/HttpClientUploader;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/avos/avoscloud/HttpClientUploader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/avos/avoscloud/HttpClientUploader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .local v1, "params":Lorg/apache/http/params/BasicHttpParams;
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .local v3, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    monitor-exit v5

    return-object v4

    .line 38
    .end local v0    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v1    # "params":Lorg/apache/http/params/BasicHttpParams;
    .end local v2    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_0
    :try_start_1
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 39
    .restart local v1    # "params":Lorg/apache/http/params/BasicHttpParams;
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 40
    .restart local v2    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v4, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 41
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    .line 42
    .restart local v3    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v4, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 43
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v4

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 44
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v4

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 45
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 46
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 47
    .restart local v0    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v4, Lcom/avos/avoscloud/HttpClientUploader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 48
    sget-object v4, Lcom/avos/avoscloud/HttpClientUploader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    .end local v0    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v2    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public bridge synthetic cancel(Z)Z
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVUploader;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected closeExpiredConnections()V
    .locals 4

    .prologue
    .line 61
    sget-object v0, Lcom/avos/avoscloud/HttpClientUploader;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 63
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/HttpClientUploader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/HttpClientUploader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/avos/avoscloud/HttpClientUploader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 65
    sget-object v0, Lcom/avos/avoscloud/HttpClientUploader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    const-wide/16 v1, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic execute()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/avos/avoscloud/AVUploader;->execute()V

    return-void
.end method

.method public interruptImmediately()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/avos/avoscloud/HttpClientUploader;->httpPostRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    .line 54
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/avos/avoscloud/AVUploader;->interruptImmediately()V

    .line 58
    return-void
.end method

.method public bridge synthetic isCancelled()Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/avos/avoscloud/AVUploader;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic publishProgress(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVUploader;->publishProgress(I)V

    return-void
.end method
