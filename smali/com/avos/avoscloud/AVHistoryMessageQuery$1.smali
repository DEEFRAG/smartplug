.class Lcom/avos/avoscloud/AVHistoryMessageQuery$1;
.super Ljava/lang/Object;
.source "AVHistoryMessageQuery.java"

# interfaces
.implements Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVHistoryMessageQuery;->find()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVHistoryMessageQuery;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVHistoryMessageQuery;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$1;->this$0:Lcom/avos/avoscloud/AVHistoryMessageQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .param p2, "error"    # Lcom/avos/avoscloud/AVException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVHistoryMessage;",
            ">;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVHistoryMessage;>;"
    if-nez p2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$1;->val$result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
