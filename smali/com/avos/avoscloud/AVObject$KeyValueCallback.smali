.class abstract Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.super Ljava/lang/Object;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "KeyValueCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/AVObject;)V
    .locals 0

    .prologue
    .line 1192
    .local p0, "this":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVObject$1;

    .prologue
    .line 1192
    .local p0, "this":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<TT;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;)V

    return-void
.end method


# virtual methods
.method public abstract applyOp(Lcom/avos/avoscloud/AVKeyValues;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVKeyValues",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract createOp()Lcom/avos/avoscloud/ops/AVOp;
.end method

.method public execute(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1195
    .local p0, "this":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 1196
    return-void
.end method

.method public execute(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pending"    # Z

    .prologue
    .line 1199
    .local p0, "this":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<TT;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVKeyValues;

    .line 1200
    .local v0, "kvs":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->createOp()Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v1

    .line 1201
    .local v1, "op":Lcom/avos/avoscloud/ops/AVOp;
    if-nez v0, :cond_0

    .line 1202
    new-instance v0, Lcom/avos/avoscloud/AVKeyValues;

    .end local v0    # "kvs":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->initValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/avos/avoscloud/AVKeyValues;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/avos/avoscloud/ops/AVOp;)V

    .line 1203
    .restart local v0    # "kvs":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    :goto_0
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->applyOp(Lcom/avos/avoscloud/AVKeyValues;)V

    .line 1208
    if-eqz p2, :cond_1

    sget-object v2, Lcom/avos/avoscloud/AVObject;->deserializing:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1209
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    # getter for: Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;
    invoke-static {v2}, Lcom/avos/avoscloud/AVObject;->access$200(Lcom/avos/avoscloud/AVObject;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1213
    :goto_1
    return-void

    .line 1205
    :cond_0
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVKeyValues;->addOp(Lcom/avos/avoscloud/ops/AVOp;)V

    goto :goto_0

    .line 1211
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    iput-object v2, v0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    goto :goto_1
.end method

.method public abstract initValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
