.class Lcom/avos/avoscloud/AVFriendshipQuery;
.super Lcom/avos/avoscloud/AVQuery;
.source "AVFriendshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVUser;",
        ">",
        "Lcom/avos/avoscloud/AVQuery",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private friendshipTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "theClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 17
    return-void
.end method

.method private processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 46
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 50
    .local v1, "resp":Lcom/avos/avoscloud/AVFollowResponse;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    check-cast v1, Lcom/avos/avoscloud/AVFollowResponse;

    .line 51
    .restart local v1    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    iget-object v2, v1, Lcom/avos/avoscloud/AVFollowResponse;->results:[Ljava/util/Map;

    invoke-direct {p0, v2, v0, p2}, Lcom/avos/avoscloud/AVFriendshipQuery;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/util/Map;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/Map;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 29
    .local v2, "item":Ljava/util/Map;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFriendshipQuery;->getClazz()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFriendshipQuery;->getClazz()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVUser;

    .line 36
    .local v4, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    :goto_1
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 38
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .end local v4    # "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFriendshipQuery;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVUser;

    .restart local v4    # "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    goto :goto_1

    .line 42
    .end local v2    # "item":Ljava/util/Map;
    .end local v4    # "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    :cond_2
    return-void
.end method


# virtual methods
.method getFriendshipTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->friendshipTag:Ljava/lang/String;

    return-object v0
.end method

.method protected processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->friendshipTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;->processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method setFriendshipTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 20
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->friendshipTag:Ljava/lang/String;

    .line 21
    return-void
.end method
