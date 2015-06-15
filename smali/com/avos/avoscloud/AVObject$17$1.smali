.class Lcom/avos/avoscloud/AVObject$17$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject$17;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject$17;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject$17;)V
    .locals 0

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$17$1;->this$0:Lcom/avos/avoscloud/AVObject$17;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1580
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17$1;->this$0:Lcom/avos/avoscloud/AVObject$17;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v2, :cond_0

    .line 1581
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17$1;->this$0:Lcom/avos/avoscloud/AVObject$17;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1582
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17$1;->this$0:Lcom/avos/avoscloud/AVObject$17;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

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

    .line 1583
    .local v1, "o":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->onSaveFailure()V

    goto :goto_0

    .line 1585
    .end local v1    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 1586
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 1569
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17$1;->this$0:Lcom/avos/avoscloud/AVObject$17;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 1570
    .local v1, "o":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AVObject;->copyFromJson(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    goto :goto_0

    .line 1573
    .end local v1    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17$1;->this$0:Lcom/avos/avoscloud/AVObject$17;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v2, :cond_1

    .line 1574
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17$1;->this$0:Lcom/avos/avoscloud/AVObject$17;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1576
    :cond_1
    return-void
.end method
