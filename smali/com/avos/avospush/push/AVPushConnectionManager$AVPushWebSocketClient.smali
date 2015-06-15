.class Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "AVPushConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/push/AVPushConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AVPushWebSocketClient"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field private final retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

.field final synthetic this$0:Lcom/avos/avospush/push/AVPushConnectionManager;


# direct methods
.method constructor <init>(Lcom/avos/avospush/push/AVPushConnectionManager;Ljava/net/URI;)V
    .locals 5
    .param p2, "serverURI"    # Ljava/net/URI;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    .line 210
    invoke-direct {p0, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 211
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    const-string v3, "AVPushConnectionManager"

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    new-instance v3, Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/avos/avoscloud/PushConnectionRetryController;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    .line 216
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 217
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 218
    .local v2, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->setSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "AVPushConnectionManager"

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "AVPushConnectionManager"

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public onClose(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    const/16 v6, 0x1387

    const/16 v5, 0xfa0

    .line 332
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-nez v2, :cond_0

    if-gt p1, v6, :cond_1

    if-lt p1, v5, :cond_1

    .line 333
    :cond_0
    const-string v2, "AVPushConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on websocket closed for reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 337
    .local v1, "session":Lcom/avos/avoscloud/AVSession;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-nez v2, :cond_3

    if-gt p1, v6, :cond_4

    if-lt p1, v5, :cond_4

    .line 338
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|watchPeerIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 340
    :cond_4
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/avos/avospush/push/AVWebSocketListener;->onWebSocketClose()V

    goto :goto_0

    .line 346
    .end local v1    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_5
    if-eqz p3, :cond_6

    iget-object v2, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v2}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 347
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouter:Lcom/avos/avospush/push/AVPushRouter;
    invoke-static {v2}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$200(Lcom/avos/avospush/push/AVPushConnectionManager;)Lcom/avos/avospush/push/AVPushRouter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avospush/push/AVPushRouter;->retryGetPushServer()V

    .line 349
    :cond_6
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 353
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "AVPushConnectionManager"

    const-string v1, "Client error."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 358
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouter:Lcom/avos/avospush/push/AVPushRouter;
    invoke-static {v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$200(Lcom/avos/avospush/push/AVPushConnectionManager;)Lcom/avos/avospush/push/AVPushRouter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushRouter;->retryGetPushServer()V

    .line 361
    :cond_1
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 267
    const-string v9, "AVPushConnectionManager"

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v9, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouter:Lcom/avos/avospush/push/AVPushRouter;
    invoke-static {v9}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$200(Lcom/avos/avospush/push/AVPushConnectionManager;)Lcom/avos/avospush/push/AVPushRouter;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/avos/avospush/push/AVPushRouter;->updateInterval(I)V

    .line 275
    :try_start_0
    const-class v9, Ljava/util/HashMap;

    invoke-static {p1, v9}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 276
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "cmd"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    .local v1, "cmd":Ljava/lang/String;
    const-string v9, "data"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 279
    const-string v9, "appId"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, "appId":Ljava/lang/String;
    const-string v9, "ids"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 281
    .local v5, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "msg"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    .line 282
    .local v6, "msgArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 283
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 284
    iget-object v10, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    # invokes: Lcom/avos/avospush/push/AVPushConnectionManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v0, v11, v9}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$300(Lcom/avos/avospush/push/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    :cond_2
    new-instance v7, Lcom/avos/avospush/session/PushAckPacket;

    invoke-direct {v7}, Lcom/avos/avospush/session/PushAckPacket;-><init>()V

    .line 288
    .local v7, "pap":Lcom/avos/avospush/session/PushAckPacket;
    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/PushAckPacket;->setAppId(Ljava/lang/String;)V

    .line 289
    iget-object v9, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/avos/avospush/session/PushAckPacket;->setInstallationId(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v7, v5}, Lcom/avos/avospush/session/PushAckPacket;->setMessageIds(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0, v7}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 328
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "msgArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "pap":Lcom/avos/avospush/session/PushAckPacket;
    :cond_3
    :goto_1
    return-void

    .line 292
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 293
    const-string v9, "presence"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 294
    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 295
    .local v8, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 296
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onPresenceCommand(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 325
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Exception during message parse"

    invoke-static {v9, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 298
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    :try_start_1
    const-string v9, "direct"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 299
    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 300
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 301
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onDirectCommand(Ljava/util/HashMap;)V

    goto :goto_1

    .line 303
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_6
    const-string v9, "session"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 304
    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 305
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 306
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onSessionCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 308
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_7
    const-string v9, "ackreq"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 309
    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 310
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 311
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onAckReqCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 313
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_8
    const-string v9, "ack"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 314
    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 315
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 316
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onAckCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 318
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_9
    const-string v9, "room"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 319
    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 320
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 321
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onGroupCommand(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 5
    .param p1, "serverHandshake"    # Lorg/java_websocket/handshake/ServerHandshake;

    .prologue
    .line 251
    new-instance v1, Lcom/avos/avospush/session/LoginPacket;

    invoke-direct {v1}, Lcom/avos/avospush/session/LoginPacket;-><init>()V

    .line 252
    .local v1, "lp":Lcom/avos/avospush/session/LoginPacket;
    iget-object v3, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/avos/avospush/session/LoginPacket;->setAppId(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/avos/avospush/session/LoginPacket;->setInstallationId(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v1}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 256
    # getter for: Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVSession;

    .line 257
    .local v2, "session":Lcom/avos/avoscloud/AVSession;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    const-string v3, "AVPushConnectionManager"

    const-string v4, "websocket opened, notifying listeners"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/avos/avospush/push/AVWebSocketListener;->onWebSocketOpen()V

    goto :goto_0

    .line 262
    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_1
    return-void
.end method

.method public onWebsocketPong(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    .locals 3
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "f"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 365
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "AVPushConnectionManager"

    const-string v1, "on pong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/avos/avospush/push/AVPushConnectionManager;->lastPongTimestamps:J
    invoke-static {v0, v1, v2}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$402(Lcom/avos/avospush/push/AVPushConnectionManager;J)J

    .line 369
    invoke-super {p0, p1, p2}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketPong(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    .line 370
    return-void
.end method

.method public send(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 2
    .param p1, "packet"    # Lcom/avos/avospush/session/CommandPacket;

    .prologue
    .line 243
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "AVPushConnectionManager"

    invoke-virtual {p1}, Lcom/avos/avospush/session/CommandPacket;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avospush/session/CommandPacket;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->send(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->appId:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setInstallationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "installationId"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    .line 240
    return-void
.end method
