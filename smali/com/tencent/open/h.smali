.class Lcom/tencent/open/h;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/tauth/IRequestListener;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/tencent/open/OpenApi;


# direct methods
.method constructor <init>(Lcom/tencent/open/OpenApi;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/tencent/open/h;->g:Lcom/tencent/open/OpenApi;

    iput-object p2, p0, Lcom/tencent/open/h;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/open/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/open/h;->c:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/open/h;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iput-object p7, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/h;->g:Lcom/tencent/open/OpenApi;

    iget-object v1, p0, Lcom/tencent/open/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/open/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/open/h;->c:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/open/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :catch_1
    move-exception v0

    .line 300
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    :catch_2
    move-exception v0

    .line 303
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :catch_3
    move-exception v0

    .line 306
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V

    goto :goto_0

    .line 308
    :catch_4
    move-exception v0

    .line 309
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :catch_5
    move-exception v0

    .line 312
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    :catch_6
    move-exception v0

    .line 315
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :catch_7
    move-exception v0

    .line 318
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/tencent/open/h;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/h;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method
