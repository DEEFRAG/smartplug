.class final Lcom/avos/avoscloud/AVQuery$13;
.super Lcom/avos/avoscloud/CloudQueryCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->doCloudQuery(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lcom/avos/avoscloud/AVCloudQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/CloudQueryCallback",
        "<",
        "Lcom/avos/avoscloud/AVCloudQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$returnValue:Lcom/avos/avoscloud/AVCloudQueryResult;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V
    .locals 0

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$13;->val$returnValue:Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {p0}, Lcom/avos/avoscloud/CloudQueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "result"    # Lcom/avos/avoscloud/AVCloudQueryResult;
    .param p2, "parseException"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 1534
    if-eqz p2, :cond_0

    .line 1535
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 1540
    :goto_0
    return-void

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$13;->val$returnValue:Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVCloudQueryResult;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCloudQueryResult;->setCount(I)V

    .line 1538
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$13;->val$returnValue:Lcom/avos/avoscloud/AVCloudQueryResult;

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$13;->val$returnValue:Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVCloudQueryResult;->getResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    goto :goto_0
.end method
