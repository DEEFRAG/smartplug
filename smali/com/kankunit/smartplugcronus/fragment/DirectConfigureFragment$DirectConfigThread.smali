.class Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;
.super Ljava/lang/Thread;
.source "DirectConfigureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectConfigThread"
.end annotation


# instance fields
.field private buf:[B

.field private cmd:Ljava/lang/String;

.field private number:I

.field offSsid:Ljava/lang/String;

.field psd:Ljava/lang/String;

.field socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 216
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->cmd:Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    .line 218
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->socket:Ljava/net/Socket;

    .line 220
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->offSsid:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;-><init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 47

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->findMac:Z

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    .line 227
    const-string v42, "encrypt_info"

    const/16 v43, 0x0

    .line 226
    invoke-virtual/range {v41 .. v43}, Landroid/support/v7/app/ActionBarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v39

    .line 228
    .local v39, "userInfo":Landroid/content/SharedPreferences;
    const-string v41, "encrypt_en"

    const-string v42, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->psd:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->psd:Ljava/lang/String;

    move-object/from16 v41, v0

    const-string v42, ""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 230
    const-string v41, "nopassword"

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->psd:Ljava/lang/String;

    .line 236
    :goto_0
    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "phone%changename%"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->psd:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->cmd:Ljava/lang/String;

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 239
    .local v4, "cal":Ljava/util/Calendar;
    const/16 v41, 0xf

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v40

    .line 240
    .local v40, "zoneOffset":I
    const/16 v41, 0x10

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 242
    .local v11, "dstOffset":I
    add-int v41, v40, v11

    const v42, 0x36ee80

    div-int v35, v41, v42

    .line 243
    .local v35, "tzH":I
    add-int v41, v40, v11

    move/from16 v0, v41

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v41, v0

    move/from16 v0, v41

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v41, v0

    div-int/lit8 v37, v41, 0x3c

    .line 245
    .local v37, "tzM":I
    if-gez v35, :cond_3

    const-string v14, "-"

    .line 246
    .local v14, "flag":Ljava/lang/String;
    :goto_1
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v41

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_4

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "0"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 247
    .local v36, "tzHString":Ljava/lang/String;
    :goto_2
    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v41

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_5

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "0"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 248
    .local v38, "tzMString":Ljava/lang/String;
    :goto_3
    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "GMT"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 251
    .local v34, "timezone":Ljava/lang/String;
    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->cmd:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "%name%"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->cmd:Ljava/lang/String;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->jnic:Lsmartplug/JniC;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lsmartplug/JniC;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->cmd:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->cmd:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    invoke-virtual/range {v41 .. v43}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v3

    .line 255
    .local v3, "bcmd":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v42, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v42 .. v42}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v42

    const-string v43, "0K_SP3"

    const-string v44, ""

    const/16 v45, 0x1

    const/16 v46, 0x0

    invoke-virtual/range {v42 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    const-string v42, "connectivity"

    invoke-virtual/range {v41 .. v42}, Landroid/support/v7/app/ActionBarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 257
    .local v5, "connManager":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 520
    :cond_0
    :goto_4
    return-void

    .line 231
    .end local v3    # "bcmd":[B
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v5    # "connManager":Landroid/net/ConnectivityManager;
    .end local v11    # "dstOffset":I
    .end local v14    # "flag":Ljava/lang/String;
    .end local v34    # "timezone":Ljava/lang/String;
    .end local v35    # "tzH":I
    .end local v36    # "tzHString":Ljava/lang/String;
    .end local v37    # "tzM":I
    .end local v38    # "tzMString":Ljava/lang/String;
    .end local v40    # "zoneOffset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->psd:Ljava/lang/String;

    move-object/from16 v41, v0

    const-string v42, "enable"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 232
    const-string v41, "first"

    const-string v42, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->psd:Ljava/lang/String;

    goto/16 :goto_0

    .line 234
    :cond_2
    const-string v41, "nopassword"

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->psd:Ljava/lang/String;

    goto/16 :goto_0

    .line 245
    .restart local v4    # "cal":Ljava/util/Calendar;
    .restart local v11    # "dstOffset":I
    .restart local v35    # "tzH":I
    .restart local v37    # "tzM":I
    .restart local v40    # "zoneOffset":I
    :cond_3
    const-string v14, "+"

    goto/16 :goto_1

    .line 246
    .restart local v14    # "flag":Ljava/lang/String;
    :cond_4
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_2

    .line 247
    .restart local v36    # "tzHString":Ljava/lang/String;
    :cond_5
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_3

    .line 260
    .restart local v3    # "bcmd":[B
    .restart local v5    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v34    # "timezone":Ljava/lang/String;
    .restart local v38    # "tzMString":Ljava/lang/String;
    :cond_6
    const-wide/16 v41, 0x3e8

    :try_start_0
    invoke-static/range {v41 .. v42}, Ljava/lang/Thread;->sleep(J)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 263
    const-wide/16 v41, 0x3e8

    invoke-static/range {v41 .. v42}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 271
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v41

    .line 272
    invoke-virtual/range {v41 .. v41}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 273
    .local v31, "state":Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v27

    .line 275
    .local v27, "netname_o":Ljava/lang/String;
    sget-object v41, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 276
    const-string v41, "0K_SP3"

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 311
    new-instance v19, Landroid/os/Message;

    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    .line 312
    .local v19, "msg1":Landroid/os/Message;
    const-string v41, "setProgress"

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    const/16 v41, 0xf

    move/from16 v0, v41

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    const/4 v8, 0x0

    .line 317
    .local v8, "connected":Z
    const/4 v7, 0x0

    .line 318
    .local v7, "connect_num":I
    :cond_8
    :goto_6
    if-eqz v8, :cond_f

    .line 359
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 360
    .local v15, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    .line 361
    .local v28, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 362
    const/16 v41, 0x200

    move/from16 v0, v41

    new-array v0, v0, [B

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->buf:[B

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->buf:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 365
    .local v17, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->jnic:Lsmartplug/JniC;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lsmartplug/JniC;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->buf:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v30

    .line 366
    .local v30, "sbuf":Ljava/lang/String;
    const-string v41, "%"

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, "data_str":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget-object v42, v9, v42

    invoke-static/range {v41 .. v42}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->device_mac:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Ljava/lang/String;

    move-result-object v41

    const-string v42, ":"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 369
    .local v33, "temp":[Ljava/lang/String;
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_9

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->device_mac:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "-"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 372
    :cond_9
    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "0K_SP3_"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v42, 0x3

    aget-object v42, v33, v42

    sget-object v43, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v42, 0x4

    aget-object v42, v33, v42

    sget-object v43, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 373
    const/16 v42, 0x5

    aget-object v42, v33, v42

    sget-object v43, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 372
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->offSsid:Ljava/lang/String;

    .line 376
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v18, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v41, "currentConfigureMac"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v42, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->device_mac:Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v41, "isdirect"

    const-string v42, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "Direct current transmission is configured mac"

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v43, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->device_mac:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    const-string v42, "Direct current transmission configuration is 1"

    invoke-static/range {v41 .. v42}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    const-string v42, "ikonke.udpbroadcast"

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/BroadcastUtil;->postMsgToService(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 398
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 402
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v42, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v42 .. v42}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->offSsid:Ljava/lang/String;

    move-object/from16 v43, v0

    const-string v44, ""

    const/16 v45, 0x1

    const/16 v46, 0x1

    invoke-virtual/range {v42 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    const-string v42, "connectivity"

    invoke-virtual/range {v41 .. v42}, Landroid/support/v7/app/ActionBarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 404
    .local v6, "connManager1":Landroid/net/ConnectivityManager;
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 408
    const-wide/16 v41, 0x3e8

    :try_start_3
    invoke-static/range {v41 .. v42}, Ljava/lang/Thread;->sleep(J)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 411
    const-wide/16 v41, 0x3e8

    invoke-static/range {v41 .. v42}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6

    .line 416
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 418
    const/16 v32, 0x0

    .line 419
    .local v32, "state1":Landroid/net/NetworkInfo$State;
    const/16 v29, 0x0

    .line 420
    .local v29, "rep":I
    :cond_b
    :goto_9
    if-eqz v32, :cond_12

    const-string v41, "disconnected"

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_12

    const-string v41, "DISCONNECTED"

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_12

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v26

    .line 449
    .local v26, "netname":Ljava/lang/String;
    const/16 v29, 0x0

    .line 450
    :goto_a
    if-eqz v26, :cond_15

    const-string v41, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_15

    .line 474
    sget-object v41, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->offSsid:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_17

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v41

    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp(I)Ljava/lang/String;

    move-result-object v25

    .line 509
    .local v25, "myip":Ljava/lang/String;
    :goto_b
    if-eqz v25, :cond_1a

    const-string v41, "0.0.0.0"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_1a

    .line 515
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 516
    .local v20, "msg4":Landroid/os/Message;
    const-string v41, "setProgress"

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 517
    const/16 v41, 0x46

    move/from16 v0, v41

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->findMac:Z

    goto/16 :goto_4

    .line 264
    .end local v6    # "connManager1":Landroid/net/ConnectivityManager;
    .end local v7    # "connect_num":I
    .end local v8    # "connected":Z
    .end local v9    # "data_str":[Ljava/lang/String;
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "len":I
    .end local v18    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "msg1":Landroid/os/Message;
    .end local v20    # "msg4":Landroid/os/Message;
    .end local v25    # "myip":Ljava/lang/String;
    .end local v26    # "netname":Ljava/lang/String;
    .end local v27    # "netname_o":Ljava/lang/String;
    .end local v28    # "outputStream":Ljava/io/OutputStream;
    .end local v29    # "rep":I
    .end local v30    # "sbuf":Ljava/lang/String;
    .end local v31    # "state":Landroid/net/NetworkInfo$State;
    .end local v32    # "state1":Landroid/net/NetworkInfo$State;
    .end local v33    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 265
    .local v12, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 280
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v27    # "netname_o":Ljava/lang/String;
    .restart local v31    # "state":Landroid/net/NetworkInfo$State;
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 282
    const-wide/16 v41, 0x3e8

    invoke-static/range {v41 .. v42}, Ljava/lang/Thread;->sleep(J)V

    .line 283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    .line 284
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    move/from16 v41, v0

    const/16 v42, 0x20

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_d

    .line 286
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v16, "intent":Landroid/content/Intent;
    const-string v41, "isFinishedConfig"

    const-string v42, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v41, "ikonke.basebroadcast"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 292
    .local v22, "msgTimeOut":Landroid/os/Message;
    const-string v41, "dir_deviceTimeOut"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 306
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v22    # "msgTimeOut":Landroid/os/Message;
    :catch_1
    move-exception v12

    .line 307
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 296
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    move/from16 v41, v0

    const/16 v42, 0xf

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_e

    .line 297
    new-instance v24, Landroid/os/Message;

    invoke-direct/range {v24 .. v24}, Landroid/os/Message;-><init>()V

    .line 298
    .local v24, "msgprogress":Landroid/os/Message;
    const-string v41, "setProgress"

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 299
    const/16 v41, 0xa

    move/from16 v0, v41

    move-object/from16 v1, v24

    iput v0, v1, Landroid/os/Message;->what:I

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    .end local v24    # "msgprogress":Landroid/os/Message;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    move/from16 v41, v0

    rem-int/lit8 v41, v41, 0xa

    if-nez v41, :cond_7

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v42, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v42 .. v42}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v42

    .line 304
    const-string v43, "0K_SP3"

    const-string v44, ""

    const/16 v45, 0x1

    const/16 v46, 0x1

    .line 303
    invoke-virtual/range {v42 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5

    .line 320
    .restart local v7    # "connect_num":I
    .restart local v8    # "connected":Z
    .restart local v19    # "msg1":Landroid/os/Message;
    :cond_f
    :try_start_6
    new-instance v41, Ljava/net/Socket;

    invoke-direct/range {v41 .. v41}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->socket:Ljava/net/Socket;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v41, v0

    const/16 v42, 0x1388

    invoke-virtual/range {v41 .. v42}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v41

    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp(I)Ljava/lang/String;

    move-result-object v25

    .line 324
    .restart local v25    # "myip":Ljava/lang/String;
    const/4 v10, 0x0

    .line 325
    .local v10, "dev_addr":Ljava/net/InetAddress;
    const-string v41, "192.168.145"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 326
    const-string v41, "192.168.145.253"

    invoke-static/range {v41 .. v41}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 328
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 329
    .restart local v20    # "msg4":Landroid/os/Message;
    const/16 v41, 0xa

    move/from16 v0, v41

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->socket:Ljava/net/Socket;

    move-object/from16 v41, v0

    new-instance v42, Ljava/net/InetSocketAddress;

    const v43, 0xc8bb

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-direct {v0, v10, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 340
    const/16 v43, 0x1388

    .line 339
    invoke-virtual/range {v41 .. v43}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 341
    const/4 v8, 0x1

    .line 349
    .end local v10    # "dev_addr":Ljava/net/InetAddress;
    .end local v20    # "msg4":Landroid/os/Message;
    .end local v25    # "myip":Ljava/lang/String;
    :cond_10
    :goto_d
    const-wide/16 v41, 0x3e8

    :try_start_7
    invoke-static/range {v41 .. v42}, Ljava/lang/Thread;->sleep(J)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v41

    if-eqz v41, :cond_8

    goto/16 :goto_4

    .line 332
    .restart local v10    # "dev_addr":Ljava/net/InetAddress;
    .restart local v25    # "myip":Ljava/lang/String;
    :cond_11
    :try_start_8
    const-string v41, "192.168.10.253"

    invoke-static/range {v41 .. v41}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 334
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 335
    .restart local v20    # "msg4":Landroid/os/Message;
    const/16 v41, 0xb

    move/from16 v0, v41

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_c

    .line 342
    .end local v10    # "dev_addr":Ljava/net/InetAddress;
    .end local v20    # "msg4":Landroid/os/Message;
    .end local v25    # "myip":Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 343
    .local v13, "e1":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    add-int/lit8 v7, v7, 0x1

    .line 345
    const/16 v41, 0x5

    move/from16 v0, v41

    if-ne v7, v0, :cond_10

    .line 346
    const/4 v8, 0x1

    goto :goto_d

    .line 352
    .end local v13    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v12

    .line 353
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 383
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v12

    .line 384
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 387
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v41, "isFinishedConfig"

    const-string v42, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string v41, "ikonke.basebroadcast"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    new-instance v23, Landroid/os/Message;

    invoke-direct/range {v23 .. v23}, Landroid/os/Message;-><init>()V

    .line 392
    .local v23, "msgerr":Landroid/os/Message;
    const-string v41, "dir_deviceTimeOut"

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 399
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v23    # "msgerr":Landroid/os/Message;
    .restart local v9    # "data_str":[Ljava/lang/String;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "len":I
    .restart local v18    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v28    # "outputStream":Ljava/io/OutputStream;
    .restart local v30    # "sbuf":Ljava/lang/String;
    .restart local v33    # "temp":[Ljava/lang/String;
    :catch_5
    move-exception v13

    .line 400
    .restart local v13    # "e1":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 412
    .end local v13    # "e1":Ljava/io/IOException;
    .restart local v6    # "connManager1":Landroid/net/ConnectivityManager;
    :catch_6
    move-exception v12

    .line 413
    .local v12, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 421
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v29    # "rep":I
    .restart local v32    # "state1":Landroid/net/NetworkInfo$State;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 423
    const/16 v41, 0x14

    move/from16 v0, v29

    move/from16 v1, v41

    if-le v0, v1, :cond_13

    .line 425
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 426
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v41, "isFinishedConfig"

    const-string v42, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v41, "ikonke.basebroadcast"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 430
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 431
    .restart local v22    # "msgTimeOut":Landroid/os/Message;
    const-string v41, "dir_deviceTimeOut"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 436
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v22    # "msgTimeOut":Landroid/os/Message;
    :cond_13
    const-wide/16 v41, 0x3e8

    :try_start_9
    invoke-static/range {v41 .. v42}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7

    .line 437
    add-int/lit8 v29, v29, 0x1

    .line 442
    :goto_e
    const/16 v41, 0x1

    .line 441
    move/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v41

    .line 442
    invoke-virtual/range {v41 .. v41}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 443
    if-eqz v32, :cond_14

    const-string v41, "disconnected"

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_14

    const-string v41, "DISCONNECTED"

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 444
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v42, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v42 .. v42}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->offSsid:Ljava/lang/String;

    move-object/from16 v43, v0

    const-string v44, ""

    const/16 v45, 0x1

    const/16 v46, 0x0

    invoke-virtual/range {v42 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_9

    .line 438
    :catch_7
    move-exception v12

    .line 439
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e

    .line 451
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v26    # "netname":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v26

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 455
    const/16 v41, 0x14

    move/from16 v0, v29

    move/from16 v1, v41

    if-le v0, v1, :cond_16

    .line 457
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 458
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v41, "isFinishedConfig"

    const-string v42, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v41, "ikonke.basebroadcast"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 463
    .restart local v22    # "msgTimeOut":Landroid/os/Message;
    const-string v41, "dir_deviceTimeOut"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 468
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v22    # "msgTimeOut":Landroid/os/Message;
    :cond_16
    const-wide/16 v41, 0x3e8

    :try_start_a
    invoke-static/range {v41 .. v42}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8

    .line 469
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_a

    .line 470
    :catch_8
    move-exception v12

    .line 471
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 479
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :cond_17
    const-wide/16 v41, 0x3e8

    :try_start_b
    invoke-static/range {v41 .. v42}, Ljava/lang/Thread;->sleep(J)V

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    .line 481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    move/from16 v41, v0

    const/16 v42, 0x1e

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_18

    .line 482
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 483
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v41, "isFinishedConfig"

    const-string v42, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v41, "ikonke.basebroadcast"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 487
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 488
    .restart local v22    # "msgTimeOut":Landroid/os/Message;
    const-string v41, "dir_deviceTimeOut"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_4

    .line 502
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v22    # "msgTimeOut":Landroid/os/Message;
    :catch_9
    move-exception v12

    .line 503
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 492
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :cond_18
    :try_start_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    move/from16 v41, v0

    const/16 v42, 0x14

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_19

    .line 493
    new-instance v21, Landroid/os/Message;

    invoke-direct/range {v21 .. v21}, Landroid/os/Message;-><init>()V

    .line 494
    .local v21, "msg5":Landroid/os/Message;
    const-string v41, "setProgress"

    move-object/from16 v0, v41

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 495
    const/16 v41, 0x32

    move/from16 v0, v41

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->what:I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 499
    .end local v21    # "msg5":Landroid/os/Message;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->number:I

    move/from16 v41, v0

    rem-int/lit8 v41, v41, 0x3

    if-nez v41, :cond_a

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v42, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v42 .. v42}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v42

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->offSsid:Ljava/lang/String;

    move-object/from16 v43, v0

    const-string v44, ""

    const/16 v45, 0x1

    const/16 v46, 0x1

    .line 500
    invoke-virtual/range {v42 .. v46}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_8

    .line 510
    .restart local v25    # "myip":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    move-object/from16 v41, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v41

    invoke-static/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_b
.end method
