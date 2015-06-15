.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;
.super Ljava/lang/Thread;
.source "WirelessConfigureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiConfigThread"
.end annotation


# instance fields
.field private buf:[B

.field private cmd:Ljava/lang/String;

.field private number:I

.field psd:Ljava/lang/String;

.field socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 416
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 417
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->cmd:Ljava/lang/String;

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    .line 419
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->socket:Ljava/net/Socket;

    .line 421
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->psd:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 51

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Z)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v45

    const-string v46, ""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 429
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "phone%"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "%"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "none"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->cmd:Ljava/lang/String;

    .line 432
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    .line 433
    const-string v46, "encrypt_info"

    const/16 v47, 0x0

    .line 432
    invoke-virtual/range {v45 .. v47}, Landroid/support/v7/app/ActionBarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v41

    .line 434
    .local v41, "userInfo":Landroid/content/SharedPreferences;
    const-string v45, "encrypt_en"

    const-string v46, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->psd:Ljava/lang/String;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->psd:Ljava/lang/String;

    move-object/from16 v45, v0

    const-string v46, ""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2

    .line 436
    const-string v45, "nopassword"

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->psd:Ljava/lang/String;

    .line 442
    :goto_1
    new-instance v45, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->cmd:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "%"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->psd:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->cmd:Ljava/lang/String;

    .line 444
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 445
    .local v4, "cal":Ljava/util/Calendar;
    const/16 v45, 0xf

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v44

    .line 446
    .local v44, "zoneOffset":I
    const/16 v45, 0x10

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 448
    .local v11, "dstOffset":I
    add-int v45, v44, v11

    const v46, 0x36ee80

    div-int v37, v45, v46

    .line 449
    .local v37, "tzH":I
    add-int v45, v44, v11

    move/from16 v0, v45

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v45, v0

    move/from16 v0, v45

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v45, v0

    div-int/lit8 v39, v45, 0x3c

    .line 451
    .local v39, "tzM":I
    if-gez v37, :cond_4

    const-string v15, "-"

    .line 452
    .local v15, "flag":Ljava/lang/String;
    :goto_2
    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v45

    const/16 v46, 0xa

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_5

    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "0"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 454
    .local v38, "tzHString":Ljava/lang/String;
    :goto_3
    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->abs(I)I

    move-result v45

    const/16 v46, 0xa

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_6

    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "0"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->abs(I)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 456
    .local v40, "tzMString":Ljava/lang/String;
    :goto_4
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "GMT"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 460
    .local v36, "timezone":Ljava/lang/String;
    new-instance v45, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->cmd:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "%name%"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->cmd:Ljava/lang/String;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->jnic:Lsmartplug/JniC;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lsmartplug/JniC;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->cmd:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->cmd:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v3

    .line 464
    .local v3, "bcmd":[B
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 465
    .local v22, "msg":Landroid/os/Message;
    const-string v45, "changeWifi"

    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->currentSSID:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v45

    const-string v46, "0K_SP3"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_7

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    .line 480
    const-string v46, "connectivity"

    invoke-virtual/range {v45 .. v46}, Landroid/support/v7/app/ActionBarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 479
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 481
    .local v5, "connManager":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-eqz v45, :cond_8

    .line 751
    :cond_0
    :goto_6
    return-void

    .line 431
    .end local v3    # "bcmd":[B
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v5    # "connManager":Landroid/net/ConnectivityManager;
    .end local v11    # "dstOffset":I
    .end local v15    # "flag":Ljava/lang/String;
    .end local v22    # "msg":Landroid/os/Message;
    .end local v36    # "timezone":Ljava/lang/String;
    .end local v37    # "tzH":I
    .end local v38    # "tzHString":Ljava/lang/String;
    .end local v39    # "tzM":I
    .end local v40    # "tzMString":Ljava/lang/String;
    .end local v41    # "userInfo":Landroid/content/SharedPreferences;
    .end local v44    # "zoneOffset":I
    :cond_1
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "phone%"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "%"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->cmd:Ljava/lang/String;

    goto/16 :goto_0

    .line 437
    .restart local v41    # "userInfo":Landroid/content/SharedPreferences;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->psd:Ljava/lang/String;

    move-object/from16 v45, v0

    const-string v46, "enable"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_3

    .line 438
    const-string v45, "first"

    const-string v46, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->psd:Ljava/lang/String;

    goto/16 :goto_1

    .line 440
    :cond_3
    const-string v45, "nopassword"

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->psd:Ljava/lang/String;

    goto/16 :goto_1

    .line 451
    .restart local v4    # "cal":Ljava/util/Calendar;
    .restart local v11    # "dstOffset":I
    .restart local v37    # "tzH":I
    .restart local v39    # "tzM":I
    .restart local v44    # "zoneOffset":I
    :cond_4
    const-string v15, "+"

    goto/16 :goto_2

    .line 453
    .restart local v15    # "flag":Ljava/lang/String;
    :cond_5
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_3

    .line 455
    .restart local v38    # "tzHString":Ljava/lang/String;
    :cond_6
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->abs(I)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_4

    .line 469
    .restart local v3    # "bcmd":[B
    .restart local v22    # "msg":Landroid/os/Message;
    .restart local v36    # "timezone":Ljava/lang/String;
    .restart local v40    # "tzMString":Ljava/lang/String;
    :cond_7
    new-instance v42, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    .line 470
    .local v42, "wa":Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    invoke-virtual/range {v42 .. v42}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$15(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V

    .line 472
    const-wide/16 v45, 0x7d0

    :try_start_0
    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V

    .line 473
    sget-object v45, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "do switch.."

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v47, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->currentSSID:Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 474
    :catch_0
    move-exception v14

    .line 475
    .local v14, "e2":Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 484
    .end local v14    # "e2":Ljava/lang/InterruptedException;
    .end local v42    # "wa":Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    .restart local v5    # "connManager":Landroid/net/ConnectivityManager;
    :cond_8
    const-wide/16 v45, 0x3e8

    :try_start_1
    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 487
    const-wide/16 v45, 0x3e8

    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 494
    :cond_9
    :goto_8
    const/16 v34, 0x0

    .line 495
    .local v34, "state":Landroid/net/NetworkInfo$State;
    const/16 v32, 0x0

    .line 496
    .local v32, "rep":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 499
    :cond_a
    :goto_9
    if-eqz v34, :cond_d

    const-string v45, "disconnected"

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_d

    .line 500
    const-string v45, "DISCONNECTED"

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_d

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v30

    .line 532
    .local v30, "netname_o":Ljava/lang/String;
    :goto_a
    if-eqz v30, :cond_10

    const-string v45, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_10

    .line 538
    sget-object v45, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_11

    .line 539
    const-string v45, "0K_SP3"

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_11

    .line 569
    new-instance v23, Landroid/os/Message;

    invoke-direct/range {v23 .. v23}, Landroid/os/Message;-><init>()V

    .line 570
    .local v23, "msg1":Landroid/os/Message;
    const-string v45, "setProgress"

    move-object/from16 v0, v45

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 571
    const/16 v45, 0xf

    move/from16 v0, v45

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v46

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->intToIp(I)Ljava/lang/String;
    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;I)Ljava/lang/String;

    move-result-object v20

    .line 575
    .local v20, "localip":Ljava/lang/String;
    :goto_b
    const-string v45, "0.0.0.0"

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_14

    if-eqz v20, :cond_14

    .line 581
    const/4 v8, 0x0

    .line 582
    .local v8, "connected":Z
    const/4 v7, 0x0

    .line 583
    .local v7, "connect_num":I
    :cond_b
    :goto_c
    if-eqz v8, :cond_15

    .line 615
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 616
    .local v17, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v31

    .line 617
    .local v31, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 618
    const/16 v45, 0x200

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->buf:[B

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->buf:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .line 621
    .local v19, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->jnic:Lsmartplug/JniC;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lsmartplug/JniC;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->buf:[B

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v33

    .line 622
    .local v33, "sbuf":Ljava/lang/String;
    const-string v45, "%"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 623
    .local v9, "data_str":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    aget-object v46, v9, v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$18(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->psd:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$19(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V

    .line 627
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 628
    .local v21, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v45, "currentConfigureMac"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->device_mac:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$20(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v45, "isdirect"

    const-string v46, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    .line 631
    const-string v46, "ikonke.udpbroadcast"

    .line 630
    move-object/from16 v0, v45

    move-object/from16 v1, v21

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/BroadcastUtil;->postMsgToService(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 647
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 651
    :goto_d
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v45

    move/from16 v0, v16

    move/from16 v1, v45

    if-lt v0, v1, :cond_18

    .line 659
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiIndex:I
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$25(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->connectConfiguration(I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    .line 661
    const-string v46, "connectivity"

    invoke-virtual/range {v45 .. v46}, Landroid/support/v7/app/ActionBarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 660
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 662
    .local v6, "connManager1":Landroid/net/ConnectivityManager;
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 666
    const-wide/16 v45, 0x3e8

    :try_start_4
    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 669
    const-wide/16 v45, 0x3e8

    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_8

    .line 674
    :cond_c
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 676
    const/16 v35, 0x0

    .line 677
    .local v35, "state1":Landroid/net/NetworkInfo$State;
    const/16 v32, 0x0

    .line 678
    :goto_11
    if-eqz v35, :cond_1a

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v29

    .line 703
    .local v29, "netname":Ljava/lang/String;
    :goto_12
    if-eqz v29, :cond_1c

    const-string v45, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_1c

    .line 710
    sget-object v45, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_1d

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->preWifiName:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$23(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1d

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v46

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->intToIp(I)Ljava/lang/String;
    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;I)Ljava/lang/String;

    move-result-object v28

    .line 740
    .local v28, "myip":Ljava/lang/String;
    :goto_13
    const-string v45, "0.0.0.0"

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_1f

    if-eqz v28, :cond_1f

    .line 746
    new-instance v24, Landroid/os/Message;

    invoke-direct/range {v24 .. v24}, Landroid/os/Message;-><init>()V

    .line 747
    .local v24, "msg4":Landroid/os/Message;
    const-string v45, "setProgress"

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 748
    const/16 v45, 0x2d

    move/from16 v0, v45

    move-object/from16 v1, v24

    iput v0, v1, Landroid/os/Message;->what:I

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Z)V

    goto/16 :goto_6

    .line 488
    .end local v6    # "connManager1":Landroid/net/ConnectivityManager;
    .end local v7    # "connect_num":I
    .end local v8    # "connected":Z
    .end local v9    # "data_str":[Ljava/lang/String;
    .end local v16    # "i":I
    .end local v17    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "len":I
    .end local v20    # "localip":Ljava/lang/String;
    .end local v21    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "msg1":Landroid/os/Message;
    .end local v24    # "msg4":Landroid/os/Message;
    .end local v28    # "myip":Ljava/lang/String;
    .end local v29    # "netname":Ljava/lang/String;
    .end local v30    # "netname_o":Ljava/lang/String;
    .end local v31    # "outputStream":Ljava/io/OutputStream;
    .end local v32    # "rep":I
    .end local v33    # "sbuf":Ljava/lang/String;
    .end local v34    # "state":Landroid/net/NetworkInfo$State;
    .end local v35    # "state1":Landroid/net/NetworkInfo$State;
    :catch_1
    move-exception v12

    .line 489
    .local v12, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 501
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v32    # "rep":I
    .restart local v34    # "state":Landroid/net/NetworkInfo$State;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "rep is "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 504
    const/16 v45, 0x14

    move/from16 v0, v32

    move/from16 v1, v45

    if-le v0, v1, :cond_e

    .line 505
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 506
    .local v18, "intent":Landroid/content/Intent;
    const-string v45, "isFinishedConfig"

    const-string v46, "false"

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v45, "ikonke.basebroadcast"

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    new-instance v25, Landroid/os/Message;

    invoke-direct/range {v25 .. v25}, Landroid/os/Message;-><init>()V

    .line 511
    .local v25, "msgTimeOut":Landroid/os/Message;
    const-string v45, "deviceTimeOut"

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 516
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v25    # "msgTimeOut":Landroid/os/Message;
    :cond_e
    const-wide/16 v45, 0x3e8

    :try_start_5
    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 517
    add-int/lit8 v32, v32, 0x1

    .line 522
    :goto_14
    const/16 v45, 0x1

    .line 521
    move/from16 v0, v45

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v45

    .line 522
    invoke-virtual/range {v45 .. v45}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v34

    .line 523
    if-eqz v34, :cond_f

    .line 524
    const-string v45, "disconnected"

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_f

    .line 525
    const-string v45, "DISCONNECTED"

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_a

    .line 526
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v46

    const-string v47, "0K_SP3"

    .line 527
    const-string v48, ""

    const/16 v49, 0x1

    const/16 v50, 0x1

    .line 526
    invoke-virtual/range {v46 .. v50}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_9

    .line 518
    :catch_2
    move-exception v12

    .line 519
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14

    .line 533
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v30    # "netname_o":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_a

    .line 543
    :cond_11
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 545
    const-wide/16 v45, 0x3e8

    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V

    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    .line 547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    move/from16 v45, v0

    const/16 v46, 0x20

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_12

    .line 548
    new-instance v25, Landroid/os/Message;

    invoke-direct/range {v25 .. v25}, Landroid/os/Message;-><init>()V

    .line 549
    .restart local v25    # "msgTimeOut":Landroid/os/Message;
    const-string v45, "deviceTimeOut"

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_6

    .line 564
    .end local v25    # "msgTimeOut":Landroid/os/Message;
    :catch_3
    move-exception v12

    .line 565
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 553
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    move/from16 v45, v0

    const/16 v46, 0xf

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_13

    .line 554
    new-instance v27, Landroid/os/Message;

    invoke-direct/range {v27 .. v27}, Landroid/os/Message;-><init>()V

    .line 555
    .local v27, "msgprogress":Landroid/os/Message;
    const-string v45, "setProgress"

    move-object/from16 v0, v45

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 556
    const/16 v45, 0xa

    move/from16 v0, v45

    move-object/from16 v1, v27

    iput v0, v1, Landroid/os/Message;->what:I

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    .end local v27    # "msgprogress":Landroid/os/Message;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    move/from16 v45, v0

    rem-int/lit8 v45, v45, 0x4

    if-nez v45, :cond_9

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v46

    .line 562
    const-string v47, "0K_SP3"

    const-string v48, ""

    const/16 v49, 0x1

    const/16 v50, 0x0

    .line 561
    invoke-virtual/range {v46 .. v50}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_8

    .line 576
    .restart local v20    # "localip":Ljava/lang/String;
    .restart local v23    # "msg1":Landroid/os/Message;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v46

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->intToIp(I)Ljava/lang/String;
    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 585
    .restart local v7    # "connect_num":I
    .restart local v8    # "connected":Z
    :cond_15
    :try_start_8
    new-instance v45, Ljava/net/Socket;

    invoke-direct/range {v45 .. v45}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->socket:Ljava/net/Socket;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v45, v0

    const/16 v46, 0x1388

    invoke-virtual/range {v45 .. v46}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v45

    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp(I)Ljava/lang/String;

    move-result-object v28

    .line 589
    .restart local v28    # "myip":Ljava/lang/String;
    const/4 v10, 0x0

    .line 590
    .local v10, "dev_addr":Ljava/net/InetAddress;
    const-string v45, "192.168.145"

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_17

    .line 592
    const-string v45, "192.168.145.253"

    invoke-static/range {v45 .. v45}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 597
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v45, v0

    new-instance v46, Ljava/net/InetSocketAddress;

    const v47, 0x90e4

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-direct {v0, v10, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v47, 0x1388

    invoke-virtual/range {v45 .. v47}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 598
    const/4 v8, 0x1

    .line 607
    .end local v10    # "dev_addr":Ljava/net/InetAddress;
    .end local v28    # "myip":Ljava/lang/String;
    :cond_16
    :goto_16
    const-wide/16 v45, 0x3e8

    :try_start_9
    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5

    move-result v45

    if-eqz v45, :cond_b

    goto/16 :goto_6

    .line 595
    .restart local v10    # "dev_addr":Ljava/net/InetAddress;
    .restart local v28    # "myip":Ljava/lang/String;
    :cond_17
    :try_start_a
    const-string v45, "192.168.10.253"

    invoke-static/range {v45 .. v45}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    move-result-object v10

    .line 594
    goto :goto_15

    .line 599
    .end local v10    # "dev_addr":Ljava/net/InetAddress;
    .end local v28    # "myip":Ljava/lang/String;
    :catch_4
    move-exception v13

    .line 600
    .local v13, "e1":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 601
    add-int/lit8 v7, v7, 0x1

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "Retry socket"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 603
    const/16 v45, 0x5

    move/from16 v0, v45

    if-ne v7, v0, :cond_16

    .line 604
    const/4 v8, 0x1

    goto :goto_16

    .line 610
    .end local v13    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v12

    .line 611
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_c

    .line 633
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :catch_6
    move-exception v12

    .line 634
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 637
    .restart local v18    # "intent":Landroid/content/Intent;
    const-string v45, "isFinishedConfig"

    const-string v46, "false"

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string v45, "ikonke.basebroadcast"

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 641
    new-instance v26, Landroid/os/Message;

    invoke-direct/range {v26 .. v26}, Landroid/os/Message;-><init>()V

    .line 642
    .local v26, "msgerr":Landroid/os/Message;
    const-string v45, "deviceTimeOut"

    move-object/from16 v0, v45

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 648
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v26    # "msgerr":Landroid/os/Message;
    .restart local v9    # "data_str":[Ljava/lang/String;
    .restart local v17    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "len":I
    .restart local v21    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "outputStream":Ljava/io/OutputStream;
    .restart local v33    # "sbuf":Ljava/lang/String;
    :catch_7
    move-exception v13

    .line 649
    .restart local v13    # "e1":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    .line 652
    .end local v13    # "e1":Ljava/io/IOException;
    .restart local v16    # "i":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$21(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Landroid/net/wifi/WifiConfiguration;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wcg:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$22(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 654
    .local v43, "wcgssid":Ljava/lang/String;
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "\""

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->preWifiName:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$23(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_19

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$24(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;I)V

    goto/16 :goto_f

    .line 651
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_e

    .line 670
    .end local v43    # "wcgssid":Ljava/lang/String;
    .restart local v6    # "connManager1":Landroid/net/ConnectivityManager;
    :catch_8
    move-exception v12

    .line 671
    .local v12, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_10

    .line 679
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v35    # "state1":Landroid/net/NetworkInfo$State;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 681
    const/16 v45, 0x14

    move/from16 v0, v32

    move/from16 v1, v45

    if-le v0, v1, :cond_1b

    .line 682
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 683
    .restart local v18    # "intent":Landroid/content/Intent;
    const-string v45, "isFinishedConfig"

    const-string v46, "false"

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v45, "ikonke.basebroadcast"

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 687
    new-instance v25, Landroid/os/Message;

    invoke-direct/range {v25 .. v25}, Landroid/os/Message;-><init>()V

    .line 688
    .restart local v25    # "msgTimeOut":Landroid/os/Message;
    const-string v45, "deviceTimeOut"

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 693
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v25    # "msgTimeOut":Landroid/os/Message;
    :cond_1b
    const-wide/16 v45, 0x3e8

    :try_start_b
    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_9

    .line 694
    add-int/lit8 v32, v32, 0x1

    .line 699
    :goto_17
    const/16 v45, 0x1

    .line 698
    move/from16 v0, v45

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v45

    .line 699
    invoke-virtual/range {v45 .. v45}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v35

    .line 698
    goto/16 :goto_11

    .line 695
    :catch_9
    move-exception v12

    .line 696
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_17

    .line 704
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v29    # "netname":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_12

    .line 715
    :cond_1d
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 717
    const-wide/16 v45, 0x3e8

    invoke-static/range {v45 .. v46}, Ljava/lang/Thread;->sleep(J)V

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "number is"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    move/from16 v45, v0

    const/16 v46, 0x14

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1e

    .line 721
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 722
    .restart local v18    # "intent":Landroid/content/Intent;
    const-string v45, "isFinishedConfig"

    const-string v46, "false"

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v45, "ikonke.basebroadcast"

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 726
    new-instance v25, Landroid/os/Message;

    invoke-direct/range {v25 .. v25}, Landroid/os/Message;-><init>()V

    .line 727
    .restart local v25    # "msgTimeOut":Landroid/os/Message;
    const-string v45, "deviceTimeOut"

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_6

    .line 733
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v25    # "msgTimeOut":Landroid/os/Message;
    :catch_a
    move-exception v12

    .line 734
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_10

    .line 731
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :cond_1e
    :try_start_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->number:I

    move/from16 v45, v0

    rem-int/lit8 v45, v45, 0x3

    if-nez v45, :cond_c

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiIndex:I
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$25(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->connectConfiguration(I)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_10

    .line 741
    .restart local v28    # "myip":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v46

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->intToIp(I)Ljava/lang/String;
    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_13
.end method
