.class public Lcom/avos/avoscloud/ops/CompoundOp;
.super Lcom/avos/avoscloud/ops/BaseOp;
.source "CompoundOp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/BaseOp;-><init>()V

    .line 15
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "avOps"    # [Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 18
    sget-object v4, Lcom/avos/avoscloud/ops/AVOp$OpType;->Compound:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-direct {p0, p1, v4}, Lcom/avos/avoscloud/ops/BaseOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 19
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    .line 20
    if-eqz p2, :cond_0

    .line 21
    move-object v0, p2

    .local v0, "arr$":[Lcom/avos/avoscloud/ops/AVOp;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 22
    .local v3, "op":Lcom/avos/avoscloud/ops/AVOp;
    iget-object v4, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "arr$":[Lcom/avos/avoscloud/ops/AVOp;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "op":Lcom/avos/avoscloud/ops/AVOp;
    :cond_0
    return-void
.end method


# virtual methods
.method public addFirst(Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 1
    .param p1, "object"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public addLast(Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 1
    .param p1, "object"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public encodeOp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeFirst()Lcom/avos/avoscloud/ops/AVOp;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    return-object v0
.end method

.method public removeLast()Lcom/avos/avoscloud/ops/AVOp;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    return-object v0
.end method
