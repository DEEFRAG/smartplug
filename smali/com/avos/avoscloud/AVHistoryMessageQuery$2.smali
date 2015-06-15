.class Lcom/avos/avoscloud/AVHistoryMessageQuery$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVHistoryMessageQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVHistoryMessageQuery;->findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVHistoryMessageQuery;

.field final synthetic val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVHistoryMessageQuery;Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->this$0:Lcom/avos/avoscloud/AVHistoryMessageQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 160
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->this$0:Lcom/avos/avoscloud/AVHistoryMessageQuery;

    # invokes: Lcom/avos/avoscloud/AVHistoryMessageQuery;->processResults(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, p1}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->access$000(Lcom/avos/avoscloud/AVHistoryMessageQuery;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 162
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVHistoryMessage;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    invoke-interface {v1, v0, p2}, Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 166
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVHistoryMessage;>;"
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
