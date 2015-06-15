.class Lcom/avos/avoscloud/AVUser$27;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->getFollowersAndFolloweesInBackground(Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/FollowersAndFolloweesCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V
    .locals 0

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$27;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FollowersAndFolloweesCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1619
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FollowersAndFolloweesCallback;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FollowersAndFolloweesCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FollowersAndFolloweesCallback;->internalDone0(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V

    .line 1623
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 1610
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 1611
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$27;->this$0:Lcom/avos/avoscloud/AVUser;

    # invokes: Lcom/avos/avoscloud/AVUser;->processFollowerAndFollowee(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v1, p1}, Lcom/avos/avoscloud/AVUser;->access$100(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1612
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FollowersAndFolloweesCallback;

    if-eqz v1, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FollowersAndFolloweesCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/FollowersAndFolloweesCallback;->internalDone0(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V

    .line 1615
    :cond_0
    return-void
.end method
