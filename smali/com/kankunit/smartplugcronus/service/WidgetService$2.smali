.class Lcom/kankunit/smartplugcronus/service/WidgetService$2;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Lcom/iflytek/cloud/RecognizerListener;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1
    .param p1, "error"    # Lcom/iflytek/cloud/SpeechError;

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    .line 345
    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Landroid/os/Bundle;

    .prologue
    .line 392
    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V
    .locals 8
    .param p1, "results"    # Lcom/iflytek/cloud/RecognizerResult;
    .param p2, "isLast"    # Z

    .prologue
    const/4 v7, 0x1

    .line 353
    invoke-virtual {p1}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/JsonParser;->parseIatResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->resultStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$3(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$4(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/lang/String;)V

    .line 355
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->resultStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$3(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "==============="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->resultStr:Ljava/lang/String;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$3(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->resultStr:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$3(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 359
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->resultStr:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$3(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/SpeechDao;->getSpeechBySpeechName(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/SpeechModel;

    move-result-object v1

    .line 360
    .local v1, "speech":Lcom/kankunit/smartplugcronus/model/SpeechModel;
    if-nez v1, :cond_1

    .line 361
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    const-string v5, "Voice commands not found"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 362
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 364
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$1(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/util/Timer;)V

    .line 382
    .end local v1    # "speech":Lcom/kankunit/smartplugcronus/model/SpeechModel;
    :cond_0
    :goto_0
    return-void

    .line 368
    .restart local v1    # "speech":Lcom/kankunit/smartplugcronus/model/SpeechModel;
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 369
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/service/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 370
    const v5, 0x7f0300f9

    .line 368
    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 372
    .local v0, "appWidgetView":Landroid/widget/RemoteViews;
    const v4, 0x7f0703b2

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 373
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 375
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 376
    const-class v7, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;

    .line 375
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    invoke-virtual {v4, v5, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 378
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SpeechModel;->getRelationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$5(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/lang/String;)V

    .line 379
    new-instance v2, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-direct {v2, v4}, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;-><init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V

    .line 380
    .local v2, "st":Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->start()V

    goto :goto_0
.end method

.method public onVolumeChanged(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 388
    return-void
.end method
