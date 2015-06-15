.class Lcom/baidu/frontia/api/FrontiaPush$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$ListMessageListenerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPush$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/frontia/api/FrontiaPush$c;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/api/FrontiaPush$c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPush$c$1;->a:Lcom/baidu/frontia/api/FrontiaPush$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$c$1;->a:Lcom/baidu/frontia/api/FrontiaPush$c;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$c;->a(Lcom/baidu/frontia/api/FrontiaPush$c;)Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$c$1;->a:Lcom/baidu/frontia/api/FrontiaPush$c;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$c;->a(Lcom/baidu/frontia/api/FrontiaPush$c;)Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$c$1;->a:Lcom/baidu/frontia/api/FrontiaPush$c;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$c;->a(Lcom/baidu/frontia/api/FrontiaPush$c;)Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;

    invoke-direct {v3, v0}, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$c$1;->a:Lcom/baidu/frontia/api/FrontiaPush$c;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$c;->a(Lcom/baidu/frontia/api/FrontiaPush$c;)Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;->onSuccess(Ljava/util/List;)V

    :cond_1
    return-void
.end method
