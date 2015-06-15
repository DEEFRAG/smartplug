.class final Lcom/avos/avoscloud/AVObject$17;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$objects:Ljava/util/List;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    iput-boolean p2, p0, Lcom/avos/avoscloud/AVObject$17;->val$sync:Z

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1600
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v2, :cond_0

    .line 1601
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1602
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 1603
    .local v1, "o":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->onSaveFailure()V

    goto :goto_0

    .line 1605
    .end local v1    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 1606
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    const/4 v4, 0x0

    .line 1555
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/avos/avoscloud/AVObject;

    .line 1556
    .local v9, "o":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v9, p1}, Lcom/avos/avoscloud/AVObject;->copyFromJson(Ljava/lang/String;)V

    goto :goto_0

    .line 1558
    .end local v9    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 1559
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1560
    .local v1, "list":Ljava/util/LinkedList;
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/avos/avoscloud/AVObject;

    .line 1562
    .restart local v9    # "o":Lcom/avos/avoscloud/AVObject;
    # invokes: Lcom/avos/avoscloud/AVObject;->addPendingBatchRequest(Ljava/util/LinkedList;)V
    invoke-static {v9, v1}, Lcom/avos/avoscloud/AVObject;->access$400(Lcom/avos/avoscloud/AVObject;Ljava/util/LinkedList;)V

    goto :goto_1

    .line 1564
    .end local v9    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1565
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject$17;->val$sync:Z

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVObject$17$1;

    invoke-direct {v5, p0}, Lcom/avos/avoscloud/AVObject$17$1;-><init>(Lcom/avos/avoscloud/AVObject$17;)V

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    :cond_2
    :goto_2
    return-void

    .line 1589
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_2

    .line 1590
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/avos/avoscloud/AVObject;

    .line 1591
    .restart local v9    # "o":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v9}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    goto :goto_3

    .line 1593
    .end local v9    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, v4}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_2
.end method
