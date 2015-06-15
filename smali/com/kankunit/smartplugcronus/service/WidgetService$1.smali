.class Lcom/kankunit/smartplugcronus/service/WidgetService$1;
.super Landroid/os/Handler;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0703b2

    const v8, 0x7f0300f9

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 80
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 81
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 83
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v2, v10}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$1(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/util/Timer;)V

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/service/WidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0238

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 86
    new-instance v0, Landroid/widget/RemoteViews;

    .line 87
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-direct {v0, v2, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 90
    .local v0, "appWidgetView":Landroid/widget/RemoteViews;
    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 91
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 93
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 94
    const-class v5, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;

    .line 93
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {v2, v3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 97
    .end local v0    # "appWidgetView":Landroid/widget/RemoteViews;
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 98
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 100
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v2, v10}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$1(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/util/Timer;)V

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    const-string v3, "Success"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 103
    new-instance v0, Landroid/widget/RemoteViews;

    .line 104
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-direct {v0, v2, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 107
    .restart local v0    # "appWidgetView":Landroid/widget/RemoteViews;
    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 110
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 111
    const-class v5, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;

    .line 110
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {v2, v3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 115
    .end local v0    # "appWidgetView":Landroid/widget/RemoteViews;
    :cond_3
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$2(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_5

    .line 168
    :cond_4
    :goto_0
    return-void

    .line 118
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 121
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$2(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$2(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 124
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$2(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v1

    .line 125
    .local v1, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v1, :cond_6

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v2, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 130
    :cond_6
    new-instance v0, Landroid/widget/RemoteViews;

    .line 131
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-direct {v0, v2, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 133
    .restart local v0    # "appWidgetView":Landroid/widget/RemoteViews;
    const v2, 0x7f0703ac

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    .line 133
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 138
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 139
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v2, v10}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$1(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/util/Timer;)V

    .line 142
    :cond_7
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 144
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 145
    const-class v5, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;

    .line 144
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    invoke-virtual {v2, v3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 148
    .end local v0    # "appWidgetView":Landroid/widget/RemoteViews;
    .end local v1    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$2(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setLightStatus(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$2(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 151
    new-instance v0, Landroid/widget/RemoteViews;

    .line 152
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-direct {v0, v2, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 155
    .restart local v0    # "appWidgetView":Landroid/widget/RemoteViews;
    const v2, 0x7f0703ad

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    .line 155
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 158
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 159
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 160
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v2, v10}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$1(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/util/Timer;)V

    .line 162
    :cond_9
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 164
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 165
    const-class v5, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;

    .line 164
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    invoke-virtual {v2, v3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0
.end method
