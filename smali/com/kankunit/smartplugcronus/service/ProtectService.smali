.class public Lcom/kankunit/smartplugcronus/service/ProtectService;
.super Landroid/app/Service;
.source "ProtectService.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;,
        Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.kankunit.smartplugcronus.service.ProtectService"

.field private static final TAG:Ljava/lang/String; = "ServiceDemo"

.field public static dev_mac:Ljava/lang/String;

.field public static isFirst:Z

.field public static isProtect:Z


# instance fields
.field private br:Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;

.field private cmd:Ljava/lang/String;

.field cmdLock:Z

.field private confirmAfterCmd:Ljava/lang/String;

.field private confirmBeforeCmd:Ljava/lang/String;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field public electrictLV:I

.field private final fullElectrict:I

.field private isDirect:Z

.field isDirectThread:Z

.field private isFirstShow:Z

.field private mHandler:Landroid/os/Handler;

.field private mbatteryReceiver:Landroid/content/BroadcastReceiver;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private port:I

.field private pwd:Ljava/lang/String;

.field private userIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirst:Z

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    iput v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->electrictLV:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;

    .line 60
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->cmdLock:Z

    .line 61
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isDirectThread:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirstShow:Z

    .line 66
    const/16 v0, 0x64

    iput v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->fullElectrict:I

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/ProtectService;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isDirect:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->userIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/service/ProtectService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/service/ProtectService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/service/ProtectService;Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->br:Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;

    return-void
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/service/ProtectService;)Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->br:Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/service/ProtectService;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirstShow:Z

    return v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/service/ProtectService;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->isChargeOK()V

    return-void
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/service/ProtectService;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->isCharge()V

    return-void
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/service/ProtectService;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->notCharge()V

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/service/ProtectService;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->port:I

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/service/ProtectService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/service/ProtectService;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->stopElectrictDelay()V

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->confirmBeforeCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->confirmAfterCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/service/ProtectService;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->port:I

    return v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, "message":Landroid/os/Message;
    const-string v1, "rack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 411
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    :cond_0
    return-void
.end method

.method private isCharge()V
    .locals 25

    .prologue
    .line 217
    const/4 v6, 0x1

    sput-boolean v6, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    .line 218
    sget-boolean v6, Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirst:Z

    if-eqz v6, :cond_0

    .line 219
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v21, "i":Landroid/content/Intent;
    const-string v6, "img"

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c0252

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 220
    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/high16 v6, 0x10000000

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    const-class v6, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/ProtectService;->startActivity(Landroid/content/Intent;)V

    .line 227
    move-object/from16 v0, p0

    iget v6, v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->electrictLV:I

    rsub-int/lit8 v22, v6, 0x64

    .line 228
    .local v22, "needElectrict":I
    mul-int/lit8 v17, v22, 0x4

    .line 229
    .local v17, "allNeedTime":I
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 230
    .local v20, "df":Ljava/text/DateFormat;
    new-instance v23, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, v23

    invoke-direct {v0, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 231
    .local v23, "nowDate":Ljava/util/Date;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    .line 232
    .local v24, "nowDateStr":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v0, v6, [I

    move-object/from16 v18, v0

    const/4 v6, 0x2

    aput v17, v18, v6

    .line 233
    .local v18, "amount":[I
    const-string v6, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->addDate(Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v19

    .line 234
    .local v19, "delayTime":Ljava/lang/String;
    sget-object v6, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "wan_phone%"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%alarm#1025#y#"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "#n#"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "#y#0#set%timer"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "cmd":Ljava/lang/String;
    const v7, 0xb156

    .line 237
    .local v7, "port":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "wan_phone%"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%confirm#"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "beforeCmd":Ljava/lang/String;
    const-string v5, "%timer"

    .line 239
    .local v5, "afterCmd":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isDirect:Z

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 240
    .local v2, "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "~~~````"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    .end local v2    # "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v4    # "beforeCmd":Ljava/lang/String;
    .end local v5    # "afterCmd":Ljava/lang/String;
    .end local v7    # "port":I
    .end local v17    # "allNeedTime":I
    .end local v18    # "amount":[I
    .end local v19    # "delayTime":Ljava/lang/String;
    .end local v20    # "df":Ljava/text/DateFormat;
    .end local v21    # "i":Landroid/content/Intent;
    .end local v22    # "needElectrict":I
    .end local v23    # "nowDate":Ljava/util/Date;
    .end local v24    # "nowDateStr":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    sput-boolean v6, Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirst:Z

    .line 254
    return-void

    .line 243
    .restart local v17    # "allNeedTime":I
    .restart local v18    # "amount":[I
    .restart local v19    # "delayTime":Ljava/lang/String;
    .restart local v20    # "df":Ljava/text/DateFormat;
    .restart local v21    # "i":Landroid/content/Intent;
    .restart local v22    # "needElectrict":I
    .restart local v23    # "nowDate":Ljava/util/Date;
    .restart local v24    # "nowDateStr":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "kankun-smartplug.com"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "userJID":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 245
    .local v12, "phoneMac":Ljava/lang/String;
    const-string v6, ":"

    const-string v9, "-"

    invoke-virtual {v12, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "wan_phone%"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%alarm#1025#y#"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "#n#"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "#y#0#set#relay%timer"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .restart local v3    # "cmd":Ljava/lang/String;
    new-instance v8, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v16, v0

    move-object v9, v3

    move-object/from16 v11, p0

    invoke-direct/range {v8 .. v16}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 248
    .local v8, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "~~~````"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isChargeOK()V
    .locals 15

    .prologue
    .line 173
    const/4 v4, 0x0

    sput-boolean v4, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    .line 174
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirstShow:Z

    .line 176
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 177
    .local v14, "res":Landroid/content/res/Resources;
    const v4, 0x7f020163

    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 178
    .local v10, "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    invoke-virtual {v10, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 179
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v10, v7, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v12, "intent2":Landroid/content/Intent;
    const-string v4, "img"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0251

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/high16 v4, 0x10000000

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    const-class v4, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;

    .line 184
    invoke-virtual {v12, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v12}, Lcom/kankunit/smartplugcronus/service/ProtectService;->startActivity(Landroid/content/Intent;)V

    .line 190
    sget-object v4, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    const-string v6, "00:15"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    new-instance v0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->cmd:Ljava/lang/String;

    .line 192
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->confirmBeforeCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->confirmAfterCmd:Ljava/lang/String;

    iget v5, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->port:I

    move-object v1, p0

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;-><init>(Lcom/kankunit/smartplugcronus/service/ProtectService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    .local v0, "st":Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->start()V

    .line 214
    .end local v0    # "st":Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0251

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 215
    return-void

    .line 196
    :cond_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v4, ":"

    const-string v6, "-"

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%close%relay"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "userJID":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/4 v4, 0x5

    if-lt v11, v4, :cond_1

    .line 208
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v13, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "ikonke.basebroadcast"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    new-instance v4, Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/service/ProtectService;Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->br:Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;

    .line 212
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->br:Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;

    invoke-virtual {p0, v4, v13}, Lcom/kankunit/smartplugcronus/service/ProtectService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 204
    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v8, ""

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v4, p0

    invoke-direct/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 205
    .local v1, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private notCharge()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 256
    sput-boolean v5, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    .line 257
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirstShow:Z

    .line 259
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 260
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f020163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 261
    .local v0, "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    sget-object v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 263
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "img"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    const-class v3, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;

    .line 266
    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/service/ProtectService;->startActivity(Landroid/content/Intent;)V

    .line 270
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->stopElectrictDelay()V

    .line 272
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->stopSelf()V

    .line 273
    return-void
.end method

.method private stopElectrictDelay()V
    .locals 15

    .prologue
    .line 293
    sget-object v4, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    sget-object v7, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    sget-object v4, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%alarm#1025#y#1#n#2015-1-1-10:10:00#y#0#unset%timer"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "cmd":Ljava/lang/String;
    const v5, 0xb156

    .line 299
    .local v5, "port":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%confirm#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "beforeCmd":Ljava/lang/String;
    const-string v3, "%timer"

    .line 301
    .local v3, "afterCmd":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;

    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isDirect:Z

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 302
    .local v0, "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "~~~````"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    .end local v0    # "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "beforeCmd":Ljava/lang/String;
    .end local v3    # "afterCmd":Ljava/lang/String;
    .end local v5    # "port":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, "userJID":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, "phoneMac":Ljava/lang/String;
    const-string v4, ":"

    const-string v7, "-"

    invoke-virtual {v10, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%alarm#1025#y#1#n#2015-1-1-10:10:10#y#0#unset#relay%timer"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .restart local v1    # "cmd":Ljava/lang/String;
    new-instance v6, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v13, ""

    iget-object v14, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v7, v1

    move-object v9, p0

    invoke-direct/range {v6 .. v14}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 310
    .local v6, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "~~~````"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 400
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 79
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->stopElectrictDelay()V

    .line 283
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 284
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mbatteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mbatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 290
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->stopSelf()V

    .line 140
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 88
    new-instance v0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/ProtectService$1;-><init>(Lcom/kankunit/smartplugcronus/service/ProtectService;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;

    .line 129
    const-string v0, "mac"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    .line 130
    const-string v0, "pwd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    .line 131
    const-string v0, "userIp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->userIp:Ljava/lang/String;

    .line 132
    const-string v0, "isDirect"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->isDirect:Z

    .line 133
    sget-object v0, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wan_phone%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->cmd:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wan_phone%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%confirm#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->confirmBeforeCmd:Ljava/lang/String;

    .line 136
    const-string v0, "%request"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->confirmAfterCmd:Ljava/lang/String;

    .line 138
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 139
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->protect_device()V

    goto/16 :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public protect_device()V
    .locals 4

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mbatteryReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lcom/kankunit/smartplugcronus/service/ProtectService$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/service/ProtectService$2;-><init>(Lcom/kankunit/smartplugcronus/service/ProtectService;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mbatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService;->mbatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 166
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v1, v2}, Lcom/kankunit/smartplugcronus/service/ProtectService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/service/ProtectService;->doReceviMsg(Ljava/lang/String;)V

    .line 405
    return-void
.end method
