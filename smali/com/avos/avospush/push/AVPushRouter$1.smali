.class Lcom/avos/avospush/push/AVPushRouter$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVPushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avospush/push/AVPushRouter;->fetchPushServer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avospush/push/AVPushRouter;

.field final synthetic val$installationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avospush/push/AVPushRouter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    iput-object p2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->val$installationId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to fetch push server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/push/AVPushRouter;->updateInterval(I)V

    .line 184
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushRouter;->retryGetPushServer()V

    .line 185
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 163
    if-nez p2, :cond_0

    .line 164
    const-class v2, Ljava/util/HashMap;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 165
    .local v0, "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "groupId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    # setter for: Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;
    invoke-static {v2}, Lcom/avos/avospush/push/AVPushRouter;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v3, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    const-string v2, "ttl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I
    invoke-static {v3, v2}, Lcom/avos/avospush/push/AVPushRouter;->access$402(Lcom/avos/avospush/push/AVPushRouter;I)I

    .line 168
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "groupId"

    # getter for: Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avospush/push/AVPushRouter;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v2, "server"

    const-string v3, "server"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v2, "expireAt"

    iget-object v3, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    # getter for: Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I
    invoke-static {v3}, Lcom/avos/avospush/push/AVPushRouter;->access$400(Lcom/avos/avospush/push/AVPushRouter;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    # invokes: Lcom/avos/avospush/push/AVPushRouter;->cachePushServer(Ljava/util/HashMap;)V
    invoke-static {v2, v1}, Lcom/avos/avospush/push/AVPushRouter;->access$500(Lcom/avos/avospush/push/AVPushRouter;Ljava/util/HashMap;)V

    .line 173
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    # getter for: Lcom/avos/avospush/push/AVPushRouter;->pushRouterListener:Lcom/avos/avospush/push/AVPushRouterListener;
    invoke-static {v2}, Lcom/avos/avospush/push/AVPushRouter;->access$600(Lcom/avos/avospush/push/AVPushRouter;)Lcom/avos/avospush/push/AVPushRouterListener;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/avos/avospush/push/AVPushRouter$1;->val$installationId:Ljava/lang/String;

    invoke-interface {v2, v1, v3, v4}, Lcom/avos/avospush/push/AVPushRouterListener;->onResponse(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/avos/avospush/push/AVPushRouter;->updateInterval(I)V

    .line 176
    .end local v0    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
