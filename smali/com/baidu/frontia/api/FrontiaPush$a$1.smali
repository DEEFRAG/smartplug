.class Lcom/baidu/frontia/api/FrontiaPush$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPush$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/frontia/api/FrontiaPush$a;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/api/FrontiaPush$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPush$a$1;->a:Lcom/baidu/frontia/api/FrontiaPush$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$a$1;->a:Lcom/baidu/frontia/api/FrontiaPush$a;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$a;->a(Lcom/baidu/frontia/api/FrontiaPush$a;)Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$a$1;->a:Lcom/baidu/frontia/api/FrontiaPush$a;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$a;->a(Lcom/baidu/frontia/api/FrontiaPush$a;)Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$a$1;->a:Lcom/baidu/frontia/api/FrontiaPush$a;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$a;->a(Lcom/baidu/frontia/api/FrontiaPush$a;)Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$a$1;->a:Lcom/baidu/frontia/api/FrontiaPush$a;

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush$a;->a(Lcom/baidu/frontia/api/FrontiaPush$a;)Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;->onSuccess()V

    :cond_0
    return-void
.end method
