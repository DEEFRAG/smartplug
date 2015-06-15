.class Lcom/avos/avoscloud/AVUser$26;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->getMyFolloweesInBackground(Lcom/avos/avoscloud/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/FindCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$26;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$26;->val$callback:Lcom/avos/avoscloud/FindCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1593
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1594
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$26;->val$callback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$26;->val$callback:Lcom/avos/avoscloud/FindCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FindCallback;->internalDone0(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 1597
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 1584
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 1585
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$26;->this$0:Lcom/avos/avoscloud/AVUser;

    const-string v2, "followee"

    # invokes: Lcom/avos/avoscloud/AVUser;->processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, p1, v2}, Lcom/avos/avoscloud/AVUser;->access$000(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1586
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$26;->val$callback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v1, :cond_0

    .line 1587
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$26;->val$callback:Lcom/avos/avoscloud/FindCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/FindCallback;->internalDone0(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 1589
    :cond_0
    return-void
.end method
