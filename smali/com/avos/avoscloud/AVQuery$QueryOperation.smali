.class public Lcom/avos/avoscloud/AVQuery$QueryOperation;
.super Ljava/lang/Object;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryOperation"
.end annotation


# static fields
.field static final EQUAL_OP:Ljava/lang/String; = "__eq"

.field static final OR_OP:Ljava/lang/String; = "$or"


# instance fields
.field key:Ljava/lang/String;

.field op:Ljava/lang/String;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    .line 1427
    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    .line 1428
    iput-object p3, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->value:Ljava/lang/Object;

    .line 1429
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1467
    if-ne p0, p1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return v1

    .line 1468
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 1469
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1470
    check-cast v0, Lcom/avos/avoscloud/AVQuery$QueryOperation;

    .line 1471
    .local v0, "other":Lcom/avos/avoscloud/AVQuery$QueryOperation;
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 1472
    iget-object v3, v0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 1473
    :cond_4
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 1474
    :cond_5
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 1475
    iget-object v3, v0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 1476
    :cond_6
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    iget-object v4, v0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 1477
    :cond_7
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->value:Ljava/lang/Object;

    if-nez v3, :cond_8

    .line 1478
    iget-object v3, v0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 1479
    :cond_8
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->value:Ljava/lang/Object;

    iget-object v4, v0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1457
    const/16 v0, 0x1f

    .line 1458
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1459
    .local v1, "result":I
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 1460
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 1461
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->value:Ljava/lang/Object;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 1462
    return v1

    .line 1459
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1460
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 1461
    :cond_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public sameOp(Lcom/avos/avoscloud/AVQuery$QueryOperation;)Z
    .locals 2
    .param p1, "other"    # Lcom/avos/avoscloud/AVQuery$QueryOperation;

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/avos/avoscloud/AVQuery$QueryOperation;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    iget-object v1, p1, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toResult()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    const-string v2, "__eq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    const-string v2, "$or"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->value:Ljava/lang/Object;

    .line 1441
    :goto_0
    return-object v0

    .line 1439
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1440
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->op:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$QueryOperation;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1447
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery$QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    return-object v0
.end method
