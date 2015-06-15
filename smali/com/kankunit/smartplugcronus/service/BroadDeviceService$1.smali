.class Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;
.super Landroid/os/Handler;
.source "BroadDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x4

    .line 76
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_2

    .line 77
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;

    move-result-object v2

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/util/TaskLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "backString":Ljava/lang/String;
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "arr":[Ljava/lang/String;
    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v2, v0, v4

    const-string v3, "rack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$4(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$4(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 84
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$4(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$4(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setTime(J)V

    .line 86
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$0(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$4(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 90
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "backString":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;

    move-result-object v2

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/util/TaskLock;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 91
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;

    move-result-object v2

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/util/TaskLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1

    .line 94
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;

    move-result-object v2

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/util/TaskLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 95
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$4(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$4(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 97
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$0(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$4(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;

    move-result-object v2

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/util/TaskLock;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 100
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;

    move-result-object v2

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/util/TaskLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method
