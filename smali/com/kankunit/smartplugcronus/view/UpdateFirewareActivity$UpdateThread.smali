.class public Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;
.super Ljava/lang/Thread;
.source "UpdateFirewareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateThread"
.end annotation


# instance fields
.field private buf:[B

.field private cmd:Ljava/lang/String;

.field private number:I

.field offSsid:Ljava/lang/String;

.field output:Ljava/io/PrintStream;

.field psd:Ljava/lang/String;

.field private size:I

.field socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 96
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->cmd:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->number:I

    iput v1, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->size:I

    .line 99
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->socket:Ljava/net/Socket;

    .line 102
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->offSsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 37

    .prologue
    .line 106
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "phone%changefirm%"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->fileLength:I
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$0(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->cmd:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->startScan()V

    .line 109
    new-instance v14, Lsmartplug/JniC;

    invoke-direct {v14}, Lsmartplug/JniC;-><init>()V

    .line 110
    .local v14, "jnic":Lsmartplug/JniC;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->cmd:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->cmd:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v3

    .line 111
    .local v3, "bcmd":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v32

    const-string v33, "0K_SP3"

    const-string v34, ""

    const/16 v35, 0x1

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    const-string v32, "connectivity"

    invoke-virtual/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 114
    .local v5, "connManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    const/16 v26, 0x0

    .line 115
    .local v26, "state":Landroid/net/NetworkInfo$State;
    const/16 v24, 0x0

    .line 116
    .local v24, "rep":I
    :goto_1
    if-nez v26, :cond_1

    const/16 v31, 0x3

    move/from16 v0, v24

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v22

    .line 128
    .local v22, "netname_o":Ljava/lang/String;
    :goto_2
    if-eqz v22, :cond_4

    const-string v31, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 132
    sget-object v31, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 133
    const-string v31, "0K_SP3"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v32

    # invokes: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->intToIp(I)Ljava/lang/String;
    invoke-static/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;I)Ljava/lang/String;

    move-result-object v16

    .line 150
    .local v16, "localip":Ljava/lang/String;
    :goto_3
    const-string v31, "0.0.0.0"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_6

    if-eqz v16, :cond_6

    .line 157
    const/4 v8, 0x0

    .line 158
    .local v8, "connected":Z
    const/4 v7, 0x0

    .line 159
    .local v7, "connect_num":I
    :goto_4
    if-eqz v8, :cond_7

    .line 184
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    .line 185
    .local v23, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 188
    const/16 v31, 0x200

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->buf:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 198
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 200
    .local v13, "inputStream":Ljava/io/InputStream;
    const/16 v31, 0x3ff

    move/from16 v0, v31

    new-array v4, v0, [B

    .line 201
    .local v4, "buffer":[B
    const/16 v28, 0x0

    .line 202
    .local v28, "temp":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->inputFileStream:Ljava/io/FileInputStream;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$4(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Ljava/io/FileInputStream;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v28

    const/16 v31, -0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 206
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V

    .line 207
    const/16 v31, 0x200

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->buf:[B

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->buf:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 209
    .local v15, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->buf:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v15}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v25

    .line 211
    .local v25, "sbuf":Ljava/lang/String;
    const-string v31, "%"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 217
    .end local v4    # "buffer":[B
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "len":I
    .end local v25    # "sbuf":Ljava/lang/String;
    .end local v28    # "temp":I
    :goto_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 221
    :goto_7
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->size:I

    .line 222
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-lt v12, v0, :cond_a

    .line 231
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiIndex:I
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$7(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->connectConfiguration(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    const-string v32, "connectivity"

    invoke-virtual/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 233
    .local v6, "connManager1":Landroid/net/ConnectivityManager;
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->number:I

    .line 235
    const-wide/16 v31, 0x3e8

    :try_start_3
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7

    .line 240
    :cond_2
    :goto_a
    const/16 v27, 0x0

    .line 241
    .local v27, "state1":Landroid/net/NetworkInfo$State;
    const/16 v24, 0x0

    .line 242
    :goto_b
    if-eqz v27, :cond_c

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v21

    .line 260
    .local v21, "netname":Ljava/lang/String;
    :goto_c
    if-eqz v21, :cond_e

    const-string v31, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_e

    .line 264
    sget-object v31, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->preWifiName:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$5(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v32

    # invokes: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->intToIp(I)Ljava/lang/String;
    invoke-static/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;I)Ljava/lang/String;

    move-result-object v20

    .line 288
    .local v20, "myip":Ljava/lang/String;
    :goto_d
    const-string v31, "0.0.0.0"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_11

    if-eqz v20, :cond_11

    .line 294
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 295
    .local v17, "msg4":Landroid/os/Message;
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$3(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    .end local v6    # "connManager1":Landroid/net/ConnectivityManager;
    .end local v12    # "i":I
    .end local v17    # "msg4":Landroid/os/Message;
    .end local v20    # "myip":Ljava/lang/String;
    .end local v21    # "netname":Ljava/lang/String;
    .end local v23    # "outputStream":Ljava/io/OutputStream;
    .end local v27    # "state1":Landroid/net/NetworkInfo$State;
    :goto_e
    return-void

    .line 118
    .end local v7    # "connect_num":I
    .end local v8    # "connected":Z
    .end local v16    # "localip":Ljava/lang/String;
    .end local v22    # "netname_o":Ljava/lang/String;
    :cond_3
    const/16 v31, 0x1

    .line 117
    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v31

    .line 118
    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v26

    .line 120
    const-wide/16 v31, 0x3e8

    :try_start_4
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 121
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 122
    :catch_0
    move-exception v10

    .line 123
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 129
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v22    # "netname_o":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    .line 137
    :cond_5
    const-wide/16 v31, 0x3e8

    :try_start_5
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->number:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->number:I

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->number:I

    move/from16 v31, v0

    rem-int/lit8 v31, v31, 0x4

    if-nez v31, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v32

    .line 141
    const-string v33, "0K_SP3"

    const-string v34, ""

    const/16 v35, 0x1

    const/16 v36, 0x0

    .line 140
    invoke-virtual/range {v32 .. v36}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 143
    :catch_1
    move-exception v10

    .line 144
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 153
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v16    # "localip":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v32

    # invokes: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->intToIp(I)Ljava/lang/String;
    invoke-static/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 161
    .restart local v7    # "connect_num":I
    .restart local v8    # "connected":Z
    :cond_7
    :try_start_6
    new-instance v31, Ljava/net/Socket;

    invoke-direct/range {v31 .. v31}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->socket:Ljava/net/Socket;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    const/16 v32, 0x1388

    invoke-virtual/range {v31 .. v32}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 164
    const-string v31, "192.168.145.253"

    invoke-static/range {v31 .. v31}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 165
    .local v9, "dev_addr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    new-instance v32, Ljava/net/InetSocketAddress;

    const v33, 0xc8bb

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v0, v9, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 166
    const/16 v33, 0x1388

    .line 165
    invoke-virtual/range {v31 .. v33}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 167
    const/4 v8, 0x1

    .line 175
    .end local v9    # "dev_addr":Ljava/net/InetAddress;
    :cond_8
    :goto_f
    const-wide/16 v31, 0x3e8

    :try_start_7
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    .line 176
    :catch_2
    move-exception v10

    .line 177
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 168
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v11

    .line 169
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    add-int/lit8 v7, v7, 0x1

    .line 171
    const/16 v31, 0x5

    move/from16 v0, v31

    if-ne v7, v0, :cond_8

    .line 172
    const/4 v8, 0x1

    goto :goto_f

    .line 190
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 191
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    new-instance v19, Landroid/os/Message;

    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    .line 193
    .local v19, "msgerr":Landroid/os/Message;
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$3(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_e

    .line 203
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v19    # "msgerr":Landroid/os/Message;
    .restart local v4    # "buffer":[B
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v23    # "outputStream":Ljava/io/OutputStream;
    .restart local v28    # "temp":I
    :cond_9
    const/16 v31, 0x0

    :try_start_8
    move-object/from16 v0, v23

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->size:I

    move/from16 v31, v0

    add-int v31, v31, v28

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->size:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_5

    .line 212
    .end local v4    # "buffer":[B
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v28    # "temp":I
    :catch_5
    move-exception v10

    .line 213
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 218
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v11

    .line 219
    .restart local v11    # "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 223
    .end local v11    # "e1":Ljava/io/IOException;
    .restart local v12    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/wifi/WifiConfiguration;

    .line 224
    .local v29, "wcg":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 225
    .local v30, "wcgssid":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "\""

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->preWifiName:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$5(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v0, v12}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$6(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;I)V

    goto/16 :goto_9

    .line 222
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    .line 236
    .end local v29    # "wcg":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "wcgssid":Ljava/lang/String;
    .restart local v6    # "connManager1":Landroid/net/ConnectivityManager;
    :catch_7
    move-exception v10

    .line 237
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 243
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v27    # "state1":Landroid/net/NetworkInfo$State;
    :cond_c
    const/16 v31, 0x14

    move/from16 v0, v24

    move/from16 v1, v31

    if-le v0, v1, :cond_d

    .line 244
    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    .line 245
    .local v18, "msgTimeOut":Landroid/os/Message;
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$3(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_e

    .line 250
    .end local v18    # "msgTimeOut":Landroid/os/Message;
    :cond_d
    const-wide/16 v31, 0x3e8

    :try_start_9
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    .line 251
    add-int/lit8 v24, v24, 0x1

    .line 256
    :goto_10
    const/16 v31, 0x1

    .line 255
    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v31

    .line 256
    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v27

    .line 255
    goto/16 :goto_b

    .line 252
    :catch_8
    move-exception v10

    .line 253
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .line 261
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v21    # "netname":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_c

    .line 269
    :cond_f
    const-wide/16 v31, 0x3e8

    :try_start_a
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->number:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->number:I

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->number:I

    move/from16 v31, v0

    const/16 v32, 0x14

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 272
    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    .line 273
    .restart local v18    # "msgTimeOut":Landroid/os/Message;
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$3(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_e

    .line 281
    .end local v18    # "msgTimeOut":Landroid/os/Message;
    :catch_9
    move-exception v10

    .line 282
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 277
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :cond_10
    :try_start_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->number:I

    move/from16 v31, v0

    rem-int/lit8 v31, v31, 0x3

    if-nez v31, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiIndex:I
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$7(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->connectConfiguration(I)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_a

    .line 291
    .restart local v20    # "myip":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->updateWifi()V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v32

    # invokes: Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->intToIp(I)Ljava/lang/String;
    invoke-static/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_d
.end method
