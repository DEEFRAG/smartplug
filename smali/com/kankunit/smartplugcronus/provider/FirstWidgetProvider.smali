.class public Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "FirstWidgetProvider.java"


# static fields
.field private static rv:Landroid/widget/RemoteViews;


# instance fields
.field private final CLICK_DEVICE:Ljava/lang/String;

.field private final CLICK_LIGHT:Ljava/lang/String;

.field private final CLICK_LOW:Ljava/lang/String;

.field private final CLICK_SPEECH:Ljava/lang/String;

.field private final CLICK_SPEECHSET:Ljava/lang/String;

.field private final CLICK_UP:Ljava/lang/String;

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 26
    const-string v0, "device_click"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->CLICK_DEVICE:Ljava/lang/String;

    .line 27
    const-string v0, "light_click"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->CLICK_LIGHT:Ljava/lang/String;

    .line 28
    const-string v0, "up_click"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->CLICK_UP:Ljava/lang/String;

    .line 29
    const-string v0, "low_click"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->CLICK_LOW:Ljava/lang/String;

    .line 30
    const-string v0, "speech_click"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->CLICK_SPEECH:Ljava/lang/String;

    .line 31
    const-string v0, "speech_set_click"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->CLICK_SPEECHSET:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    .line 162
    const/4 v1, 0x1

    .line 161
    invoke-static {p1, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortDeviceList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0300f9

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    .line 164
    sget-object v2, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v3, 0x7f0703ab

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 166
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 50
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->devices:Ljava/util/List;

    if-nez v6, :cond_0

    .line 52
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getAllDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->devices:Ljava/util/List;

    .line 54
    :cond_0
    const-string v6, "widgetValue"

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 55
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v6, "macIndex"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 56
    .local v4, "macIndex":I
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->devices:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "device_click"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v2, "bd":Landroid/os/Bundle;
    const-string v6, "type"

    const-string v7, "device"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v6, "mac"

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v3, "it":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    .end local v2    # "bd":Landroid/os/Bundle;
    .end local v3    # "it":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "light_click"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 67
    .restart local v2    # "bd":Landroid/os/Bundle;
    const-string v6, "type"

    const-string v7, "light"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v6, "mac"

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .restart local v3    # "it":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    .end local v2    # "bd":Landroid/os/Bundle;
    .end local v3    # "it":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "up_click"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->devices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 76
    const/4 v4, 0x0

    .line 78
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "macIndex"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "low_click"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 81
    add-int/lit8 v4, v4, -0x1

    .line 82
    const/4 v6, -0x1

    if-ne v4, v6, :cond_5

    .line 83
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->devices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 85
    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "macIndex"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "speech_click"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 88
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 89
    .restart local v2    # "bd":Landroid/os/Bundle;
    const-string v6, "type"

    const-string v7, "speech"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .restart local v3    # "it":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    .end local v2    # "bd":Landroid/os/Bundle;
    .end local v3    # "it":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "speech_set_click"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 95
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .restart local v3    # "it":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    .end local v3    # "it":Landroid/content/Intent;
    :cond_8
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->devices:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 101
    sget-object v6, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    if-nez v6, :cond_9

    .line 102
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 103
    const v8, 0x7f0300f9

    .line 102
    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    .line 105
    :cond_9
    sget-object v6, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v7, 0x7f0703ab

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 106
    sget-object v6, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v7, 0x7f0703ac

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 107
    sget-object v6, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v7, 0x7f0703ad

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getLightStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 110
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 111
    .local v1, "appWidgetManger":Landroid/appwidget/AppWidgetManager;
    new-instance v6, Landroid/content/ComponentName;

    .line 112
    const-class v7, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;

    invoke-direct {v6, p1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual {v1, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 113
    .local v0, "appIds":[I
    sget-object v6, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 114
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 40
    array-length v0, p3

    .line 41
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 45
    const-string v3, "!!!!!!!!!!!!!!!!!!===onUpdate"

    invoke-static {p1, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void

    .line 42
    :cond_0
    aget v1, p3, v2

    .line 43
    .local v1, "appWidgetId":I
    invoke-virtual {p0, p1, p2, v1}, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgeManger"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I

    .prologue
    .line 123
    const-string v15, "widgetValue"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "macIndex"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 124
    .local v8, "macIndex":I
    invoke-static/range {p1 .. p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getAllDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->devices:Ljava/util/List;

    .line 125
    new-instance v15, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const v17, 0x7f0300f9

    invoke-direct/range {v15 .. v17}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    .line 126
    sget-object v16, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v17, 0x7f07020e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->devices:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    new-instance v2, Landroid/content/Intent;

    const-string v15, "device_click"

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "intentClick":Landroid/content/Intent;
    const/4 v15, 0x0

    .line 129
    const/16 v16, 0x0

    .line 128
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 130
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v15, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v16, 0x7f07017b

    move/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 132
    new-instance v4, Landroid/content/Intent;

    const-string v15, "light_click"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v4, "intentRightClick":Landroid/content/Intent;
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 133
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 135
    .local v11, "pendingRightIntent":Landroid/app/PendingIntent;
    sget-object v15, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v16, 0x7f0703ae

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 137
    new-instance v7, Landroid/content/Intent;

    const-string v15, "up_click"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v7, "intentUpClick":Landroid/content/Intent;
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 138
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 140
    .local v14, "pendingUpIntent":Landroid/app/PendingIntent;
    sget-object v15, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v16, 0x7f0703b0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 142
    new-instance v3, Landroid/content/Intent;

    const-string v15, "low_click"

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "intentLowClick":Landroid/content/Intent;
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 143
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 145
    .local v10, "pendingLowIntent":Landroid/app/PendingIntent;
    sget-object v15, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v16, 0x7f0703b1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 147
    new-instance v5, Landroid/content/Intent;

    const-string v15, "speech_click"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v5, "intentSpeechClick":Landroid/content/Intent;
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 148
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v5, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 150
    .local v12, "pendingSpeechIntent":Landroid/app/PendingIntent;
    sget-object v15, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v16, 0x7f0703b2

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 152
    new-instance v6, Landroid/content/Intent;

    const-string v15, "speech_set_click"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v6, "intentSpeechSetClick":Landroid/content/Intent;
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 153
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v6, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 155
    .local v13, "pendingSpeechSetIntent":Landroid/app/PendingIntent;
    sget-object v15, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v16, 0x7f0703af

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 156
    sget-object v15, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;->rv:Landroid/widget/RemoteViews;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 157
    return-void
.end method
