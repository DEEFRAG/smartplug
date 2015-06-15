.class Lcom/avos/avoscloud/AVObject$24;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVObject$KeyValueCallback",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$unique:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 2209
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$24;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$24;->val$value:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/avos/avoscloud/AVObject$24;->val$unique:Z

    iput-object p4, p0, Lcom/avos/avoscloud/AVObject$24;->val$key:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V

    return-void
.end method


# virtual methods
.method public applyOp(Lcom/avos/avoscloud/AVKeyValues;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVKeyValues",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2227
    .local p1, "kvs":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<Ljava/util/Collection<Ljava/lang/Object;>;>;"
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject$24;->val$unique:Z

    if-eqz v0, :cond_1

    .line 2228
    iget-object v0, p1, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$24;->val$value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2229
    iget-object v0, p1, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$24;->val$value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2232
    :cond_1
    iget-object v0, p1, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$24;->val$value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2213
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$24;->val$value:Ljava/lang/Object;

    instance-of v0, v2, Lcom/avos/avoscloud/AVObject;

    .line 2214
    .local v0, "isPointer":Z
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$24;->val$value:Ljava/lang/Object;

    .line 2215
    .local v1, "realValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 2216
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$24;->val$value:Ljava/lang/Object;

    check-cast v2, Lcom/avos/avoscloud/AVObject;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    .line 2218
    .end local v1    # "realValue":Ljava/lang/Object;
    :cond_0
    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject$24;->val$unique:Z

    if-eqz v2, :cond_1

    .line 2219
    new-instance v2, Lcom/avos/avoscloud/ops/AddUniqueOp;

    iget-object v3, p0, Lcom/avos/avoscloud/AVObject$24;->val$key:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/avos/avoscloud/ops/AddUniqueOp;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2221
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/avos/avoscloud/ops/AddOp;

    iget-object v3, p0, Lcom/avos/avoscloud/AVObject$24;->val$key:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/avos/avoscloud/ops/AddOp;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic initValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2209
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject$24;->initValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public initValue()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
