.class Lcom/avos/avoscloud/search/AVSearchQuery$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVSearchQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/search/AVSearchQuery;->getSearchResult(Lcom/loopj/android/http/RequestParams;ZLcom/avos/avoscloud/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/search/AVSearchQuery;

.field final synthetic val$callback:Lcom/avos/avoscloud/FindCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/search/AVSearchQuery;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery$2;->this$0:Lcom/avos/avoscloud/search/AVSearchQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/search/AVSearchQuery$2;->val$callback:Lcom/avos/avoscloud/FindCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery$2;->val$callback:Lcom/avos/avoscloud/FindCallback;

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FindCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 181
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery$2;->val$callback:Lcom/avos/avoscloud/FindCallback;

    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchQuery$2;->this$0:Lcom/avos/avoscloud/search/AVSearchQuery;

    # invokes: Lcom/avos/avoscloud/search/AVSearchQuery;->processContent(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, p1}, Lcom/avos/avoscloud/search/AVSearchQuery;->access$000(Lcom/avos/avoscloud/search/AVSearchQuery;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/avos/avoscloud/FindCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/avos/avoscloud/search/AVSearchQuery$2;->val$callback:Lcom/avos/avoscloud/FindCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/avos/avoscloud/FindCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
