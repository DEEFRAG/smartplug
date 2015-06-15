.class public Lcom/kankunit/smartplugcronus/service/UpdateAppService$GetThread;
.super Ljava/lang/Thread;
.source "UpdateAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/UpdateAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$GetThread;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$GetThread;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    # invokes: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getServerVerCode()Z
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Z

    move-result v1

    .line 134
    .local v1, "result":Z
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 135
    .local v0, "msg":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 136
    const-string v2, "get ok"

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$GetThread;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$1(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void

    .line 138
    :cond_0
    const-string v2, "get error"

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
