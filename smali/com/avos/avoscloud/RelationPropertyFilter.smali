.class public Lcom/avos/avoscloud/RelationPropertyFilter;
.super Ljava/lang/Object;
.source "RelationPropertyFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ValueFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .prologue
    .line 11
    instance-of v2, p3, Lcom/avos/avoscloud/AVKeyValues;

    if-eqz v2, :cond_0

    move-object v1, p3

    .line 12
    check-cast v1, Lcom/avos/avoscloud/AVKeyValues;

    .line 13
    .local v1, "kv":Lcom/avos/avoscloud/AVKeyValues;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVKeyValues;->isRelationKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    new-instance v0, Lcom/avos/avoscloud/AVKeyValues;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVKeyValues;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVKeyValues;->getOp()Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/avos/avoscloud/AVKeyValues;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/avos/avoscloud/ops/AVOp;)V

    .line 15
    .local v0, "emtpyKV":Lcom/avos/avoscloud/AVKeyValues;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVKeyValues;->getRelationClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVKeyValues;->setRelationClassName(Ljava/lang/String;)V

    .line 19
    .end local v0    # "emtpyKV":Lcom/avos/avoscloud/AVKeyValues;
    .end local v1    # "kv":Lcom/avos/avoscloud/AVKeyValues;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method
