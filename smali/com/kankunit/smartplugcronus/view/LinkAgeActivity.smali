.class public Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "LinkAgeActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private close_layout:Landroid/widget/RelativeLayout;

.field private dayFlag:[Z

.field private db:Lnet/tsz/afinal/FinalDb;

.field private detailModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/SceneDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field private group:Landroid/widget/RadioGroup;

.field private handler:Landroid/os/Handler;

.field private hasTemp1:Z

.field private hasTemp2:Z

.field private hasTemp4:Z

.field private hasTemp5:Z

.field private hasTemp6:Z

.field private hasTemp7:Z

.field private isModelNull:Z

.field private isPoint:Z

.field private isPointOld:Z

.field private isset:Z

.field private ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

.field private linkageMac:Ljava/lang/String;

.field private linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

.field private linkagePwd:Ljava/lang/String;

.field private linkage_timer_closetime:Landroid/widget/TextView;

.field private linkage_timer_opentime:Landroid/widget/TextView;

.field private linkage_timer_point:Landroid/widget/TextView;

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private open_layout:Landroid/widget/RelativeLayout;

.field private point_layout:Landroid/widget/RelativeLayout;

.field private repart:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private timePicker:Landroid/widget/TimePicker;

.field private timepicker_main:Landroid/widget/RelativeLayout;

.field public timer_d:Landroid/widget/RadioButton;

.field public timer_point:Landroid/widget/RadioButton;

.field private timer_repeat_date_1:Landroid/widget/Button;

.field private timer_repeat_date_2:Landroid/widget/Button;

.field private timer_repeat_date_3:Landroid/widget/Button;

.field private timer_repeat_date_4:Landroid/widget/Button;

.field private timer_repeat_date_5:Landroid/widget/Button;

.field private timer_repeat_date_6:Landroid/widget/Button;

.field private timer_repeat_date_7:Landroid/widget/Button;

.field private timer_tj:Landroid/widget/LinearLayout;

.field private timerset_set_cancel:Landroid/widget/TextView;

.field private timerset_set_ok:Landroid/widget/TextView;

.field private timerset_set_title:Landroid/widget/TextView;

.field private typeFlag:Ljava/lang/String;

.field private update:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 93
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    .line 94
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    .line 95
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    .line 97
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    .line 98
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    .line 99
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    .line 100
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    .line 107
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/TimePicker;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->open_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->close_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->point_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->doSave()V

    return-void
.end method

.method private doBack(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 1388
    if-nez p1, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    const-string v0, "body"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->typeFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1394
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_2

    .line 1395
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1397
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->finish()V

    goto :goto_0

    .line 1400
    :cond_3
    const-string v0, "linkage_ack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_4

    .line 1402
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1405
    :cond_4
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isModelNull:Z

    if-eqz v0, :cond_5

    .line 1406
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v1, "isDo"

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setIsDo(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->saveLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 1408
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->saveLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    .line 1413
    :goto_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->finish()V

    goto :goto_0

    .line 1410
    :cond_5
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 1411
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    goto :goto_1
.end method

.method private doSave()V
    .locals 54

    .prologue
    .line 627
    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c0249

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "loading"

    .line 630
    const/16 v12, 0x2ee0

    new-instance v15, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)V

    .line 627
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9, v12, v15}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 640
    const/16 v43, 0x0

    .line 641
    .local v43, "n":I
    const/16 v36, 0x0

    .line 642
    .local v36, "isRepart":Z
    const-string v51, ""

    .line 643
    .local v51, "repeatCmd":Ljava/lang/String;
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_0
    const/4 v7, 0x7

    move/from16 v0, v35

    if-lt v0, v7, :cond_2

    .line 656
    if-nez v36, :cond_6

    .line 657
    const-string v51, "0"

    .line 661
    :goto_1
    new-instance v33, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 662
    .local v33, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v44

    .line 663
    .local v44, "nowDate":Ljava/lang/String;
    const-string v7, "-"

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    aget-object v45, v7, v9

    .line 664
    .local v45, "nowTime":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_opentime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 665
    .local v49, "ontime":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_closetime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 666
    .local v47, "offtime":Ljava/lang/String;
    move/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDateForLinkage(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v48

    .line 667
    .local v48, "onTimeStr":Ljava/lang/String;
    move/from16 v0, v43

    move-object/from16 v1, v47

    move/from16 v2, v36

    move-object/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDateForLinkageAfter(ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 669
    .local v46, "offTimeStr":Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 670
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 671
    move/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDate(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v48

    .line 672
    move/from16 v0, v43

    move-object/from16 v1, v47

    move/from16 v2, v36

    move-object/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDate(ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 676
    :cond_0
    const-string v7, "body"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->typeFlag:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 677
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 678
    .local v8, "phoneMac":Ljava/lang/String;
    const-string v7, ":"

    const-string v9, "-"

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 680
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->mac:Ljava/lang/String;

    .line 679
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v10

    .line 681
    .local v10, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    .line 682
    .local v17, "isDirect":Z
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 683
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "wan_phone%"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 684
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%22#"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 685
    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "#set#1%linkage"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 683
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, "cmd":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->mac:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "@"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "kankun-smartplug.com"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 687
    .local v6, "userJID":Ljava/lang/String;
    new-instance v4, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 688
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->handler:Landroid/os/Handler;

    const-string v11, ""

    .line 689
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v7, p0

    .line 687
    invoke-direct/range {v4 .. v12}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 690
    .local v4, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 1343
    .end local v4    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v6    # "userJID":Ljava/lang/String;
    .end local v8    # "phoneMac":Ljava/lang/String;
    .end local v10    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v17    # "isDirect":Z
    :cond_1
    :goto_2
    return-void

    .line 644
    .end local v33    # "fmt":Ljava/text/SimpleDateFormat;
    .end local v44    # "nowDate":Ljava/lang/String;
    .end local v45    # "nowTime":Ljava/lang/String;
    .end local v46    # "offTimeStr":Ljava/lang/String;
    .end local v47    # "offtime":Ljava/lang/String;
    .end local v48    # "onTimeStr":Ljava/lang/String;
    .end local v49    # "ontime":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aget-boolean v7, v7, v35

    if-eqz v7, :cond_3

    if-nez v36, :cond_3

    .line 645
    const/16 v36, 0x1

    .line 646
    if-nez v35, :cond_5

    .line 647
    const/16 v43, 0x8

    .line 652
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aget-boolean v7, v7, v35

    if-eqz v7, :cond_4

    .line 653
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v9, v35, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 643
    :cond_4
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_0

    .line 649
    :cond_5
    add-int/lit8 v43, v35, 0x1

    goto :goto_3

    .line 659
    :cond_6
    const/4 v7, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    goto/16 :goto_1

    .line 692
    .restart local v8    # "phoneMac":Ljava/lang/String;
    .restart local v10    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v17    # "isDirect":Z
    .restart local v33    # "fmt":Ljava/text/SimpleDateFormat;
    .restart local v44    # "nowDate":Ljava/lang/String;
    .restart local v45    # "nowTime":Ljava/lang/String;
    .restart local v46    # "offTimeStr":Ljava/lang/String;
    .restart local v47    # "offtime":Ljava/lang/String;
    .restart local v48    # "onTimeStr":Ljava/lang/String;
    .restart local v49    # "ontime":Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "wan_phone%"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->mac:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 693
    const-string v9, "%22#"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 694
    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "#set#10%linkage"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 692
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 695
    .restart local v5    # "cmd":Ljava/lang/String;
    const-string v13, ""

    .line 696
    .local v13, "confirmBeforeCmd":Ljava/lang/String;
    const-string v14, ""

    .line 697
    .local v14, "confirmAfterCmd":Ljava/lang/String;
    new-instance v11, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    .line 698
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->handler:Landroid/os/Handler;

    const v16, 0xb156

    .line 699
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v19

    move-object v12, v5

    move-object/from16 v18, p0

    .line 697
    invoke-direct/range {v11 .. v19}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 700
    .local v11, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_2

    .line 705
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v8    # "phoneMac":Ljava/lang/String;
    .end local v10    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v11    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v13    # "confirmBeforeCmd":Ljava/lang/String;
    .end local v14    # "confirmAfterCmd":Ljava/lang/String;
    .end local v17    # "isDirect":Z
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->update:Z

    if-nez v7, :cond_a

    .line 706
    const/16 v34, 0x0

    .line 707
    .local v34, "hasDeviceInScenes":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->detailModels:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_d

    .line 736
    :goto_4
    if-nez v34, :cond_a

    .line 738
    const/4 v7, 0x1

    .line 737
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortDeviceList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v32

    .line 739
    .local v32, "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v32, :cond_16

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 740
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-object/from16 v30, v0

    .line 741
    .local v30, "devices":[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 742
    .local v29, "deviceName":[Ljava/lang/String;
    const/16 v37, 0x0

    .local v37, "j":I
    :goto_5
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v0, v37

    if-lt v0, v7, :cond_13

    .line 768
    .end local v29    # "deviceName":[Ljava/lang/String;
    .end local v30    # "devices":[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v32    # "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .end local v34    # "hasDeviceInScenes":Z
    .end local v37    # "j":I
    :cond_a
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_point:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 767
    move/from16 v0, v43

    move/from16 v1, v36

    invoke-static {v0, v7, v1}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDate(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v50

    .line 769
    .local v50, "pointTimeStr":Ljava/lang/String;
    new-instance v18, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    invoke-direct/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;-><init>()V

    .line 770
    .local v18, "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    const-string v40, ""

    .line 771
    .local v40, "linkageNum":Ljava/lang/String;
    new-instance v41, Lcom/kankunit/smartplugcronus/util/LinkageUtil;

    invoke-direct/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;-><init>()V

    .line 772
    .local v41, "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    const-string v39, ""

    .line 774
    .local v39, "linkageChange":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "sceneId=\'"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 773
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 775
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    if-eqz v7, :cond_30

    .line 776
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v7, :cond_29

    .line 777
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isModelNull:Z

    .line 778
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "#update"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 783
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "linkageId=\'"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 783
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v38

    .line 785
    .local v38, "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v38, :cond_18

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_18

    .line 786
    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 793
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-eqz v7, :cond_1d

    .line 794
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    if-eqz v7, :cond_19

    .line 795
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    if-eqz v7, :cond_19

    .line 796
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string v7, ""

    .line 797
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 798
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v7, :cond_c

    .line 799
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 802
    :cond_c
    const-string v7, "Linkage conditions trigger time has come to limit. Please delete the previous scene and try again"

    const/4 v9, 0x1

    .line 801
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 803
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 707
    .end local v18    # "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .end local v38    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v39    # "linkageChange":Ljava/lang/String;
    .end local v40    # "linkageNum":Ljava/lang/String;
    .end local v41    # "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    .end local v50    # "pointTimeStr":Ljava/lang/String;
    .restart local v34    # "hasDeviceInScenes":Z
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 708
    .local v52, "sdm":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-virtual/range {v52 .. v52}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v42

    .line 709
    .local v42, "modelType":I
    const/4 v9, 0x3

    move/from16 v0, v42

    if-eq v0, v9, :cond_e

    const/16 v9, 0xe

    move/from16 v0, v42

    if-eq v0, v9, :cond_e

    const/16 v9, 0xf

    move/from16 v0, v42

    if-ne v0, v9, :cond_10

    .line 710
    :cond_e
    invoke-virtual/range {v52 .. v52}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 725
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v31

    .line 726
    .local v31, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v31, :cond_9

    const-string v9, "n"

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsAuth()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_9

    .line 730
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 729
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getSaveDeviceInfo()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 732
    const/16 v34, 0x1

    .line 733
    goto/16 :goto_4

    .line 711
    .end local v31    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_10
    const/4 v9, 0x6

    move/from16 v0, v42

    if-ne v0, v9, :cond_11

    .line 712
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 713
    invoke-virtual/range {v52 .. v52}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-class v15, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 712
    invoke-virtual {v9, v12, v15}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 714
    .local v28, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual/range {v28 .. v28}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    goto :goto_8

    .line 715
    .end local v28    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    :cond_11
    const/4 v9, 0x4

    move/from16 v0, v42

    if-eq v0, v9, :cond_12

    const/16 v9, 0xa

    move/from16 v0, v42

    if-eq v0, v9, :cond_12

    const/16 v9, 0xb

    move/from16 v0, v42

    if-eq v0, v9, :cond_12

    .line 716
    const/4 v9, 0x5

    move/from16 v0, v42

    if-eq v0, v9, :cond_12

    const/4 v9, 0x7

    move/from16 v0, v42

    if-eq v0, v9, :cond_12

    const/16 v9, 0x8

    move/from16 v0, v42

    if-eq v0, v9, :cond_12

    .line 717
    const/16 v9, 0x9

    move/from16 v0, v42

    if-eq v0, v9, :cond_12

    const/16 v9, 0xc

    move/from16 v0, v42

    if-eq v0, v9, :cond_12

    const/16 v9, 0xd

    move/from16 v0, v42

    if-ne v0, v9, :cond_f

    .line 718
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 719
    invoke-virtual/range {v52 .. v52}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-class v15, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 718
    invoke-virtual {v9, v12, v15}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 720
    .restart local v28    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-eqz v28, :cond_9

    .line 723
    invoke-virtual/range {v28 .. v28}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    goto/16 :goto_8

    .line 743
    .end local v28    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v42    # "modelType":I
    .end local v52    # "sdm":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    .restart local v29    # "deviceName":[Ljava/lang/String;
    .restart local v30    # "devices":[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v32    # "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .restart local v37    # "j":I
    :cond_13
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v29, v37

    .line 744
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aput-object v7, v30, v37

    .line 745
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 746
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v31

    .line 747
    .restart local v31    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v31, :cond_14

    const-string v7, "n"

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsAuth()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 742
    :cond_14
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .line 751
    :cond_15
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 750
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getSaveDeviceInfo()Z

    move-result v7

    if-eqz v7, :cond_14

    goto/16 :goto_6

    .line 757
    .end local v29    # "deviceName":[Ljava/lang/String;
    .end local v30    # "devices":[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v31    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v37    # "j":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v7, :cond_17

    .line 758
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 760
    :cond_17
    const-string v7, "No sockets available"

    .line 761
    const/4 v9, 0x1

    .line 760
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 761
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 788
    .end local v32    # "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .end local v34    # "hasDeviceInScenes":Z
    .restart local v18    # "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .restart local v38    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .restart local v39    # "linkageChange":Ljava/lang/String;
    .restart local v40    # "linkageNum":Ljava/lang/String;
    .restart local v41    # "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    .restart local v50    # "pointTimeStr":Ljava/lang/String;
    :cond_18
    new-instance v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 789
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 790
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v9

    .line 789
    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 791
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 806
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPointOld:Z

    if-eq v7, v9, :cond_1c

    .line 807
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    if-eqz v7, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    if-eqz v7, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    if-eqz v7, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    if-eqz v7, :cond_1b

    .line 808
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v7, :cond_1a

    .line 809
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 812
    :cond_1a
    const-string v7, "Trigger conditions are linked to the upper limit of the time period. Please delete the previous scene and try again"

    .line 813
    const/4 v9, 0x1

    .line 811
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 813
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 816
    :cond_1b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_22

    .line 817
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    .line 818
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 821
    const-string v19, "14"

    const-string v20, "none"

    .line 822
    const-string v21, "none"

    const-string v22, "none"

    const-string v23, "unset"

    .line 821
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 823
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 824
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 825
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 826
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 825
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 823
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 874
    :cond_1c
    :goto_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_25

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 875
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 878
    const-string v19, "16"

    .line 879
    const-string v21, "none"

    const-string v23, "set"

    move-object/from16 v20, v50

    move-object/from16 v22, v51

    .line 878
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 880
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 881
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 882
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 883
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 882
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 880
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 917
    :cond_1d
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-nez v7, :cond_20

    .line 918
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 919
    const-string v19, "16"

    .line 920
    const-string v21, "none"

    const-string v23, "unset"

    move-object/from16 v20, v50

    move-object/from16 v22, v51

    .line 919
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 921
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 922
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 923
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 924
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 923
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 921
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 926
    :cond_1e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 927
    const-string v19, "17"

    .line 928
    const-string v21, "none"

    const-string v23, "unset"

    move-object/from16 v20, v50

    move-object/from16 v22, v51

    .line 927
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 929
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 930
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 931
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 932
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 931
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 929
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 934
    :cond_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 936
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 939
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-eqz v7, :cond_28

    .line 940
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 941
    const-string v15, ":timer"

    .line 940
    invoke-static {v9, v12, v15}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 945
    :goto_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setIsPoint(Ljava/lang/String;)V

    .line 1314
    .end local v38    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :goto_c
    const-string v7, ""

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1318
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->detailModels:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7, v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getActionCmd(Landroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;

    move-result-object v53

    .line 1319
    .local v53, "sendMsg":Ljava/lang/String;
    const-string v7, "noAuth"

    move-object/from16 v0, v53

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 1320
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v7, :cond_21

    .line 1321
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1323
    :cond_21
    const-string v7, "There are no permissions, linkage cannot be saved"

    .line 1324
    const/4 v9, 0x1

    .line 1323
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 1324
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 827
    .end local v53    # "sendMsg":Ljava/lang/String;
    .restart local v38    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_22
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 828
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 829
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 832
    const-string v19, "15"

    const-string v20, "none"

    .line 833
    const-string v21, "none"

    const-string v22, "none"

    const-string v23, "unset"

    .line 832
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 834
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 835
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 836
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 837
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 836
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 834
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 838
    goto/16 :goto_9

    .line 850
    :cond_23
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    .line 851
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 852
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 855
    const-string v19, "19"

    const-string v20, "none"

    .line 856
    const-string v21, "none"

    const-string v22, "none"

    const-string v23, "unset"

    .line 855
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 857
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 858
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 859
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 860
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 859
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 857
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 861
    goto/16 :goto_9

    :cond_24
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 862
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 863
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 866
    const-string v19, "20"

    const-string v20, "none"

    .line 867
    const-string v21, "none"

    const-string v22, "none"

    const-string v23, "unset"

    .line 866
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 869
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 870
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 871
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 870
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 868
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_9

    .line 884
    :cond_25
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 885
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 886
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 889
    const-string v19, "17"

    .line 890
    const-string v21, "none"

    const-string v23, "set"

    move-object/from16 v20, v50

    move-object/from16 v22, v51

    .line 889
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 891
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 892
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 893
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 894
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 893
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 891
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 895
    goto/16 :goto_a

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    if-nez v7, :cond_27

    .line 896
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 899
    const-string v19, "16"

    .line 900
    const-string v21, "none"

    const-string v23, "set"

    move-object/from16 v20, v50

    move-object/from16 v22, v51

    .line 899
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 901
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 902
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 903
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 904
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 903
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 901
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 905
    goto/16 :goto_a

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    if-nez v7, :cond_1d

    .line 906
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 909
    const-string v19, "17"

    .line 910
    const-string v21, "none"

    const-string v23, "set"

    move-object/from16 v20, v50

    move-object/from16 v22, v51

    .line 909
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 911
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 913
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 914
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 913
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 911
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_a

    .line 943
    :cond_28
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    const-string v12, ""

    const-string v15, ":timer"

    invoke-static {v9, v12, v15}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 948
    .end local v38    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_29
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isModelNull:Z

    .line 949
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "#save"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 950
    new-instance v7, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-direct {v7}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 951
    new-instance v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 953
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-eqz v7, :cond_2d

    .line 954
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    if-eqz v7, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    if-eqz v7, :cond_2b

    .line 955
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v7, :cond_2a

    .line 956
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 959
    :cond_2a
    const-string v7, "Linkage conditions trigger time has come to limit. Please delete the previous scene and try again"

    const/4 v9, 0x1

    .line 958
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 960
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 963
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    if-nez v7, :cond_2e

    .line 964
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 966
    const-string v19, "16"

    .line 967
    const-string v21, "none"

    const-string v23, "set"

    move-object/from16 v20, v50

    move-object/from16 v22, v51

    .line 966
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 968
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 969
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 970
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 971
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 970
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 968
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 982
    :cond_2c
    :goto_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 984
    :cond_2d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 985
    const-string v9, "yyyy-MM-dd HH-mm-ss"

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 984
    invoke-static {v9, v12}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 988
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 989
    invoke-static/range {v40 .. v40}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 988
    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 991
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v9

    .line 990
    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 992
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setIsPoint(Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-eqz v7, :cond_2f

    .line 995
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 996
    const-string v15, ":timer"

    .line 995
    invoke-static {v9, v12, v15}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 1000
    :goto_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 972
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    if-nez v7, :cond_2c

    .line 973
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 975
    const-string v19, "17"

    .line 976
    const-string v21, "none"

    const-string v23, "set"

    move-object/from16 v20, v50

    move-object/from16 v22, v51

    .line 975
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 977
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 979
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 980
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 979
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 977
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_d

    .line 998
    :cond_2f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    const-string v12, ""

    const-string v15, ":timer"

    invoke-static {v9, v12, v15}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1003
    :cond_30
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v7, :cond_47

    .line 1004
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isModelNull:Z

    .line 1005
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "#update"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 1007
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "linkageId=\'"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1007
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v38

    .line 1009
    .restart local v38    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v38, :cond_33

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_33

    .line 1010
    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1017
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-eqz v7, :cond_38

    .line 1018
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    if-eqz v7, :cond_34

    .line 1019
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    if-eqz v7, :cond_34

    .line 1020
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    if-eqz v7, :cond_34

    .line 1021
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    if-eqz v7, :cond_34

    .line 1022
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_31

    const-string v7, ""

    .line 1023
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1024
    :cond_31
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v7, :cond_32

    .line 1025
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1028
    :cond_32
    const-string v7, "Trigger conditions are linked to the upper limit of the time period. Please delete the previous scene and try again"

    const/4 v9, 0x1

    .line 1027
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 1029
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1012
    :cond_33
    new-instance v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1013
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1014
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v9

    .line 1013
    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto :goto_f

    .line 1032
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPointOld:Z

    if-eq v7, v9, :cond_37

    .line 1033
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    if-eqz v7, :cond_36

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    if-eqz v7, :cond_36

    .line 1034
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v7, :cond_35

    .line 1035
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1038
    :cond_35
    const-string v7, "Linkage conditions trigger time has come to limit. Please delete the previous scene and try again"

    .line 1039
    const/4 v9, 0x1

    .line 1037
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 1039
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1042
    :cond_36
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3e

    .line 1043
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 1044
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1047
    const-string v19, "16"

    const-string v20, "none"

    .line 1048
    const-string v21, "none"

    const-string v22, "none"

    const-string v23, "unset"

    .line 1047
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1049
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1051
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1052
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1051
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1049
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1066
    :cond_37
    :goto_10
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3f

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 1067
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1070
    const-string v19, "14"

    .line 1071
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1070
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1072
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1073
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1074
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1075
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1074
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1072
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1174
    :cond_38
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-nez v7, :cond_3d

    .line 1175
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_39

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 1176
    const-string v19, "14"

    .line 1177
    const-string v23, "unset"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1176
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1179
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1180
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1180
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1178
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1183
    :cond_39
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3a

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 1184
    const-string v19, "15"

    .line 1185
    const-string v23, "unset"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1184
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1187
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1188
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1188
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1198
    :cond_3a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3b

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 1199
    const-string v19, "19"

    .line 1200
    const-string v23, "unset"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1199
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1202
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1203
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1203
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1201
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1206
    :cond_3b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3c

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 1207
    const-string v19, "20"

    .line 1208
    const-string v23, "unset"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1207
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1210
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1211
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1211
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1209
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1214
    :cond_3c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1222
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-eqz v7, :cond_46

    .line 1223
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1224
    const-string v15, ":timer"

    .line 1223
    invoke-static {v9, v12, v15}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 1228
    :goto_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, "n"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setIsPoint(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1053
    :cond_3e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_37

    .line 1054
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 1055
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, ""

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1058
    const-string v19, "17"

    const-string v20, "none"

    .line 1059
    const-string v21, "none"

    const-string v22, "none"

    const-string v23, "unset"

    .line 1058
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1060
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1062
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1063
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1062
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1060
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_10

    .line 1076
    :cond_3f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_40

    .line 1077
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 1078
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1081
    const-string v19, "15"

    .line 1082
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1081
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1083
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1085
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1086
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1085
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1083
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1087
    goto/16 :goto_11

    .line 1099
    :cond_40
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_41

    .line 1100
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 1101
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1104
    const-string v19, "19"

    .line 1105
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1104
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1107
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1108
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1108
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1110
    goto/16 :goto_11

    :cond_41
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_42

    .line 1111
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 1112
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1115
    const-string v19, "20"

    .line 1116
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1115
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1118
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1119
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1119
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1121
    goto/16 :goto_11

    :cond_42
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    if-nez v7, :cond_43

    .line 1122
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1125
    const-string v19, "14"

    .line 1126
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1125
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1129
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1129
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1131
    goto/16 :goto_11

    :cond_43
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    if-nez v7, :cond_44

    .line 1132
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1135
    const-string v19, "15"

    .line 1136
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1135
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1138
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1139
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1139
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1141
    goto/16 :goto_11

    .line 1152
    :cond_44
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    if-nez v7, :cond_45

    .line 1153
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1156
    const-string v19, "19"

    .line 1157
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1156
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1159
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1160
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1160
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1158
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1162
    goto/16 :goto_11

    :cond_45
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    if-nez v7, :cond_38

    .line 1163
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1166
    const-string v19, "20"

    .line 1167
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1166
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1169
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1170
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1170
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_11

    .line 1226
    :cond_46
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    const-string v12, ""

    const-string v15, ":timer"

    invoke-static {v9, v12, v15}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1231
    .end local v38    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_47
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isModelNull:Z

    .line 1232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "#save"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 1233
    new-instance v7, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-direct {v7}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 1234
    new-instance v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1236
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-eqz v7, :cond_4b

    .line 1237
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    if-eqz v7, :cond_49

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    if-eqz v7, :cond_49

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    if-eqz v7, :cond_49

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    if-eqz v7, :cond_49

    .line 1238
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v7, :cond_48

    .line 1239
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1242
    :cond_48
    const-string v7, "Trigger conditions are linked to the upper limit of the time period. Please delete the previous scene and try again"

    const/4 v9, 0x1

    .line 1241
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 1243
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1246
    :cond_49
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    if-nez v7, :cond_4c

    .line 1247
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1249
    const-string v19, "14"

    .line 1250
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1249
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1251
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1252
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1253
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1253
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1251
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1293
    :cond_4a
    :goto_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1295
    :cond_4b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 1296
    const-string v9, "yyyy-MM-dd HH-mm-ss"

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 1295
    invoke-static {v9, v12}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 1300
    invoke-static/range {v40 .. v40}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1299
    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1302
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v9

    .line 1301
    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v9, "n"

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setIsPoint(Ljava/lang/String;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 1305
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isset:Z

    if-eqz v7, :cond_4f

    .line 1306
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1307
    const-string v15, ":timer"

    .line 1306
    invoke-static {v9, v12, v15}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 1311
    :goto_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1255
    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    if-nez v7, :cond_4d

    .line 1256
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1258
    const-string v19, "15"

    .line 1259
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1258
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1261
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1262
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1262
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1260
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1264
    goto/16 :goto_13

    .line 1274
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    if-nez v7, :cond_4e

    .line 1275
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1277
    const-string v19, "19"

    .line 1278
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1277
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1280
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1281
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1281
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1279
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1283
    goto/16 :goto_13

    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    if-nez v7, :cond_4a

    .line 1284
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1286
    const-string v19, "20"

    .line 1287
    const-string v23, "set"

    move-object/from16 v20, v48

    move-object/from16 v21, v46

    move-object/from16 v22, v51

    .line 1286
    invoke-static/range {v18 .. v23}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v18

    .line 1288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1289
    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1290
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 1291
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 1290
    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1288
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_13

    .line 1309
    :cond_4f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    const-string v12, ""

    const-string v15, ":timer"

    invoke-static {v9, v12, v15}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1327
    .restart local v53    # "sendMsg":Ljava/lang/String;
    :cond_50
    const-string v7, "noDevice"

    move-object/from16 v0, v53

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1328
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v7, :cond_51

    .line 1329
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1331
    :cond_51
    const-string v7, "There are devices that no longer exist"

    .line 1332
    const/4 v9, 0x1

    .line 1331
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 1332
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1335
    :cond_52
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "wan_phone%%"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1336
    const/4 v9, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v53

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%%linkage"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1335
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1338
    .restart local v5    # "cmd":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "@addlinkage."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1339
    const-string v9, "kankun-smartplug.com"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1338
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1340
    .restart local v6    # "userJID":Ljava/lang/String;
    new-instance v4, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 1341
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "addlinkage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v27, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, p0

    .line 1340
    invoke-direct/range {v19 .. v27}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 1342
    .restart local v4    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_2
.end method

.method private getSaveDeviceInfo()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 567
    .line 568
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 567
    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 569
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_0

    move v3, v4

    .line 623
    :goto_0
    return v3

    .line 572
    :cond_0
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v3

    if-eq v3, v5, :cond_c

    .line 573
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    .line 574
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    .line 576
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    .line 577
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    .line 578
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    .line 579
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mac like \'%"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 583
    .local v2, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 584
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 616
    .end local v1    # "i":I
    :goto_2
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    if-nez v3, :cond_a

    :cond_1
    move v3, v5

    .line 617
    goto :goto_0

    .line 585
    .restart local v1    # "i":I
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 586
    const-string v6, ""

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 587
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    .line 589
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 590
    const-string v6, ""

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 591
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    .line 596
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 597
    const-string v6, ""

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 598
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    .line 600
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 601
    const-string v6, ""

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 602
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    .line 604
    :cond_6
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 605
    const-string v6, ""

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 606
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    .line 608
    :cond_7
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 609
    const-string v6, ""

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 610
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    .line 584
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 614
    .end local v1    # "i":I
    :cond_9
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    goto/16 :goto_2

    .line 619
    :cond_a
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    if-nez v3, :cond_c

    :cond_b
    move v3, v5

    .line 620
    goto/16 :goto_0

    .end local v2    # "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_c
    move v3, v4

    .line 623
    goto/16 :goto_0
.end method

.method private iniUpdataData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "openTime"    # Ljava/lang/String;
    .param p2, "closetime"    # Ljava/lang/String;
    .param p3, "repartDate"    # Ljava/lang/String;
    .param p4, "openEn"    # Ljava/lang/String;
    .param p5, "closeEn"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f0c01bc

    const v5, 0x7f0203d7

    const v4, 0x7f0203d6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 302
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    if-eqz v0, :cond_6

    .line 303
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->open_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->close_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->point_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    .line 307
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPointOld:Z

    .line 308
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_point:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 309
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_point:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_1:Landroid/widget/Button;

    .line 319
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 320
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aput-boolean v3, v0, v2

    .line 332
    :goto_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 333
    const v1, 0x7f0c01bf

    .line 332
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 333
    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 336
    if-eqz v0, :cond_a

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_2:Landroid/widget/Button;

    .line 338
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 339
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 345
    :goto_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 346
    const v1, 0x7f0c01c0

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 346
    if-nez v0, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 348
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 349
    if-eqz v0, :cond_b

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_3:Landroid/widget/Button;

    .line 351
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 352
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 358
    :goto_3
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 359
    const v1, 0x7f0c01c1

    .line 358
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 359
    if-nez v0, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 361
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 362
    if-eqz v0, :cond_c

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_4:Landroid/widget/Button;

    .line 364
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 365
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 371
    :goto_4
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 372
    const v1, 0x7f0c01c2

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 372
    if-nez v0, :cond_3

    .line 373
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 374
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 375
    if-eqz v0, :cond_d

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_5:Landroid/widget/Button;

    .line 377
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 378
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 384
    :goto_5
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 385
    const v1, 0x7f0c01c3

    .line 384
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 385
    if-nez v0, :cond_4

    .line 386
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 388
    if-eqz v0, :cond_e

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_6:Landroid/widget/Button;

    .line 390
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 391
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 397
    :goto_6
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 398
    const v1, 0x7f0c01bd

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 398
    if-nez v0, :cond_5

    .line 399
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 400
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 401
    if-eqz v0, :cond_f

    .line 402
    :cond_5
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_7:Landroid/widget/Button;

    .line 403
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 404
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aput-boolean v2, v0, v3

    .line 410
    :goto_7
    return-void

    .line 311
    :cond_6
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPointOld:Z

    .line 312
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_opentime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_closetime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 321
    :cond_7
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 322
    const v1, 0x7f0c01be

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 322
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 324
    :cond_8
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_1:Landroid/widget/Button;

    .line 325
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 326
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aput-boolean v2, v0, v2

    goto/16 :goto_1

    .line 328
    :cond_9
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_1:Landroid/widget/Button;

    .line 329
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 330
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aput-boolean v3, v0, v2

    goto/16 :goto_1

    .line 341
    :cond_a
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_2:Landroid/widget/Button;

    .line 342
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 343
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto/16 :goto_2

    .line 354
    :cond_b
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_3:Landroid/widget/Button;

    .line 355
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 356
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto/16 :goto_3

    .line 367
    :cond_c
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_4:Landroid/widget/Button;

    .line 368
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 369
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto/16 :goto_4

    .line 380
    :cond_d
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_5:Landroid/widget/Button;

    .line 381
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 382
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto/16 :goto_5

    .line 393
    :cond_e
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_6:Landroid/widget/Button;

    .line 394
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 395
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto/16 :goto_6

    .line 406
    :cond_f
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_7:Landroid/widget/Button;

    .line 407
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 408
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aput-boolean v3, v0, v3

    goto/16 :goto_7
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 266
    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string v2, "hasTemp1"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp1:Z

    .line 270
    const-string v2, "hasTemp2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp2:Z

    .line 272
    const-string v2, "hasTemp4"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp4:Z

    .line 273
    const-string v2, "hasTemp5"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp5:Z

    .line 274
    const-string v2, "hasTemp6"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp6:Z

    .line 275
    const-string v2, "hasTemp7"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->hasTemp7:Z

    .line 276
    const-string v2, "isPoint"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "point":Ljava/lang/String;
    const-string v2, "y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    .line 278
    const-string v2, "sceneId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    .line 279
    const-string v2, "time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->time:Ljava/lang/String;

    .line 280
    const-string v2, "repart"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->repart:Ljava/lang/String;

    .line 281
    const-string v2, "update"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->update:Z

    .line 282
    const-string v2, "linkageMac"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkageMac:Ljava/lang/String;

    .line 283
    const-string v2, "linkagePwd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkagePwd:Ljava/lang/String;

    .line 284
    const-string v2, "typeFlag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->typeFlag:Ljava/lang/String;

    .line 285
    const-string v2, "body"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->typeFlag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_tj:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    const-string v2, "mac"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->mac:Ljava/lang/String;

    .line 291
    :goto_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v3, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sceneId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->detailModels:Ljava/util/List;

    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 277
    goto :goto_1

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_tj:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "openTime"    # Ljava/lang/String;
    .param p2, "closetime"    # Ljava/lang/String;
    .param p3, "repartDate"    # Ljava/lang/String;
    .param p4, "openEn"    # Ljava/lang/String;
    .param p5, "closeEn"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-direct/range {p0 .. p5}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->iniUpdataData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1419
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->doBack(Ljava/lang/String;)V

    .line 1421
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 1348
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->doBack(Ljava/lang/String;)V

    .line 1427
    const/4 v1, 0x0

    return v1
.end method

.method protected initBg()V
    .locals 5

    .prologue
    .line 208
    const v3, 0x7f070091

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 209
    .local v2, "timerset_mainbg":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 210
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202c5

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 214
    const v4, 0x7f0201af

    .line 213
    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 216
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 1358
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1359
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1360
    const v4, 0x7f0c01b4

    .line 1359
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    new-instance v3, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1368
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1375
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1376
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1377
    new-instance v3, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    return-void
.end method

.method protected initView()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0xc

    const/16 v7, 0xa

    .line 221
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->initBg()V

    .line 222
    const v3, 0x7f0700a3

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    .line 223
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 224
    const v3, 0x7f07009f

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    .line 225
    const v3, 0x7f07026a

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_7:Landroid/widget/Button;

    .line 226
    const v3, 0x7f070270

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_6:Landroid/widget/Button;

    .line 227
    const v3, 0x7f07026f

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_5:Landroid/widget/Button;

    .line 228
    const v3, 0x7f07026e

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_4:Landroid/widget/Button;

    .line 229
    const v3, 0x7f07026d

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_3:Landroid/widget/Button;

    .line 230
    const v3, 0x7f07026c

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_2:Landroid/widget/Button;

    .line 231
    const v3, 0x7f07026b

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_1:Landroid/widget/Button;

    .line 232
    const v3, 0x7f0700a0

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_cancel:Landroid/widget/TextView;

    .line 233
    const v3, 0x7f0700a1

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_title:Landroid/widget/TextView;

    .line 234
    const v3, 0x7f0700a2

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_ok:Landroid/widget/TextView;

    .line 235
    const v3, 0x7f070266

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_opentime:Landroid/widget/TextView;

    .line 236
    const v3, 0x7f070268

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_closetime:Landroid/widget/TextView;

    .line 237
    const v3, 0x7f07028c

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_point:Landroid/widget/TextView;

    .line 238
    const v3, 0x7f070284

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->group:Landroid/widget/RadioGroup;

    .line 239
    const v3, 0x7f070285

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_d:Landroid/widget/RadioButton;

    .line 240
    const v3, 0x7f070286

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_point:Landroid/widget/RadioButton;

    .line 241
    const v3, 0x7f070263

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->open_layout:Landroid/widget/RelativeLayout;

    .line 242
    const v3, 0x7f070288

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->close_layout:Landroid/widget/RelativeLayout;

    .line 243
    const v3, 0x7f07028a

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->point_layout:Landroid/widget/RelativeLayout;

    .line 244
    const v3, 0x7f070283

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_tj:Landroid/widget/LinearLayout;

    .line 246
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 247
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x2

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->add(II)V

    .line 248
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 249
    .local v1, "hour":I
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 250
    .local v2, "minute":I
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_opentime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 251
    if-ge v2, v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_point:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v7, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 253
    if-ge v2, v7, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 255
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 256
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 257
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_closetime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v7, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 258
    if-ge v2, v7, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 260
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 261
    return-void

    .line 250
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 251
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    .line 252
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_2

    .line 253
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    .line 257
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    .line 258
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const v10, 0x7f0203d7

    const v7, 0x7f0203d6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 542
    :goto_0
    return-void

    .line 417
    :sswitch_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 418
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_0

    .line 422
    :sswitch_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 423
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_0

    .line 427
    :sswitch_2
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v5, v8}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 428
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 429
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 430
    const v7, 0x7f0c01ae

    .line 429
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_opentime:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "opentime":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 433
    .local v1, "hour":I
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 434
    .local v2, "minute":I
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 435
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0

    .line 439
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v3    # "opentime":Ljava/lang/String;
    :sswitch_3
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v5, v8}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 440
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 442
    const v7, 0x7f0c01af

    .line 441
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_closetime:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "clsoetime":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 445
    .restart local v1    # "hour":I
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 446
    .restart local v2    # "minute":I
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 447
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 451
    .end local v0    # "clsoetime":Ljava/lang/String;
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    :sswitch_4
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v5, v8}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 452
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 453
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_title:Landroid/widget/TextView;

    const-string v6, "Execution time"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_point:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, "pointtime":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 456
    .restart local v1    # "hour":I
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 457
    .restart local v2    # "minute":I
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 458
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 462
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v4    # "pointtime":Ljava/lang/String;
    :sswitch_5
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aget-boolean v5, v5, v9

    if-eqz v5, :cond_0

    .line 463
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_1:Landroid/widget/Button;

    .line 464
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 465
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aput-boolean v8, v5, v9

    goto/16 :goto_0

    .line 467
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_1:Landroid/widget/Button;

    .line 468
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 469
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aput-boolean v9, v5, v9

    goto/16 :goto_0

    .line 473
    :sswitch_6
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x2

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_1

    .line 474
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_2:Landroid/widget/Button;

    .line 475
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 476
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x2

    aput-boolean v8, v5, v6

    goto/16 :goto_0

    .line 478
    :cond_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_2:Landroid/widget/Button;

    .line 479
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 480
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x2

    aput-boolean v9, v5, v6

    goto/16 :goto_0

    .line 484
    :sswitch_7
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x3

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_2

    .line 485
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_3:Landroid/widget/Button;

    .line 486
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 487
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x3

    aput-boolean v8, v5, v6

    goto/16 :goto_0

    .line 489
    :cond_2
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_3:Landroid/widget/Button;

    .line 490
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 491
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x3

    aput-boolean v9, v5, v6

    goto/16 :goto_0

    .line 495
    :sswitch_8
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x4

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_3

    .line 496
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_4:Landroid/widget/Button;

    .line 497
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 498
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x4

    aput-boolean v8, v5, v6

    goto/16 :goto_0

    .line 500
    :cond_3
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_4:Landroid/widget/Button;

    .line 501
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 502
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x4

    aput-boolean v9, v5, v6

    goto/16 :goto_0

    .line 506
    :sswitch_9
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x5

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_4

    .line 507
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_5:Landroid/widget/Button;

    .line 508
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 509
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x5

    aput-boolean v8, v5, v6

    goto/16 :goto_0

    .line 511
    :cond_4
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_5:Landroid/widget/Button;

    .line 512
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 513
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x5

    aput-boolean v9, v5, v6

    goto/16 :goto_0

    .line 517
    :sswitch_a
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x6

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_5

    .line 518
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_6:Landroid/widget/Button;

    .line 519
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 520
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x6

    aput-boolean v8, v5, v6

    goto/16 :goto_0

    .line 522
    :cond_5
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_6:Landroid/widget/Button;

    .line 523
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 524
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    const/4 v6, 0x6

    aput-boolean v9, v5, v6

    goto/16 :goto_0

    .line 528
    :sswitch_b
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_6

    .line 529
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_7:Landroid/widget/Button;

    .line 530
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 531
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aput-boolean v8, v5, v8

    goto/16 :goto_0

    .line 533
    :cond_6
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_7:Landroid/widget/Button;

    .line 534
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 535
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->dayFlag:[Z

    aput-boolean v9, v5, v8

    goto/16 :goto_0

    .line 415
    :sswitch_data_0
    .sparse-switch
        0x7f0700a0 -> :sswitch_1
        0x7f0700a2 -> :sswitch_0
        0x7f070266 -> :sswitch_2
        0x7f070268 -> :sswitch_3
        0x7f07026a -> :sswitch_b
        0x7f07026b -> :sswitch_5
        0x7f07026c -> :sswitch_6
        0x7f07026d -> :sswitch_7
        0x7f07026e -> :sswitch_8
        0x7f07026f -> :sswitch_9
        0x7f070270 -> :sswitch_a
        0x7f07028c -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v0, 0x7f030093

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->setContentView(I)V

    .line 137
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 138
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->handler:Landroid/os/Handler;

    .line 140
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 141
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->initView()V

    .line 142
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->initData()V

    .line 143
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_ok:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 146
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_opentime:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_closetime:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_point:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_7:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_6:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_5:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_repeat_date_1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->group:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 174
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->update:Z

    if-eqz v0, :cond_0

    .line 175
    const-string v7, ""

    .line 176
    .local v7, "openTime":Ljava/lang/String;
    const-string v6, ""

    .line 177
    .local v6, "closetime":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->isPoint:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->time:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v7, v0, v2

    .line 179
    const-string v6, ""

    .line 184
    :goto_0
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->repart:Ljava/lang/String;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getRepart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    const-string v4, "y"

    const-string v5, "y"

    move-object v0, p0

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->updateTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v6    # "closetime":Ljava/lang/String;
    .end local v7    # "openTime":Ljava/lang/String;
    :cond_0
    return-void

    .line 181
    .restart local v6    # "closetime":Ljava/lang/String;
    .restart local v7    # "openTime":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->time:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v7, v0, v2

    .line 182
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->time:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v3

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 194
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->finish()V

    .line 204
    :goto_0
    return v2

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->doSave()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 128
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 123
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/16 v4, 0xa

    .line 546
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 547
    if-eqz v0, :cond_2

    .line 548
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_opentime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ge p2, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 551
    if-ge p3, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :goto_2
    return-void

    .line 549
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 551
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 552
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 553
    if-eqz v0, :cond_5

    .line 554
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_closetime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ge p2, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 557
    if-ge p3, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 555
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 557
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    .line 559
    :cond_5
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->linkage_timer_point:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ge p2, v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 561
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 562
    if-ge p3, v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 560
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    .line 562
    :cond_7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->doBack(Ljava/lang/String;)V

    .line 1354
    return-void
.end method
