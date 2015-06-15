.class public interface abstract Lcom/tencent/tauth/IRequestListener;
.super Ljava/lang/Object;
.source "ProGuard"


# virtual methods
.method public abstract onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
.end method

.method public abstract onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V
.end method

.method public abstract onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V
.end method

.method public abstract onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
.end method

.method public abstract onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V
.end method

.method public abstract onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
.end method

.method public abstract onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V
.end method

.method public abstract onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V
.end method

.method public abstract onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V
.end method
