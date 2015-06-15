.class public Lcom/kankunit/smartplugcronus/provider/LoremActivity;
.super Landroid/app/Activity;
.source "LoremActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;
    }
.end annotation


# instance fields
.field private br:Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;

.field private handler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;

.field private model:Lcom/kankunit/smartplugcronus/model/DeviceModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->mTimer:Ljava/util/Timer;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/provider/LoremActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 176
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    .line 177
    .local v2, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
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

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 178
    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 179
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 180
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/kankunit/smartplugcronus/provider/WidgetProvider;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 181
    .local v0, "appWidgetIds":[I
    const v3, 0x7f0703aa

    invoke-virtual {v1, v0, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 182
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->finish()V

    .line 183
    const/4 v3, 0x1

    .line 187
    .end local v0    # "appWidgetIds":[I
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :goto_0
    return v3

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->finish()V

    .line 187
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 29
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v6, Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->handler:Landroid/os/Handler;

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Lcom/kankunit/smartplugcronus/provider/WidgetProvider;->EXTRA_WORD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 59
    .local v23, "mac":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Lcom/kankunit/smartplugcronus/provider/WidgetProvider;->DEVICE_STATE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 60
    .local v26, "state":Ljava/lang/String;
    if-nez v23, :cond_0

    .line 121
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v24, "nopassword"

    .line 67
    .local v24, "pwd":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 68
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "phoneMac":Ljava/lang/String;
    const-string v6, ":"

    const-string v7, "-"

    invoke-virtual {v13, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 70
    const/4 v8, 0x0

    .line 71
    .local v8, "isDirect":Z
    new-instance v28, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    invoke-direct/range {v28 .. v29}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;-><init>(Landroid/content/Context;)V

    .line 72
    .local v28, "wd":Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;
    invoke-virtual/range {v28 .. v28}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getSSID()Ljava/lang/String;

    move-result-object v25

    .line 73
    .local v25, "ssid":Ljava/lang/String;
    if-eqz v25, :cond_1

    const-string v6, ""

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "0K_SP3_"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    const/4 v8, 0x0

    .line 78
    :goto_1
    const-string v6, "open"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v26, "close"

    .line 80
    :goto_2
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 82
    const-string v7, "%request"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 84
    const-string v7, "%confirm#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "confirmBeforeCmd":Ljava/lang/String;
    const-string v5, "%request"

    .line 86
    .local v5, "confirmAfterCmd":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    .line 87
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->handler:Landroid/os/Handler;

    const v7, 0xb156

    move-object/from16 v9, p0

    .line 86
    invoke-direct/range {v2 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 89
    .local v2, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0

    .line 76
    .end local v2    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v4    # "confirmBeforeCmd":Ljava/lang/String;
    .end local v5    # "confirmAfterCmd":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .line 79
    :cond_2
    const-string v26, "open"

    goto :goto_2

    .line 91
    :cond_3
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 93
    const-string v7, "%relay"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .restart local v3    # "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, "userJID":Ljava/lang/String;
    new-instance v9, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v16, ""

    const/16 v17, 0x0

    move-object v10, v3

    move-object/from16 v12, p0

    .line 95
    invoke-direct/range {v9 .. v17}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 97
    .local v9, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 98
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->mTimer:Ljava/util/Timer;

    .line 99
    new-instance v27, Lcom/kankunit/smartplugcronus/provider/LoremActivity$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/provider/LoremActivity$1;-><init>(Lcom/kankunit/smartplugcronus/provider/LoremActivity;)V

    .line 107
    .local v27, "timerTast":Ljava/util/TimerTask;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->mTimer:Ljava/util/Timer;

    const-wide/16 v14, 0x2ee0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 109
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v9    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v11    # "userJID":Ljava/lang/String;
    .end local v27    # "timerTast":Ljava/util/TimerTask;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 110
    const-string v7, "%relay"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 109
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3    # "cmd":Ljava/lang/String;
    const-string v4, ""

    .line 112
    .restart local v4    # "confirmBeforeCmd":Ljava/lang/String;
    const-string v5, ""

    .line 113
    .restart local v5    # "confirmAfterCmd":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->handler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const v19, 0xb156

    .line 115
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v22

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v20, v8

    move-object/from16 v21, p0

    .line 113
    invoke-direct/range {v14 .. v22}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 116
    .restart local v2    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "22222cmd\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v1, "messageService":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    .end local v1    # "messageService":Landroid/content/Intent;
    :cond_0
    new-instance v2, Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/provider/LoremActivity;Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->br:Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "ikonke.basebroadcast"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->br:Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 134
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->br:Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->br:Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->mTimer:Ljava/util/Timer;

    .line 148
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 149
    return-void
.end method
