.class Lcom/avos/avoscloud/AVObject$23;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->removeRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVObject$KeyValueCallback",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$object:Lcom/avos/avoscloud/AVObject;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V
    .locals 1

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$23;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$23;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$23;->val$object:Lcom/avos/avoscloud/AVObject;

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
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2191
    .local p1, "kvs":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/avos/avoscloud/AVKeyValues;->relationKey:Z

    .line 2192
    iget-object v0, p1, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$23;->val$object:Lcom/avos/avoscloud/AVObject;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$23;->val$object:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/avos/avoscloud/AVKeyValues;->relationClassName:Ljava/lang/String;

    .line 2195
    :cond_0
    return-void
.end method

.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 5

    .prologue
    .line 2186
    new-instance v0, Lcom/avos/avoscloud/ops/RemoveRelationOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$23;->val$key:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/avos/avoscloud/AVObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/AVObject$23;->val$object:Lcom/avos/avoscloud/AVObject;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/RemoveRelationOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/AVObject;)V

    return-object v0
.end method

.method public bridge synthetic initValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2182
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject$23;->initValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initValue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method
