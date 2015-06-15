.class Lcom/avos/avoscloud/AVQuery$8;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/GetCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V
    .locals 0

    .prologue
    .line 786
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$8;, "Lcom/avos/avoscloud/AVQuery.8;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$8;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 810
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$8;, "Lcom/avos/avoscloud/AVQuery.8;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 813
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$8;, "Lcom/avos/avoscloud/AVQuery.8;"
    const/4 v6, 0x0

    .line 790
    :try_start_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$8;->this$0:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v4, p1}, Lcom/avos/avoscloud/AVQuery;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 791
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v4, :cond_0

    .line 792
    const/4 v2, 0x0

    .line 793
    .local v2, "first":Lcom/avos/avoscloud/AVObject;, "TT;"
    const/4 v0, 0x0

    .line 794
    .local v0, "error":Lcom/avos/avoscloud/AVException;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 795
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "first":Lcom/avos/avoscloud/AVObject;, "TT;"
    check-cast v2, Lcom/avos/avoscloud/AVObject;

    .line 799
    .restart local v2    # "first":Lcom/avos/avoscloud/AVObject;, "TT;"
    :goto_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-virtual {v4, v2, v0}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v0    # "error":Lcom/avos/avoscloud/AVException;
    .end local v2    # "first":Lcom/avos/avoscloud/AVObject;, "TT;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :goto_1
    return-void

    .line 797
    .restart local v0    # "error":Lcom/avos/avoscloud/AVException;
    .restart local v2    # "first":Lcom/avos/avoscloud/AVObject;, "TT;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 801
    .end local v0    # "error":Lcom/avos/avoscloud/AVException;
    .end local v2    # "first":Lcom/avos/avoscloud/AVObject;, "TT;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_0
    move-exception v1

    .line 802
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v4, :cond_0

    .line 803
    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-static {v1, v6}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_1
.end method
