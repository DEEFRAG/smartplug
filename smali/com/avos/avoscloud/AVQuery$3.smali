.class Lcom/avos/avoscloud/AVQuery$3;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/CountCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/CountCallback;)V
    .locals 0

    .prologue
    .line 497
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$3;, "Lcom/avos/avoscloud/AVQuery.3;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$3;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$3;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 513
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$3;, "Lcom/avos/avoscloud/AVQuery.3;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$3;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$3;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 516
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 501
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$3;, "Lcom/avos/avoscloud/AVQuery.3;"
    :try_start_0
    const-class v2, Lcom/avos/avoscloud/AVResponse;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVResponse;

    .line 502
    .local v1, "resp":Lcom/avos/avoscloud/AVResponse;
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$3;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$3;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    iget v3, v1, Lcom/avos/avoscloud/AVResponse;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v1    # "resp":Lcom/avos/avoscloud/AVResponse;
    :cond_0
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "jsonParseException":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$3;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    const-string v3, "Exception during response parse"

    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/CountCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
