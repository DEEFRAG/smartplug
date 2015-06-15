.class public Lcom/avos/avoscloud/ops/SetOp;
.super Lcom/avos/avoscloud/ops/BaseOp;
.source "SetOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/ops/SetOp$1;
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/BaseOp;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 32
    sget-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Set:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/ops/BaseOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 33
    iput-object p2, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public apply(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p1, "obj"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/ops/SetOp;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, p1}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
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
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/ops/SetOp;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 6
    .param p1, "other"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/SetOp;->assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 52
    sget-object v2, Lcom/avos/avoscloud/ops/SetOp$1;->$SwitchMap$com$avos$avoscloud$ops$AVOp$OpType:[I

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/ops/AVOp$OpType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 78
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknow op type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :pswitch_0
    const-class v2, Lcom/avos/avoscloud/ops/SetOp;

    invoke-interface {p1, v2}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/ops/SetOp;

    iget-object v2, v2, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    iput-object v2, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    .line 76
    .end local p0    # "this":Lcom/avos/avoscloud/ops/SetOp;
    :goto_0
    :pswitch_1
    return-object p0

    .line 63
    .restart local p0    # "this":Lcom/avos/avoscloud/ops/SetOp;
    :pswitch_2
    new-instance v2, Lcom/avos/avoscloud/ops/CompoundOp;

    iget-object v3, p0, Lcom/avos/avoscloud/ops/SetOp;->key:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/avos/avoscloud/ops/AVOp;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/avos/avoscloud/ops/CompoundOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/ops/AVOp;)V

    move-object p0, v2

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v2, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not increment non-numberic value."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 69
    .local v0, "v":J
    const-class v2, Lcom/avos/avoscloud/ops/IncrementOp;

    invoke-interface {p1, v2}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/ops/IncrementOp;

    iget-object v2, v2, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "v":J
    :pswitch_4
    move-object p0, p1

    .line 73
    goto :goto_0

    .line 75
    :pswitch_5
    const-class v2, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-interface {p1, v2}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-virtual {v2, p0}, Lcom/avos/avoscloud/ops/CompoundOp;->addFirst(Lcom/avos/avoscloud/ops/AVOp;)V

    move-object p0, p1

    .line 76
    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method
