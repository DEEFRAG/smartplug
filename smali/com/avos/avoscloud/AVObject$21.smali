.class Lcom/avos/avoscloud/AVObject$21;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->addRelationFromServer(Ljava/lang/String;Ljava/lang/String;Z)V
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

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2129
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$21;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$21;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$21;->val$className:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V

    return-void
.end method


# virtual methods
.method public applyOp(Lcom/avos/avoscloud/AVKeyValues;)V
    .locals 1
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
    .line 2138
    .local p1, "kvs":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/avos/avoscloud/AVKeyValues;->relationKey:Z

    .line 2139
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$21;->val$className:Ljava/lang/String;

    iput-object v0, p1, Lcom/avos/avoscloud/AVKeyValues;->relationClassName:Ljava/lang/String;

    .line 2140
    return-void
.end method

.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 3

    .prologue
    .line 2133
    new-instance v0, Lcom/avos/avoscloud/ops/AddRelationOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$21;->val$key:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AddRelationOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/AVObject;)V

    return-object v0
.end method

.method public bridge synthetic initValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2129
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject$21;->initValue()Ljava/util/Set;

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
    .line 2144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method
