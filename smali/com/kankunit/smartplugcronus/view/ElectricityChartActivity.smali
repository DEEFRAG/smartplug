.class public Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "ElectricityChartActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;
    }
.end annotation


# instance fields
.field private currenttemp:Landroid/widget/TextView;

.field private day_tab:Landroid/widget/Button;

.field private electrict_chat:Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;

.field private electrict_layout:Landroid/widget/RelativeLayout;

.field private electrict_msg:Ljava/lang/String;

.field private electrict_power_list:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

.field private handler:Landroid/os/Handler;

.field private isHM:Z

.field private mac:Ljava/lang/String;

.field private mainview:Landroid/widget/HorizontalScrollView;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private nowElectrictUse:Ljava/lang/String;

.field private nowPower:Ljava/lang/String;

.field private now_month:Landroid/widget/TextView;

.field private power_currenttemp:Landroid/widget/TextView;

.field private power_layout:Landroid/widget/RelativeLayout;

.field private power_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

.field private power_mainview:Landroid/widget/HorizontalScrollView;

.field private power_msg:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private task:Ljava/util/TimerTask;

.field private time:Ljava/lang/String;

.field private final timer:Ljava/util/Timer;

.field private year_tab:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->timer:Ljava/util/Timer;

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->isHM:Z

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_msg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowPower:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->mainview:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_mainview:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 18
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v13, "energy_ack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 327
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_msg:Ljava/lang/String;

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_chat:Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mDraw(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 332
    .local v12, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v9, v13, 0x1

    .line 333
    .local v9, "month":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v13, 0xa

    if-ge v9, v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_0
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "date":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "date0":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 336
    .local v11, "tempStrs":[Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v13, v11, v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "deviceData":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v5, "electrict_power_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v13, v4

    if-lt v6, v13, :cond_4

    .line 355
    new-instance v7, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v5}, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 357
    .local v7, "listItemAdapter_task":Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;->notifyDataSetChanged()V

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_power_list:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v13, v7}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 360
    .end local v2    # "date":Ljava/lang/String;
    .end local v3    # "date0":Ljava/lang/String;
    .end local v4    # "deviceData":[Ljava/lang/String;
    .end local v5    # "electrict_power_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "i":I
    .end local v7    # "listItemAdapter_task":Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;
    .end local v9    # "month":I
    .end local v11    # "tempStrs":[Ljava/lang/String;
    .end local v12    # "year":I
    :cond_0
    const-string v13, "power_ack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 361
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_msg:Ljava/lang/String;

    .line 363
    :cond_1
    const-string v13, "pack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "#power#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 364
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 365
    .local v10, "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->what:I

    .line 366
    move-object/from16 v0, p1

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    .end local v10    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 333
    .restart local v9    # "month":I
    .restart local v12    # "year":I
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto/16 :goto_0

    .line 339
    .restart local v2    # "date":Ljava/lang/String;
    .restart local v3    # "date0":Ljava/lang/String;
    .restart local v4    # "deviceData":[Ljava/lang/String;
    .restart local v5    # "electrict_power_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v6    # "i":I
    .restart local v11    # "tempStrs":[Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-object v13, v4, v6

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    aget-object v13, v4, v6

    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 341
    :cond_5
    aget-object v13, v4, v6

    const-string v14, "\\&"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowElectrictUse:Ljava/lang/String;

    .line 342
    aget-object v13, v4, v6

    const-string v14, "\\&"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->time:Ljava/lang/String;

    .line 343
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 344
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->arg1:I

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    .end local v10    # "msg":Landroid/os/Message;
    :cond_6
    if-nez v6, :cond_7

    .line 338
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 350
    :cond_7
    const-string v13, "electrict_power_user"

    new-instance v14, Ljava/lang/StringBuilder;

    aget-object v15, v4, v6

    const-string v16, "\\&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x1

    const-string v17, "e"

    invoke-static/range {v15 .. v17}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v13, "electrict_power_mother_text"

    new-instance v14, Ljava/lang/StringBuilder;

    aget-object v15, v4, v6

    const-string v16, "\\&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "Month"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private initDate()V
    .locals 13

    .prologue
    .line 188
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v12, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 190
    const-string v5, "mac"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->mac:Ljava/lang/String;

    .line 191
    const-string v5, "pwd"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->pwd:Ljava/lang/String;

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->mac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%get_energy%energy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->mac:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@queryElectricity."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 195
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "queryElectricity"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    .line 194
    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 196
    .local v0, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->mac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%get_power%power"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "powerCmd":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 200
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "queryElectricity"

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v5, v2

    move-object v6, p0

    .line 199
    invoke-direct/range {v3 .. v11}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 201
    .local v3, "powerThread":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 203
    new-instance v5, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$4;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->task:Ljava/util/TimerTask;

    .line 211
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->timer:Ljava/util/Timer;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->task:Ljava/util/TimerTask;

    const-wide/16 v7, 0xa

    const-wide/16 v9, 0x2710

    invoke-virtual/range {v5 .. v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 212
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 173
    const v0, 0x7f0701c4

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_chat:Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;

    .line 174
    const v0, 0x7f0701cf

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    .line 175
    const v0, 0x7f0701ce

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_mainview:Landroid/widget/HorizontalScrollView;

    .line 176
    const v0, 0x7f070123

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->mainview:Landroid/widget/HorizontalScrollView;

    .line 177
    const v0, 0x7f0701c8

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_power_list:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    .line 178
    const v0, 0x7f0701c3

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_layout:Landroid/widget/RelativeLayout;

    .line 179
    const v0, 0x7f0701c9

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_layout:Landroid/widget/RelativeLayout;

    .line 180
    const v0, 0x7f0701c1

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->year_tab:Landroid/widget/Button;

    .line 181
    const v0, 0x7f0701c2

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->day_tab:Landroid/widget/Button;

    .line 182
    const v0, 0x7f0701c7

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->currenttemp:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0701c6

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->now_month:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0701cb

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_currenttemp:Landroid/widget/TextView;

    .line 185
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 257
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v6, 0x143

    if-ne v4, v6, :cond_0

    .line 258
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "phoneMac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    .line 260
    .local v7, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const-string v4, ":"

    const-string v6, "-"

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%check%power"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "nowPower":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->mac:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "nowPowerJID":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 264
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->handler:Landroid/os/Handler;

    const-string v8, "queryElectricity"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v4, p0

    .line 263
    invoke-direct/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 265
    .local v1, "nowPowerThread":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 266
    const/4 v4, 0x1

    .line 309
    .end local v1    # "nowPowerThread":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v2    # "nowPower":Ljava/lang/String;
    .end local v3    # "nowPowerJID":Ljava/lang/String;
    .end local v5    # "phoneMac":Ljava/lang/String;
    .end local v7    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :goto_0
    return v4

    .line 268
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 271
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 272
    .local v10, "bsgMsg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    .line 273
    if-eqz v10, :cond_2

    const-string v4, "null"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "#"

    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const/4 v6, 0x3

    if-ge v4, v6, :cond_3

    .line 274
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 276
    :cond_3
    const-string v4, "#"

    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aget-object v4, v4, v6

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowPower:Ljava/lang/String;

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_currenttemp:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowPower:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "p"

    invoke-static {v6, v8, v9}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowPower:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v8, "p"

    invoke-static {v4, v6, v8}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const v6, 0x45098000    # 2200.0f

    div-float v11, v4, v6

    .line 280
    .local v11, "num":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v11, v4

    if-lez v4, :cond_4

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_currenttemp:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f09002e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    const/high16 v11, 0x3f800000    # 1.0f

    .line 286
    :goto_1
    const v4, 0x7f0701cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 287
    .local v12, "power_blue":Landroid/widget/TextView;
    const v4, 0x7f0701cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 288
    .local v14, "power_white":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    .local v13, "power_blueParamsa":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 290
    .local v15, "power_whiteParamsa":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v11

    iput v4, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 291
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 292
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 284
    .end local v12    # "power_blue":Landroid/widget/TextView;
    .end local v13    # "power_blueParamsa":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "power_white":Landroid/widget/TextView;
    .end local v15    # "power_whiteParamsa":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_currenttemp:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f09002d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 294
    .end local v11    # "num":F
    :cond_5
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    sparse-switch v4, :sswitch_data_0

    .line 309
    :cond_6
    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 296
    :sswitch_0
    const-string v4, "#power#"

    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "%pack"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "%pack"

    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    const-string v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowPower:Ljava/lang/String;

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_currenttemp:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowPower:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "p"

    invoke-static {v6, v8, v9}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_7
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->currenttemp:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowElectrictUse:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "e"

    invoke-static {v6, v8, v9}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->time:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->time:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->now_month:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "\u3000"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->time:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "Month"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method public initHongMiHeader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    const-string v0, "Power statistics"

    invoke-static {v0, v1, v1, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->isHM:Z

    .line 401
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x9e34

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loading..."

    new-instance v4, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$2;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V

    invoke-static {p0, v2, v3, v9, v4}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 120
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->day_tab:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 121
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_chat:Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_chat:Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mDraw(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    invoke-virtual {v2, v6}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const-string v3, "Power statistics"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->isHM:Z

    if-eqz v2, :cond_1

    .line 128
    const-string v2, "Power statistics"

    invoke-static {v2, v7, v7, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    :cond_1
    move-object v0, p1

    .line 130
    check-cast v0, Landroid/widget/Button;

    .line 131
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    const v3, 0x7f090025

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 133
    const v2, 0x7f02033b

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 134
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->day_tab:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 135
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->day_tab:Landroid/widget/Button;

    const v3, 0x7f02033d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 136
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 141
    .end local v0    # "btn":Landroid/widget/Button;
    :pswitch_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loading..."

    new-instance v4, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$3;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V

    invoke-static {p0, v2, v3, v9, v4}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 147
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_currenttemp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowPower:Ljava/lang/String;

    const-string v4, "p"

    invoke-static {v3, v8, v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->day_tab:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 149
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_chat:Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;

    invoke-virtual {v2, v6}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 153
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const-string v3, "Power Statistics"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->isHM:Z

    if-eqz v2, :cond_2

    .line 155
    const-string v2, "Power Statistics"

    invoke-static {v2, v7, v7, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    :cond_2
    move-object v0, p1

    .line 157
    check-cast v0, Landroid/widget/Button;

    .line 158
    .restart local v0    # "btn":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 159
    const v3, 0x7f090025

    .line 158
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 160
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->year_tab:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 161
    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 160
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 162
    const v2, 0x7f020334

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 163
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->year_tab:Landroid/widget/Button;

    const v3, 0x7f02033d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 164
    new-instance v1, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;-><init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V

    .line 165
    .local v1, "dt":Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;->start()V

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x7f0701c1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->handler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 97
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loading..."

    const/16 v2, 0x2710

    new-instance v3, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 103
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->initView()V

    .line 104
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->initDate()V

    .line 106
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->year_tab:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->day_tab:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v1, 0x8

    .line 222
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_chat:Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->setVisibility(I)V

    .line 227
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->finish()V

    .line 229
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v2, 0x8

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->electrict_chat:Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->finish()V

    .line 87
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 252
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->mainview:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$5;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 241
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_mainview:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$6;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 247
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 395
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 396
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 323
    return-void
.end method
