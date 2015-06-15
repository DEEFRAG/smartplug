.class public Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;
.super Ljava/lang/Thread;
.source "WornActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/WornActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateThread"
.end annotation


# instance fields
.field private buf:[B

.field private cmd:Ljava/lang/String;

.field private configBack:Z

.field private device_mac:Ljava/lang/String;

.field private fileLength:I

.field private number:I

.field offSsid:Ljava/lang/String;

.field output:Ljava/io/PrintStream;

.field psd:Ljava/lang/String;

.field private size:I

.field socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

.field private wcg:Landroid/net/wifi/WifiConfiguration;

.field private wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

.field private wifiIndex:I


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/WornActivity;ILjava/io/InputStream;)V
    .locals 2
    .param p2, "fileLength"    # I
    .param p3, "inputFileStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 244
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 231
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->cmd:Ljava/lang/String;

    .line 232
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->size:I

    .line 233
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->socket:Ljava/net/Socket;

    .line 237
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->offSsid:Ljava/lang/String;

    .line 239
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    .line 245
    iput p2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->fileLength:I

    .line 246
    return-void
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 41

    .prologue
    .line 254
    new-instance v35, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/kankunit/smartplugcronus/view/WornActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    .line 258
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "phone%changefirm%"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->fileLength:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->cmd:Ljava/lang/String;

    .line 261
    new-instance v15, Lsmartplug/JniC;

    invoke-direct {v15}, Lsmartplug/JniC;-><init>()V

    .line 262
    .local v15, "jnic":Lsmartplug/JniC;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->cmd:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->cmd:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v3

    .line 263
    .local v3, "bcmd":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v36, v0

    const-string v37, "0K_SP3"

    const-string v38, ""

    const/16 v39, 0x1

    const/16 v40, 0x0

    invoke-virtual/range {v36 .. v40}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    const-string v36, "connectivity"

    invoke-virtual/range {v35 .. v36}, Lcom/kankunit/smartplugcronus/view/WornActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 265
    .local v5, "connManager":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-wide/16 v35, 0x3e8

    :try_start_0
    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V

    .line 269
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 271
    const-wide/16 v35, 0x3e8

    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 278
    :cond_2
    :goto_2
    const/16 v31, 0x0

    .line 279
    .local v31, "state":Landroid/net/NetworkInfo$State;
    const/16 v29, 0x0

    .line 280
    .local v29, "rep":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 282
    :goto_3
    if-eqz v31, :cond_6

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->updateWifi()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getSSID()Ljava/lang/String;

    move-result-object v27

    .line 302
    .local v27, "netname_o":Ljava/lang/String;
    :goto_4
    if-eqz v27, :cond_8

    const-string v35, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_8

    .line 308
    sget-object v35, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 309
    const-string v35, "0K_SP3"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 341
    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    .line 342
    .local v18, "msg1":Landroid/os/Message;
    const-string v35, "setProgress"

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    const/16 v35, 0x23

    move/from16 v0, v35

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->updateWifi()V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getIPAddress()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->intToIp(I)Ljava/lang/String;

    move-result-object v17

    .line 347
    .local v17, "localip":Ljava/lang/String;
    :goto_5
    const-string v35, "0.0.0.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_c

    if-eqz v17, :cond_c

    .line 356
    const/4 v8, 0x0

    .line 357
    .local v8, "connected":Z
    const/4 v7, 0x0

    .line 358
    .local v7, "connect_num":I
    :cond_3
    :goto_6
    if-eqz v8, :cond_d

    .line 385
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    .line 386
    .local v28, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 389
    const/16 v35, 0x200

    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->buf:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 399
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 401
    .local v14, "inputStream":Ljava/io/InputStream;
    const/16 v35, 0x3ff

    move/from16 v0, v35

    new-array v4, v0, [B

    .line 402
    .local v4, "buffer":[B
    const/16 v33, 0x0

    .line 403
    .local v33, "temp":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->inputFileStream:Ljava/io/FileInputStream;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$1(Lcom/kankunit/smartplugcronus/view/WornActivity;)Ljava/io/FileInputStream;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v33

    const/16 v35, -0x1

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_f

    .line 407
    invoke-virtual/range {v28 .. v28}, Ljava/io/OutputStream;->flush()V

    .line 408
    new-instance v19, Landroid/os/Message;

    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    .line 409
    .local v19, "msg3":Landroid/os/Message;
    const-string v35, "setProgress"

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 410
    const/16 v35, 0x32

    move/from16 v0, v35

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    const/16 v35, 0x200

    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->buf:[B

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->buf:[B

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .line 414
    .local v16, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->buf:[B

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v30

    .line 416
    .local v30, "sbuf":Ljava/lang/String;
    const-string v35, "%"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 417
    .local v9, "data_str":[Ljava/lang/String;
    const/16 v35, 0x1

    aget-object v35, v9, v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->device_mac:Ljava/lang/String;

    .line 418
    new-instance v21, Landroid/os/Message;

    invoke-direct/range {v21 .. v21}, Landroid/os/Message;-><init>()V

    .line 419
    .local v21, "msg9":Landroid/os/Message;
    const-string v35, "setProgress"

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 420
    const/16 v35, 0x46

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->what:I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 427
    .end local v4    # "buffer":[B
    .end local v9    # "data_str":[Ljava/lang/String;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "len":I
    .end local v19    # "msg3":Landroid/os/Message;
    .end local v21    # "msg9":Landroid/os/Message;
    .end local v30    # "sbuf":Ljava/lang/String;
    .end local v33    # "temp":I
    :goto_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 431
    :goto_9
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->size:I

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->openWifi()V

    .line 435
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->startScan()V

    .line 440
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getConfiguration()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-lt v13, v0, :cond_10

    .line 449
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiIndex:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->connectConfiguration(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    const-string v36, "connectivity"

    invoke-virtual/range {v35 .. v36}, Lcom/kankunit/smartplugcronus/view/WornActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 451
    .local v6, "connManager1":Landroid/net/ConnectivityManager;
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    .line 452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 455
    const-wide/16 v35, 0x3e8

    :try_start_4
    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V

    .line 456
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 458
    const-wide/16 v35, 0x3e8

    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_8

    .line 463
    :cond_5
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 465
    const/16 v32, 0x0

    .line 466
    .local v32, "state1":Landroid/net/NetworkInfo$State;
    const/16 v29, 0x0

    .line 467
    :goto_d
    if-eqz v32, :cond_12

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->updateWifi()V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getSSID()Ljava/lang/String;

    move-result-object v26

    .line 487
    .local v26, "netname":Ljava/lang/String;
    :goto_e
    if-eqz v26, :cond_14

    const-string v35, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_14

    .line 493
    sget-object v35, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_15

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->preWifiName:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$2(Lcom/kankunit/smartplugcronus/view/WornActivity;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->updateWifi()V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getIPAddress()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->intToIp(I)Ljava/lang/String;

    move-result-object v25

    .line 519
    .local v25, "myip":Ljava/lang/String;
    :goto_f
    const-string v35, "0.0.0.0"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_17

    if-eqz v25, :cond_17

    .line 527
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 528
    .local v20, "msg4":Landroid/os/Message;
    const-string v35, "up_ok"

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    const/16 v35, 0x2d

    move/from16 v0, v35

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 272
    .end local v6    # "connManager1":Landroid/net/ConnectivityManager;
    .end local v7    # "connect_num":I
    .end local v8    # "connected":Z
    .end local v13    # "i":I
    .end local v17    # "localip":Ljava/lang/String;
    .end local v18    # "msg1":Landroid/os/Message;
    .end local v20    # "msg4":Landroid/os/Message;
    .end local v25    # "myip":Ljava/lang/String;
    .end local v26    # "netname":Ljava/lang/String;
    .end local v27    # "netname_o":Ljava/lang/String;
    .end local v28    # "outputStream":Ljava/io/OutputStream;
    .end local v29    # "rep":I
    .end local v31    # "state":Landroid/net/NetworkInfo$State;
    .end local v32    # "state1":Landroid/net/NetworkInfo$State;
    :catch_0
    move-exception v11

    .line 273
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 283
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .restart local v29    # "rep":I
    .restart local v31    # "state":Landroid/net/NetworkInfo$State;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 285
    const/16 v35, 0x14

    move/from16 v0, v29

    move/from16 v1, v35

    if-le v0, v1, :cond_7

    .line 286
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 287
    .local v22, "msgTimeOut":Landroid/os/Message;
    const-string v35, "up_deviceTimeOut"

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 292
    .end local v22    # "msgTimeOut":Landroid/os/Message;
    :cond_7
    const-wide/16 v35, 0x3e8

    :try_start_5
    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 293
    add-int/lit8 v29, v29, 0x1

    .line 298
    :goto_10
    const/16 v35, 0x1

    .line 297
    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    .line 298
    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 297
    goto/16 :goto_3

    .line 294
    :catch_1
    move-exception v11

    .line 295
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .line 303
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .restart local v27    # "netname_o":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->updateWifi()V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getSSID()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_4

    .line 313
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 315
    const-wide/16 v35, 0x3e8

    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    move/from16 v35, v0

    const/16 v36, 0x20

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 321
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 322
    .restart local v22    # "msgTimeOut":Landroid/os/Message;
    const-string v35, "up_deviceTimeOut"

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 336
    .end local v22    # "msgTimeOut":Landroid/os/Message;
    :catch_2
    move-exception v11

    .line 337
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 326
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    move/from16 v35, v0

    const/16 v36, 0xf

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    .line 327
    new-instance v24, Landroid/os/Message;

    invoke-direct/range {v24 .. v24}, Landroid/os/Message;-><init>()V

    .line 328
    .local v24, "msgprogress":Landroid/os/Message;
    const-string v35, "setProgress"

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    const/16 v35, 0x14

    move/from16 v0, v35

    move-object/from16 v1, v24

    iput v0, v1, Landroid/os/Message;->what:I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    .end local v24    # "msgprogress":Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    move/from16 v35, v0

    rem-int/lit8 v35, v35, 0x4

    if-nez v35, :cond_2

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v36, v0

    .line 334
    const-string v37, "0K_SP3"

    const-string v38, ""

    const/16 v39, 0x1

    const/16 v40, 0x0

    .line 333
    invoke-virtual/range {v36 .. v40}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 348
    .restart local v17    # "localip":Ljava/lang/String;
    .restart local v18    # "msg1":Landroid/os/Message;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->updateWifi()V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getIPAddress()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->intToIp(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_5

    .line 360
    .restart local v7    # "connect_num":I
    .restart local v8    # "connected":Z
    :cond_d
    :try_start_8
    new-instance v35, Ljava/net/Socket;

    invoke-direct/range {v35 .. v35}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->socket:Ljava/net/Socket;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v35, v0

    const/16 v36, 0x61a8

    invoke-virtual/range {v35 .. v36}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 363
    const-string v35, "192.168.145.253"

    invoke-static/range {v35 .. v35}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 364
    .local v10, "dev_addr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v35, v0

    new-instance v36, Ljava/net/InetSocketAddress;

    const v37, 0xc8bb

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-direct {v0, v10, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 365
    const/16 v37, 0x61a8

    .line 364
    invoke-virtual/range {v35 .. v37}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 366
    const/4 v8, 0x1

    .line 374
    .end local v10    # "dev_addr":Ljava/net/InetAddress;
    :cond_e
    :goto_11
    const-wide/16 v35, 0x3e8

    :try_start_9
    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V

    .line 375
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    if-eqz v35, :cond_3

    goto/16 :goto_0

    .line 367
    :catch_3
    move-exception v12

    .line 368
    .local v12, "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 369
    add-int/lit8 v7, v7, 0x1

    .line 370
    const/16 v35, 0x5

    move/from16 v0, v35

    if-ne v7, v0, :cond_e

    .line 371
    const/4 v8, 0x1

    goto :goto_11

    .line 377
    .end local v12    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 378
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 391
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v11

    .line 392
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    new-instance v23, Landroid/os/Message;

    invoke-direct/range {v23 .. v23}, Landroid/os/Message;-><init>()V

    .line 394
    .local v23, "msgerr":Landroid/os/Message;
    const-string v35, "up_deviceTimeOut"

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 404
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v23    # "msgerr":Landroid/os/Message;
    .restart local v4    # "buffer":[B
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v28    # "outputStream":Ljava/io/OutputStream;
    .restart local v33    # "temp":I
    :cond_f
    const/16 v35, 0x0

    :try_start_a
    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->size:I

    move/from16 v35, v0

    add-int v35, v35, v33

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->size:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_7

    .line 422
    .end local v4    # "buffer":[B
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v33    # "temp":I
    :catch_6
    move-exception v11

    .line 423
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 428
    .end local v11    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    .line 429
    .restart local v12    # "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 441
    .end local v12    # "e1":Ljava/io/IOException;
    .restart local v13    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getConfiguration()Ljava/util/List;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wcg:Landroid/net/wifi/WifiConfiguration;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wcg:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 443
    .local v34, "wcgssid":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "\""

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v36, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->preWifiName:Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$2(Lcom/kankunit/smartplugcronus/view/WornActivity;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 444
    move-object/from16 v0, p0

    iput v13, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiIndex:I

    goto/16 :goto_b

    .line 440
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a

    .line 459
    .end local v34    # "wcgssid":Ljava/lang/String;
    .restart local v6    # "connManager1":Landroid/net/ConnectivityManager;
    :catch_8
    move-exception v11

    .line 460
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_c

    .line 468
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .restart local v32    # "state1":Landroid/net/NetworkInfo$State;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 470
    const/16 v35, 0x14

    move/from16 v0, v29

    move/from16 v1, v35

    if-le v0, v1, :cond_13

    .line 471
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 472
    .restart local v22    # "msgTimeOut":Landroid/os/Message;
    const-string v35, "up_deviceTimeOut"

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 477
    .end local v22    # "msgTimeOut":Landroid/os/Message;
    :cond_13
    const-wide/16 v35, 0x3e8

    :try_start_b
    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_9

    .line 478
    add-int/lit8 v29, v29, 0x1

    .line 483
    :goto_12
    const/16 v35, 0x1

    .line 482
    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    .line 483
    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 482
    goto/16 :goto_d

    .line 479
    :catch_9
    move-exception v11

    .line 480
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12

    .line 488
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .restart local v26    # "netname":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->updateWifi()V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getSSID()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_e

    .line 498
    :cond_15
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 500
    const-wide/16 v35, 0x3e8

    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    move/from16 v35, v0

    const/16 v36, 0x14

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_16

    .line 503
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 504
    .restart local v22    # "msgTimeOut":Landroid/os/Message;
    const-string v35, "up_deviceTimeOut"

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-object/from16 v35, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_0

    .line 512
    .end local v22    # "msgTimeOut":Landroid/os/Message;
    :catch_a
    move-exception v11

    .line 513
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_c

    .line 508
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :cond_16
    :try_start_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->number:I

    move/from16 v35, v0

    rem-int/lit8 v35, v35, 0x3

    if-nez v35, :cond_5

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiIndex:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->connectConfiguration(I)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_c

    .line 520
    .restart local v25    # "myip":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->configBack:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->updateWifi()V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->wifiAdmin:Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getIPAddress()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->intToIp(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_f
.end method
