.class public Lcom/avos/avoscloud/AVRelation;
.super Ljava/lang/Object;
.source "AVRelation.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    ignores = {
        "query"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private parent:Lcom/avos/avoscloud/AVObject;

.field private targetClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    .line 28
    iput-object p2, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetClass"    # Ljava/lang/String;

    .prologue
    .line 32
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static reverseQuery(Ljava/lang/Class;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .param p1, "relationKey"    # Ljava/lang/String;
    .param p2, "child"    # Lcom/avos/avoscloud/AVObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TM;>;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObject;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "theParentClazz":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 140
    .local v0, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TM;>;"
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 141
    return-object v0
.end method

.method public static reverseQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .param p0, "parentClassName"    # Ljava/lang/String;
    .param p1, "relationKey"    # Ljava/lang/String;
    .param p2, "child"    # Lcom/avos/avoscloud/AVObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObject;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TM;>;"
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 126
    return-object v0
.end method


# virtual methods
.method public add(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    .local p1, "object":Lcom/avos/avoscloud/AVObject;, "TT;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null AVObject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not add class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to this relation,expect class is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    iget-object v1, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->addRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 61
    .local v1, "obj":Lcom/avos/avoscloud/AVObject;, "TT;"
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVRelation;->add(Lcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    .line 64
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "obj":Lcom/avos/avoscloud/AVObject;, "TT;"
    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVRelation;->getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unable to encode an association with an unsaved AVObject"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    const-string v3, "please call AVRelation.setTargetClass() to set target class manually"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 97
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Target class does not exist"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_2
    new-instance v0, Lcom/avos/avoscloud/AVRelation$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVRelation$1;-><init>(Lcom/avos/avoscloud/AVRelation;)V

    .line 107
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "$relatedTo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 110
    .local v1, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const-string v3, "$relatedTo"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 111
    return-object v1
.end method

.method public getTargetClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 72
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    iget-object v1, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->removeRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "newKey"    # Ljava/lang/String;

    .prologue
    .line 149
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    .line 150
    return-void
.end method

.method setParent(Lcom/avos/avoscloud/AVObject;)V
    .locals 0
    .param p1, "newParent"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 153
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    .line 154
    return-void
.end method

.method public setTargetClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "newTargetClass"    # Ljava/lang/String;

    .prologue
    .line 165
    .local p0, "this":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    .line 166
    return-void
.end method
