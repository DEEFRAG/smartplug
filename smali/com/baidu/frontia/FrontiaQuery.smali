.class public Lcom/baidu/frontia/FrontiaQuery;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/frontia/FrontiaQuery$SortOrder;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-direct {v0}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-void
.end method


# virtual methods
.method a(Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-void
.end method

.method public addSort(Ljava/lang/String;Lcom/baidu/frontia/FrontiaQuery$SortOrder;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 2

    sget-object v0, Lcom/baidu/frontia/FrontiaQuery$SortOrder;->ASC:Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    sget-object v1, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl$SortOrder;->ASC:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl$SortOrder;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->addSort(Ljava/lang/String;Lcom/baidu/frontia/base/impl/FrontiaQueryImpl$SortOrder;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    sget-object v1, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl$SortOrder;->DESC:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl$SortOrder;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->addSort(Ljava/lang/String;Lcom/baidu/frontia/base/impl/FrontiaQueryImpl$SortOrder;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    goto :goto_0
.end method

.method public all(Ljava/lang/String;[Ljava/lang/Object;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->all(Ljava/lang/String;[Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public and(Lcom/baidu/frontia/FrontiaQuery;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 2

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    iget-object v1, p1, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, v1}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->and(Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public endsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->endsWith(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->equals(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public getLimit()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->getLimit()I

    move-result v0

    return v0
.end method

.method public getSkip()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->getSkip()I

    move-result v0

    return v0
.end method

.method public getSort()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->getSort()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public greaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->greaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public greaterThanEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->greaterThanEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Object;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->in(Ljava/lang/String;[Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->lessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public lessThanEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->lessThanEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public not()Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->not()Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public notEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->notEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public notIn(Ljava/lang/String;[Ljava/lang/Object;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->notIn(Ljava/lang/String;[Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public or(Lcom/baidu/frontia/FrontiaQuery;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 2

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    iget-object v1, p1, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, v1}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->or(Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public regEx(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->regEx(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public setLimit(I)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->setLimit(I)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public setSkip(I)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->setSkip(I)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public size(Ljava/lang/String;I)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->size(Ljava/lang/String;I)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public startsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/frontia/FrontiaQuery;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->startsWith(Ljava/lang/String;Ljava/lang/Object;)Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    return-object p0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/FrontiaQuery;->a:Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/base/impl/FrontiaQueryImpl;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
