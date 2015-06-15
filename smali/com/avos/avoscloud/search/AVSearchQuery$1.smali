.class Lcom/avos/avoscloud/search/AVSearchQuery$1;
.super Lcom/avos/avoscloud/FindCallback;
.source "AVSearchQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/search/AVSearchQuery;->find()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/FindCallback",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/search/AVSearchQuery;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/search/AVSearchQuery;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/avos/avoscloud/search/AVSearchQuery$1;->this$0:Lcom/avos/avoscloud/search/AVSearchQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/search/AVSearchQuery$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Lcom/avos/avoscloud/FindCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .param p2, "parseException"    # Lcom/avos/avoscloud/AVException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "parseObjects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchQuery$1;->val$result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
