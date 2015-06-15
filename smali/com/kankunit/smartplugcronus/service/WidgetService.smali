.class public Lcom/kankunit/smartplugcronus/service/WidgetService;
.super Landroid/app/Service;
.source "WidgetService.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;,
        Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;
    }
.end annotation


# instance fields
.field private br:Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private handler:Landroid/os/Handler;

.field private mIat:Lcom/iflytek/cloud/SpeechRecognizer;

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private notDoTime:I

.field private recognizerListener:Lcom/iflytek/cloud/RecognizerListener;

.field private resultStr:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field private su:Lcom/iflytek/cloud/SpeechUtility;

.field private final timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private timeroutTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->timer:Ljava/util/Timer;

    .line 77
    new-instance v0, Lcom/kankunit/smartplugcronus/service/WidgetService$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/WidgetService$1;-><init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;

    .line 336
    new-instance v0, Lcom/kankunit/smartplugcronus/service/WidgetService$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/WidgetService$2;-><init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->recognizerListener:Lcom/iflytek/cloud/RecognizerListener;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/service/WidgetService;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->notDoTime:I

    return v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/service/WidgetService;I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->notDoTime:I

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->resultStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->resultStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/service/WidgetService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->sceneId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method private clickActive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mac:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 313
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v25, "relay"

    .line 263
    .local v25, "type":Ljava/lang/String;
    const-string v23, "nopassword"

    .line 264
    .local v23, "pwd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mac:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 265
    invoke-static/range {p1 .. p1}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 266
    .local v12, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v12, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 267
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 268
    .local v7, "isDirect":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v24

    .line 269
    .local v24, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getLightStatus()Ljava/lang/String;

    move-result-object v22

    .line 270
    .local v22, "lightState":Ljava/lang/String;
    if-eqz p3, :cond_1

    const-string v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 271
    move-object/from16 v24, p3

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mac:Ljava/lang/String;

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 275
    const-string v6, "%request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 274
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 277
    const-string v6, "%confirm#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "confirmBeforeCmd":Ljava/lang/String;
    const-string v4, "%request"

    .line 279
    .local v4, "confirmAfterCmd":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    .line 280
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;

    const v6, 0xb156

    move-object/from16 v8, p1

    .line 279
    invoke-direct/range {v1 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 281
    .local v1, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0

    .line 283
    .end local v1    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "confirmBeforeCmd":Ljava/lang/String;
    .end local v4    # "confirmAfterCmd":Ljava/lang/String;
    :cond_2
    const-string v5, "device"

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 284
    const-string v25, "relay"

    .line 285
    const-string v5, "open"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v24, "close"

    .line 292
    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    const-string v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 293
    move-object/from16 v24, p3

    .line 295
    :cond_4
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 297
    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 296
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .restart local v2    # "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mac:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 299
    .local v10, "userJID":Ljava/lang/String;
    new-instance v8, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v15, ""

    const/16 v16, 0x0

    move-object v9, v2

    move-object/from16 v11, p1

    .line 299
    invoke-direct/range {v8 .. v16}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 301
    .local v8, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0

    .line 286
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v8    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v10    # "userJID":Ljava/lang/String;
    :cond_5
    const-string v24, "open"

    goto :goto_1

    .line 287
    :cond_6
    const-string v5, "light"

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 288
    const-string v25, "light"

    .line 289
    const-string v5, "open"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v24, "close"

    :goto_2
    goto/16 :goto_1

    .line 290
    :cond_7
    const-string v24, "open"

    goto :goto_2

    .line 303
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 304
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 303
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2    # "cmd":Ljava/lang/String;
    const-string v3, ""

    .line 306
    .restart local v3    # "confirmBeforeCmd":Ljava/lang/String;
    const-string v4, ""

    .line 307
    .restart local v4    # "confirmAfterCmd":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const v18, 0xb156

    .line 309
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v21

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v19, v7

    move-object/from16 v20, p1

    .line 307
    invoke-direct/range {v13 .. v21}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 310
    .restart local v1    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0
.end method

.method private setParam()V
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 406
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "engine_type"

    const-string v2, "cloud"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "result_type"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 410
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "language"

    const-string v2, "zh_cn"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 412
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "accent"

    const-string v2, "zh_cn"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "vad_bos"

    const-string v2, "4000"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 416
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "vad_eos"

    const-string v2, "1000"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 418
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "asr_ptt"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 420
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "asr_audio_path"

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 422
    const-string v3, "/iflytek/wavaudio.pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 421
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 423
    return-void
.end method


# virtual methods
.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 632
    const-string v1, "Timeout"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 633
    new-instance v0, Landroid/widget/RemoteViews;

    .line 634
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 635
    const v2, 0x7f0300f9

    .line 633
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 637
    .local v0, "appWidgetView":Landroid/widget/RemoteViews;
    const v1, 0x7f0703b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 638
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 640
    new-instance v2, Landroid/content/ComponentName;

    .line 641
    const-class v3, Lcom/kankunit/smartplugcronus/provider/FirstWidgetProvider;

    .line 640
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 639
    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 643
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 174
    const-string v0, "!!!!!!!!!!!!!!!!!!===onBind"

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 180
    const-string v0, "!!!!!!!!!!!!!!!!!!===onCreate"

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->db:Lnet/tsz/afinal/FinalDb;

    .line 182
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 183
    const-string v0, "appid=54f93ff3"

    invoke-static {p0, v0}, Lcom/iflytek/cloud/SpeechUtility;->createUtility(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->su:Lcom/iflytek/cloud/SpeechUtility;

    .line 184
    invoke-static {p0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    .line 186
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->setParam()V

    .line 187
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->br:Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;

    invoke-direct {v0, p0, v1}, Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/service/WidgetService;Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->br:Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;

    .line 189
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "ikonke.basebroadcast"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->br:Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;

    invoke-virtual {p0, v0, v6}, Lcom/kankunit/smartplugcronus/service/WidgetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    new-instance v0, Lcom/kankunit/smartplugcronus/service/WidgetService$3;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/WidgetService$3;-><init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->timerTask:Ljava/util/TimerTask;

    .line 205
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 206
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 207
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->br:Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 214
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->stopSelf()V

    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    .line 255
    :goto_0
    return v3

    .line 222
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->notDoTime:I

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "type":Ljava/lang/String;
    const-string v3, "speech"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 227
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->su:Lcom/iflytek/cloud/SpeechUtility;

    if-nez v3, :cond_1

    .line 229
    const-string v3, "appid=54f93ff3"

    .line 228
    invoke-static {p0, v3}, Lcom/iflytek/cloud/SpeechUtility;->createUtility(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->su:Lcom/iflytek/cloud/SpeechUtility;

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez v3, :cond_2

    .line 233
    const/4 v3, 0x0

    .line 232
    invoke-static {p0, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    .line 235
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->setParam()V

    .line 238
    :cond_2
    const-string v3, ""

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->resultStr:Ljava/lang/String;

    .line 239
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->recognizerListener:Lcom/iflytek/cloud/RecognizerListener;

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->startListening(Lcom/iflytek/cloud/RecognizerListener;)I

    .line 240
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;

    .line 241
    new-instance v1, Lcom/kankunit/smartplugcronus/service/WidgetService$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/service/WidgetService$4;-><init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V

    .line 250
    .local v1, "timerTast":Ljava/util/TimerTask;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->timeroutTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x2ee0

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    goto :goto_0

    .line 253
    .end local v1    # "timerTast":Ljava/util/TimerTask;
    :cond_3
    const-string v3, "mac"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->mac:Ljava/lang/String;

    .line 254
    const-string v3, ""

    invoke-direct {p0, p0, v2, v3}, Lcom/kankunit/smartplugcronus/service/WidgetService;->clickActive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    goto :goto_0
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 647
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 648
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 649
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 650
    return-void
.end method
