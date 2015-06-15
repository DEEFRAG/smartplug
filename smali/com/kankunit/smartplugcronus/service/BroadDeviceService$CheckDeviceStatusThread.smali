.class Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;
.super Ljava/lang/Thread;
.source "BroadDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/BroadDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckDeviceStatusThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public check1K(Ljava/lang/String;)V
    .locals 10
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v9, "nopassowrd"

    .line 151
    .local v9, "pwd":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%check%request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    invoke-static {v2, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 155
    .local v8, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v6, 0x0

    .line 156
    .local v6, "b":Z
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 157
    const/4 v6, 0x1

    .line 159
    :cond_0
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$3(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0xb156

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 160
    .local v0, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 161
    return-void
.end method

.method public check2K(Ljava/lang/String;)V
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 168
    const-string v4, "%nopassword%check%relay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "message":Ljava/lang/String;
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 113
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$0(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v5

    const-class v6, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5, v6}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 142
    const-wide/32 v5, 0xea60

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->run()V

    .line 147
    return-void

    .line 115
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 116
    .local v4, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    invoke-static {v6, v4}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$1(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 117
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;

    move-result-object v6

    iget-object v6, v6, Lcom/kankunit/smartplugcronus/util/TaskLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 118
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 119
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->check1K(Ljava/lang/String;)V

    .line 125
    :try_start_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;

    move-result-object v6

    iget-object v6, v6, Lcom/kankunit/smartplugcronus/util/TaskLock;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v7, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7, v8, v9}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 126
    .local v0, "b":Z
    if-nez v0, :cond_2

    .line 127
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 128
    .local v3, "message":Landroid/os/Message;
    const/16 v6, 0x70

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 129
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$3(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    .end local v3    # "message":Landroid/os/Message;
    :cond_2
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;

    move-result-object v6

    iget-object v6, v6, Lcom/kankunit/smartplugcronus/util/TaskLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .end local v0    # "b":Z
    :goto_2
    const-wide/16 v6, 0xbb8

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v2    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 133
    .restart local v2    # "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 143
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v4    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :catch_2
    move-exception v2

    .line 144
    .restart local v2    # "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
