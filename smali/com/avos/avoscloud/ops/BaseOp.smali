.class public abstract Lcom/avos/avoscloud/ops/BaseOp;
.super Ljava/lang/Object;
.source "BaseOp.java"

# interfaces
.implements Lcom/avos/avoscloud/ops/AVOp;


# instance fields
.field protected key:Ljava/lang/String;

.field protected ops:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation
.end field

.field protected type:Lcom/avos/avoscloud/ops/AVOp$OpType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/avos/avoscloud/ops/AVOp$OpType;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    .line 41
    iput-object p1, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/avos/avoscloud/ops/BaseOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    .line 43
    return-void
.end method


# virtual methods
.method public apply(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;
    .locals 3
    .param p1, "obj"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 90
    iget-object v2, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/ops/AVOp;

    .line 92
    .local v1, "op":Lcom/avos/avoscloud/ops/AVOp;
    invoke-interface {v1, p1}, Lcom/avos/avoscloud/ops/AVOp;->apply(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;

    move-result-object p1

    .line 93
    goto :goto_0

    .line 95
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "op":Lcom/avos/avoscloud/ops/AVOp;
    :cond_0
    return-object p1
.end method

.method public assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 2
    .param p1, "other"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 100
    sget-object v0, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    if-eq p1, v0, :cond_0

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->key()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    return-void
.end method

.method public cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    return-object v0
.end method

.method public get(I)Lcom/avos/avoscloud/ops/AVOp;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    .line 123
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    goto :goto_0

    .line 120
    :cond_1
    if-nez p1, :cond_2

    move-object v0, p0

    .line 121
    goto :goto_0

    .line 123
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    goto :goto_0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    return-object v0
.end method

.method getOps()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    return-object v0
.end method

.method getType()Lcom/avos/avoscloud/ops/AVOp$OpType;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 2
    .param p1, "other"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/BaseOp;->assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 64
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    .line 67
    :cond_0
    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/ops/AVOp$OpType;->Compound:Lcom/avos/avoscloud/ops/AVOp$OpType;

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    const-class v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/CompoundOp;

    iget-object v0, v0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 72
    :goto_0
    return-object p0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(I)Lcom/avos/avoscloud/ops/AVOp;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    .line 85
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    .line 59
    return-void
.end method

.method setOps(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "ops":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/avos/avoscloud/ops/AVOp;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    .line 28
    return-void
.end method

.method setType(Lcom/avos/avoscloud/ops/AVOp$OpType;)V
    .locals 0
    .param p1, "type"    # Lcom/avos/avoscloud/ops/AVOp$OpType;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/avos/avoscloud/ops/BaseOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    .line 20
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public type()Lcom/avos/avoscloud/ops/AVOp$OpType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-object v0
.end method
