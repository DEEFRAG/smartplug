.class Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "updateRunnable"
.end annotation


# instance fields
.field message:Landroid/os/Message;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/UpdateService;)V
    .locals 1

    .prologue
    .line 204
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$6(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->message:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 208
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->message:Landroid/os/Message;

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateDir:Ljava/io/File;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$7(Lcom/kankunit/smartplugcronus/service/UpdateService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateDir:Ljava/io/File;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$7(Lcom/kankunit/smartplugcronus/service/UpdateService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateFile:Ljava/io/File;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateFile:Ljava/io/File;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    .line 221
    const-string v4, "http://app.ikonke.com/ikonke.apk"

    .line 222
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateFile:Ljava/io/File;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateService;)Ljava/io/File;

    move-result-object v5

    .line 220
    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/service/UpdateService;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    .line 223
    .local v0, "downloadSize":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 225
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$6(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->message:Landroid/os/Message;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "downloadSize":J
    :cond_2
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->message:Landroid/os/Message;

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 231
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$6(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$updateRunnable;->message:Landroid/os/Message;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
