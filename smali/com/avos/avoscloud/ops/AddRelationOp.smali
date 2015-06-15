.class public Lcom/avos/avoscloud/ops/AddRelationOp;
.super Lcom/avos/avoscloud/ops/BaseOp;
.source "AddRelationOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/ops/AddRelationOp$1;
    }
.end annotation


# instance fields
.field private values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/BaseOp;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    .line 16
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/avos/avoscloud/AVObject;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # [Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 27
    sget-object v4, Lcom/avos/avoscloud/ops/AVOp$OpType;->AddRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-direct {p0, p1, v4}, Lcom/avos/avoscloud/ops/BaseOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 12
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    .line 28
    if-eqz p2, :cond_0

    .line 29
    move-object v0, p2

    .local v0, "arr$":[Lcom/avos/avoscloud/AVObject;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 30
    .local v3, "obj":Lcom/avos/avoscloud/AVObject;
    iget-object v4, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "arr$":[Lcom/avos/avoscloud/AVObject;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "obj":Lcom/avos/avoscloud/AVObject;
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;
    .locals 3
    .param p1, "obj"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 37
    iget-object v2, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 38
    .local v1, "val":Lcom/avos/avoscloud/AVObject;
    iget-object v2, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/avos/avoscloud/AVObject;->getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/AVRelation;->add(Lcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    .line 40
    .end local v1    # "val":Lcom/avos/avoscloud/AVObject;
    :cond_0
    return-object p1
.end method

.method public encodeOp()Ljava/util/Map;
    .locals 3
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
    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-virtual {v1}, Lcom/avos/avoscloud/ops/AVOp$OpType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVUtils;->createPointerArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getValues()Ljava/util/Set;
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
    .line 19
    iget-object v0, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 4
    .param p1, "other"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/AddRelationOp;->assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 51
    sget-object v0, Lcom/avos/avoscloud/ops/AddRelationOp$1;->$SwitchMap$com$avos$avoscloud$ops$AVOp$OpType:[I

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/ops/AVOp$OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow op type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object p1, p0

    .line 70
    .end local p1    # "other":Lcom/avos/avoscloud/ops/AVOp;
    :goto_0
    :pswitch_1
    return-object p1

    .line 57
    .restart local p1    # "other":Lcom/avos/avoscloud/ops/AVOp;
    :pswitch_2
    iget-object v1, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    const-class v0, Lcom/avos/avoscloud/ops/AddRelationOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AddRelationOp;

    iget-object v0, v0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, p0

    .line 58
    goto :goto_0

    .line 63
    :pswitch_3
    new-instance v0, Lcom/avos/avoscloud/ops/CompoundOp;

    iget-object v1, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->key:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/avos/avoscloud/ops/AVOp;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/CompoundOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/ops/AVOp;)V

    move-object p1, v0

    goto :goto_0

    .line 65
    :pswitch_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Could not increment an non-numberic value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_5
    const-class v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/ops/CompoundOp;->addFirst(Lcom/avos/avoscloud/ops/AVOp;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method setValues(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    .line 24
    return-void
.end method
