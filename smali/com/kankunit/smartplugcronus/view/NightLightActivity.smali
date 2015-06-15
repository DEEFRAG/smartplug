.class public Lcom/kankunit/smartplugcronus/view/NightLightActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "NightLightActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;
    }
.end annotation


# instance fields
.field private allCloseTime:Ljava/lang/String;

.field private allOpenTime:Ljava/lang/String;

.field private closeEn:Ljava/lang/String;

.field private closeTime:Ljava/lang/String;

.field private fastFlag:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hasMusic:Z

.field private hasTimer:Z

.field private isActivityOpen:Z

.field private isDirect:Z

.field private isGetInfoOk:Z

.field private lightTimerInfo:Ljava/lang/String;

.field private light_state_isOpen:Z

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private music:I

.field private music_btn:Landroid/widget/ImageButton;

.field private myDialog:Landroid/app/ProgressDialog;

.field private night_light_btn:Landroid/widget/ImageButton;

.field private night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private night_light_layout:Landroid/widget/RelativeLayout;

.field private night_light_state_info:Landroid/widget/TextView;

.field private night_open_loading:Landroid/widget/TextView;

.field private openCloseEn:Ljava/lang/String;

.field private openEn:Ljava/lang/String;

.field private openTime:Ljava/lang/String;

.field private phoneMac:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private repart:Ljava/lang/String;

.field private repartNum:Ljava/lang/String;

.field private sp:Landroid/media/SoundPool;

.field private timerData:Ljava/lang/String;

.field private tm:Lcom/kankunit/smartplugcronus/model/TimerModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    .line 66
    const-string v0, "0"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repart:Ljava/lang/String;

    .line 67
    const-string v0, "0"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repartNum:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasTimer:Z

    .line 76
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isGetInfoOk:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasMusic:Z

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isActivityOpen:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->timerData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    return v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->phoneMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isDirect:Z

    return v0
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isGetInfoOk:Z

    return v0
.end method

.method static synthetic access$18(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->addLightTimer()V

    return-void
.end method

.method static synthetic access$19(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$20(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasTimer:Z

    return v0
.end method

.method static synthetic access$21(Lcom/kankunit/smartplugcronus/view/NightLightActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->myDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$22(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->allOpenTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openEn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->allCloseTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeEn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repartNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasMusic:Z

    return v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->music_btn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/NightLightActivity;Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasMusic:Z

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->sp:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->music:I

    return v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_open_loading:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private addLightTimer()V
    .locals 4

    .prologue
    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "hasTimer"

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasTimer:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "flag"

    const-string v3, "light"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "fastFlag"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->fastFlag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v2, "timerid"

    const-string v3, "1024"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "openTime"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v2, "openEn"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openEn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v2, "closeEn"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeEn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "closetime"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "repartDate"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repart:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "isDirect"

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isDirect:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    const-string v2, "num"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 268
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 21
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v2, "%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 444
    .local v15, "msgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->myDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->myDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 447
    :cond_0
    array-length v2, v15

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    const-string v2, "lack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_open_loading:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const-string v2, "close"

    const-string v3, "%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    .line 454
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    if-eqz v2, :cond_8

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020345

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 463
    :cond_3
    :goto_2
    const-string v2, "tack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;

    const-string v6, ""

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isDirect:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lcom/kankunit/smartplugcronus/util/Smart2GetInfoUtil;->getSmart2Info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kankunit/smartplugcronus/model/DeviceModel;)Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;

    move-result-object v10

    .line 465
    .local v10, "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    if-eqz v10, :cond_4

    .line 466
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getTimerList()[Ljava/lang/String;

    move-result-object v18

    .line 467
    .local v18, "timeList":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, v18

    array-length v2, v0

    if-lt v13, v2, :cond_9

    .line 475
    .end local v13    # "i":I
    .end local v18    # "timeList":[Ljava/lang/String;
    :cond_4
    :goto_4
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    aput-object v3, v20, v2

    .line 476
    .local v20, "timers":[Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getMinTime([Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/TimerModel;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v2, :cond_5

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getDataTime()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->timerData:Ljava/lang/String;

    .line 479
    new-instance v12, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;-><init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V

    .line 480
    .local v12, "ft":Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;->start()V

    .line 482
    .end local v12    # "ft":Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;
    :cond_5
    const-string v19, ""

    .line 483
    .local v19, "timerStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 485
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 486
    .local v14, "msg":Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v14, Landroid/os/Message;->what:I

    .line 487
    move-object/from16 v0, v19

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    :goto_5
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd=HH:mm=ss"

    invoke-direct {v11, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 495
    .local v11, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v16, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 496
    .local v16, "nowDate":Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v17, v2, v3

    .line 498
    .local v17, "nowDateStr":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openTime:Ljava/lang/String;

    .line 499
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeTime:Ljava/lang/String;

    .line 500
    const-string v2, "check"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#1024#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 501
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasTimer:Z

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->allOpenTime:Ljava/lang/String;

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->allCloseTime:Ljava/lang/String;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openCloseEn:Ljava/lang/String;

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openTime:Ljava/lang/String;

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openEn:Ljava/lang/String;

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeTime:Ljava/lang/String;

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeEn:Ljava/lang/String;

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getRepart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repart:Ljava/lang/String;

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repartNum:Ljava/lang/String;

    .line 527
    :cond_6
    :goto_6
    const-string v2, "y"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openCloseEn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v2, :cond_d

    .line 528
    const v2, 0x7f0702eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 535
    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isGetInfoOk:Z

    goto/16 :goto_0

    .line 453
    .end local v10    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    .end local v11    # "fmt":Ljava/text/SimpleDateFormat;
    .end local v14    # "msg":Landroid/os/Message;
    .end local v16    # "nowDate":Ljava/util/Date;
    .end local v17    # "nowDateStr":Ljava/lang/String;
    .end local v19    # "timerStr":Ljava/lang/String;
    .end local v20    # "timers":[Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 458
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020344

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 468
    .restart local v10    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    .restart local v13    # "i":I
    .restart local v18    # "timeList":[Ljava/lang/String;
    :cond_9
    aget-object v2, v18, v13

    if-eqz v2, :cond_a

    aget-object v2, v18, v13

    const-string v3, "#1024#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 469
    aget-object v2, v18, v13

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    goto/16 :goto_4

    .line 467
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 490
    .end local v13    # "i":I
    .end local v18    # "timeList":[Ljava/lang/String;
    .restart local v19    # "timerStr":Ljava/lang/String;
    .restart local v20    # "timers":[Ljava/lang/String;
    :cond_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 491
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v2, 0x16

    iput v2, v14, Landroid/os/Message;->what:I

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 511
    .restart local v11    # "fmt":Ljava/text/SimpleDateFormat;
    .restart local v16    # "nowDate":Ljava/util/Date;
    .restart local v17    # "nowDateStr":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    const-string v3, "#set#light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 514
    const/4 v2, 0x3

    aget-object v2, v15, v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 515
    .local v9, "datas":[Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasTimer:Z

    .line 516
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->allOpenTime:Ljava/lang/String;

    .line 518
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openCloseEn:Ljava/lang/String;

    .line 519
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openTime:Ljava/lang/String;

    .line 520
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openEn:Ljava/lang/String;

    .line 521
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeTime:Ljava/lang/String;

    .line 522
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeEn:Ljava/lang/String;

    .line 523
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getRepart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repart:Ljava/lang/String;

    .line 524
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repartNum:Ljava/lang/String;

    goto/16 :goto_6

    .line 531
    .end local v9    # "datas":[Ljava/lang/String;
    :cond_d
    const v2, 0x7f0702eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto/16 :goto_7
.end method

.method private initData()V
    .locals 18

    .prologue
    .line 359
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd=HH:mm=ss"

    invoke-direct {v15, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 360
    .local v15, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v16, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 361
    .local v16, "nowDate":Ljava/util/Date;
    invoke-virtual/range {v15 .. v16}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v17, v6, v7

    .line 362
    .local v17, "nowDateStr":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openTime:Ljava/lang/String;

    .line 363
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeTime:Ljava/lang/String;

    .line 364
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%check#light%timer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@timetask."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "userJID":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->phoneMac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v9, "timetask"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 368
    .local v2, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 411
    .end local v2    # "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v4    # "userJID":Ljava/lang/String;
    :goto_0
    return-void

    .line 370
    .end local v3    # "cmd":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%check#total%timer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    .restart local v3    # "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%check%brmode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 372
    .local v10, "brCmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, "allCmd":Ljava/lang/String;
    new-instance v5, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;

    const v8, 0xb156

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isDirect:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object v6, v3

    move-object/from16 v12, p0

    invoke-direct/range {v5 .. v14}, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;-><init>(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 374
    .local v5, "sgt":Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->start()V

    goto/16 :goto_0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 435
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v12, 0x7f020345

    const v11, 0x7f020344

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 281
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_1

    .line 282
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_state_info:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_state_info:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_0
    :goto_0
    return v7

    .line 286
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x16

    if-ne v8, v9, :cond_2

    .line 287
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_state_info:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "bsgMsg":Ljava/lang/String;
    const-string v8, "%"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "msgs":[Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg1:I

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 294
    :sswitch_0
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->myDialog:Landroid/app/ProgressDialog;

    if-eqz v8, :cond_3

    .line 295
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->myDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 297
    :cond_3
    array-length v8, v4

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 300
    const-string v8, "lack"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 301
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    invoke-virtual {v8, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 302
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_open_loading:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const-string v8, "close"

    const-string v9, "%"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v7

    :cond_4
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    .line 304
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    .line 305
    .local v1, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    if-eqz v6, :cond_6

    .line 306
    const-string v6, "open"

    invoke-virtual {v1, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setLightStatus(Ljava/lang/String;)V

    .line 307
    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 308
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 317
    .end local v1    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_5
    :goto_1
    const-string v6, "tack"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 318
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->doReceviMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    .restart local v1    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_6
    const-string v6, "close"

    invoke-virtual {v1, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setLightStatus(Ljava/lang/String;)V

    .line 312
    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 313
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 322
    .end local v1    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :sswitch_1
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->myDialog:Landroid/app/ProgressDialog;

    if-eqz v8, :cond_7

    .line 323
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->myDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 325
    :cond_7
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_open_loading:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0238

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 329
    :sswitch_2
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->timerData:Ljava/lang/String;

    const-string v9, "y"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 330
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    .line 331
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 338
    :goto_2
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->initData()V

    goto/16 :goto_0

    .line 334
    :cond_8
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    .line 335
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 341
    :sswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 342
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;

    .line 343
    .local v2, "difm":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getTimerList()[Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "tlists":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v6, v5

    if-lt v3, v6, :cond_9

    .line 350
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "wan_server%"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "%check%tack"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->doReceviMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :cond_9
    aget-object v6, v5, v3

    if-eqz v6, :cond_a

    aget-object v6, v5, v3

    const-string v8, "#1024#"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 346
    aget-object v6, v5, v3

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    goto :goto_4

    .line 344
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 292
    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0x70 -> :sswitch_1
        0x71 -> :sswitch_3
        0x19b -> :sswitch_2
    .end sparse-switch
.end method

.method public initHongMiHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    .line 551
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 98
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v2, 0x7f0300a9

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 102
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->sp:Landroid/media/SoundPool;

    .line 103
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->sp:Landroid/media/SoundPool;

    const v3, 0x7f060004

    invoke-virtual {v2, p0, v3, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->music:I

    .line 105
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;

    .line 106
    new-instance v2, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v2, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    const-string v2, "mac"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    .line 110
    const-string v2, "pwd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;

    .line 111
    const-string v2, "lightTimerInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->lightTimerInfo:Ljava/lang/String;

    .line 112
    const-string v2, "fastFlag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->fastFlag:Ljava/lang/String;

    .line 113
    const-string v2, "isDirect"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isDirect:Z

    .line 114
    const-string v2, "light_state_isOpen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    .line 115
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 116
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->phoneMac:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->phoneMac:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->phoneMac:Ljava/lang/String;

    .line 119
    const v2, 0x7f0702e8

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_state_info:Landroid/widget/TextView;

    .line 120
    const v2, 0x7f0702ea

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_open_loading:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f0702eb

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 122
    const v2, 0x7f070128

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_layout:Landroid/widget/RelativeLayout;

    .line 123
    const v2, 0x7f0702e9

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    .line 124
    const v2, 0x7f070178

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->music_btn:Landroid/widget/ImageButton;

    .line 126
    const-string v2, "user_info"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    .local v1, "userInfo":Landroid/content/SharedPreferences;
    const-string v2, "hasMusic_night"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasMusic:Z

    .line 128
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasMusic:Z

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->music_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020322

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 133
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->music_btn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/NightLightActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/kankunit/smartplugcronus/view/NightLightActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020345

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 155
    :goto_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_layout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/NightLightActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 230
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->music_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020321

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020344

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 274
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->finish()V

    .line 277
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->finish()V

    .line 93
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 248
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_state_info:Landroid/widget/TextView;

    const-string v1, "Get the timing information, please wait..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->initData()V

    .line 243
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 244
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isActivityOpen:Z

    .line 541
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStart()V

    .line 542
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isActivityOpen:Z

    .line 546
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 547
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 440
    return-void
.end method
