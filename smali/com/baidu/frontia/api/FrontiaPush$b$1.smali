.class Lcom/baidu/frontia/api/FrontiaPush$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageListenerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPush$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/frontia/api/FrontiaPush$b;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/api/FrontiaPush$b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPush$b$1;->a:Lcom/baidu/frontia/api/FrontiaPush$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$b$1;->a:Lcom/baidu/frontia/api/FrontiaPush$b;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$b;->a(Lcom/baidu/frontia/api/FrontiaPush$b;)Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$b$1;->a:Lcom/baidu/frontia/api/FrontiaPush$b;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$b;->a(Lcom/baidu/frontia/api/FrontiaPush$b;)Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$b$1;->a:Lcom/baidu/frontia/api/FrontiaPush$b;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$b;->a(Lcom/baidu/frontia/api/FrontiaPush$b;)Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$b$1;->a:Lcom/baidu/frontia/api/FrontiaPush$b;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$b;->a(Lcom/baidu/frontia/api/FrontiaPush$b;)Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;

    move-result-object v0

    new-instance v1, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;

    invoke-direct {v1, p1}, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;)V

    invoke-interface {v0, v1}, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;->onSuccess(Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;)V

    :cond_0
    return-void
.end method
