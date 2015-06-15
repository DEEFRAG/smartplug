.class Lcom/avos/avoscloud/AVObject$14;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVObject$KeyValueCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$values:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$14;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$14;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$14;->val$values:Ljava/util/Collection;

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
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1446
    .local p1, "kvs":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<Ljava/util/List<Ljava/lang/Object;>;>;"
    iget-object v0, p1, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$14;->val$values:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1447
    return-void
.end method

.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 3

    .prologue
    .line 1441
    new-instance v0, Lcom/avos/avoscloud/ops/RemoveOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$14;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$14;->val$values:Ljava/util/Collection;

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/RemoveOp;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic initValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject$14;->initValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
