.class Lcom/kankunit/smartplugcronus/service/UpdateService$1;
.super Landroid/os/Handler;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/UpdateService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 102
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 129
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$5(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->stopService(Landroid/content/Intent;)Z

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/service/UpdateService;->stopSelf()V

    .line 133
    return-void

    .line 105
    :pswitch_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateFile:Ljava/io/File;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateService;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "installIntent":Landroid/content/Intent;
    const-string v2, "application/vnd.android.package-archive"

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    .line 111
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    .line 110
    invoke-static {v3, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$1(Lcom/kankunit/smartplugcronus/service/UpdateService;Landroid/app/PendingIntent;)V

    .line 113
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$2(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 114
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$2(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    .line 115
    const-string v4, "Small K Smart"

    const-string v5, "Download is complete, click on install."

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updatePendingIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$3(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 114
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 116
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$4(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$2(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 119
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$5(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 123
    .end local v0    # "installIntent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$2(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    .line 124
    const-string v4, "Small K Smart"

    const-string v5, "Download failed, please download it again."

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updatePendingIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$3(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 123
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 125
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$4(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$2(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 126
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateService;->updateIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->access$5(Lcom/kankunit/smartplugcronus/service/UpdateService;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/service/UpdateService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
