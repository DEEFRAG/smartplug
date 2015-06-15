.class public Lcom/avos/avoscloud/AVCloud;
.super Ljava/lang/Object;
.source "AVCloud.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callFunction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 56
    .local v0, "reference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "functions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/avos/avoscloud/AVCloud$1;

    invoke-direct {v5, v0}, Lcom/avos/avoscloud/AVCloud$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 69
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FunctionCallback;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/avos/avoscloud/FunctionCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local p2, "callback":Lcom/avos/avoscloud/FunctionCallback;, "Lcom/avos/avoscloud/FunctionCallback<TT;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "functions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/AVCloud$2;

    invoke-direct {v4, p2}, Lcom/avos/avoscloud/AVCloud$2;-><init>(Lcom/avos/avoscloud/FunctionCallback;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 100
    return-void
.end method

.method public static convertCloudResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, "newResultValue":Ljava/lang/Object;
    :try_start_0
    const-class v4, Ljava/util/Map;

    invoke-static {p0, v4}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 124
    .local v2, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v4, "result"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 126
    .local v3, "resultValue":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_0

    .line 127
    check-cast v3, Ljava/util/Collection;

    .end local v3    # "resultValue":Ljava/lang/Object;
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 138
    .end local v1    # "newResultValue":Ljava/lang/Object;
    .end local v2    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :goto_0
    return-object v1

    .line 128
    .restart local v1    # "newResultValue":Ljava/lang/Object;
    .restart local v2    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v3    # "resultValue":Ljava/lang/Object;
    :cond_0
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 129
    check-cast v3, Ljava/util/Map;

    .end local v3    # "resultValue":Ljava/lang/Object;
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 132
    .restart local v3    # "resultValue":Ljava/lang/Object;
    :cond_1
    move-object v1, v3

    goto :goto_0

    .line 134
    .end local v2    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v3    # "resultValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error during response parse"

    invoke-static {v4, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static setProductionMode(Z)V
    .locals 1
    .param p0, "productionMode"    # Z

    .prologue
    .line 41
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/PaasClient;->setProduction(Z)V

    .line 42
    return-void
.end method
