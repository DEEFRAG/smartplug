.class final Lcom/avos/avoscloud/AVQuery$15;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$15;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$15;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$15;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$15;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/CloudQueryCallback;->done(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V

    .line 1666
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    const/4 v4, 0x0

    .line 1671
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$15;->val$clazz:Ljava/lang/Class;

    # invokes: Lcom/avos/avoscloud/AVQuery;->processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVQuery;->access$100(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object v1

    .line 1672
    .local v1, "result":Lcom/avos/avoscloud/AVCloudQueryResult;
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$15;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    if-eqz v2, :cond_0

    .line 1673
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$15;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/avos/avoscloud/CloudQueryCallback;->done(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    .end local v1    # "result":Lcom/avos/avoscloud/AVCloudQueryResult;
    :cond_0
    :goto_0
    return-void

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    .local v0, "processException":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$15;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    if-eqz v2, :cond_0

    .line 1677
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$15;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    invoke-static {v0, v4}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/avos/avoscloud/CloudQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
