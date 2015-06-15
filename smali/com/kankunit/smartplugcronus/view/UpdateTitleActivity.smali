.class public Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "UpdateTitleActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private db:Lnet/tsz/afinal/FinalDb;

.field private handler:Landroid/os/Handler;

.field private id:I

.field private linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private update_title_close:Landroid/widget/ImageButton;

.field private update_title_edit:Landroid/widget/EditText;

.field private update_title_ok:Landroid/widget/ImageButton;

.field private updatetitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-object v0
.end method

.method private doBack(Ljava/lang/String;)V
    .locals 6
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x457

    .line 412
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 414
    .local v1, "decoded":[B
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "bsgMsg":Ljava/lang/String;
    .local v0, "bsgMsg":Ljava/lang/String;
    move-object p1, v0

    .line 418
    .end local v0    # "bsgMsg":Ljava/lang/String;
    .restart local p1    # "bsgMsg":Ljava/lang/String;
    :goto_0
    const-string v4, "fail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 420
    .local v3, "m":Landroid/os/Message;
    iput v5, v3, Landroid/os/Message;->what:I

    .line 421
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    .end local v3    # "m":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 424
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v4, "linkage_ack"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_2

    .line 426
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 428
    :cond_2
    const-string v4, "linkage_push_ack"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 429
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_3

    .line 430
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 432
    :cond_3
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 433
    .restart local v3    # "m":Landroid/os/Message;
    const/16 v4, 0x84a

    iput v4, v3, Landroid/os/Message;->what:I

    .line 434
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 436
    .end local v3    # "m":Landroid/os/Message;
    :cond_4
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 437
    .restart local v3    # "m":Landroid/os/Message;
    iput v5, v3, Landroid/os/Message;->what:I

    .line 438
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private initTitle(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v2, "remoteControl"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->id:I

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortCutModelByControlId(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v0

    .line 112
    .local v0, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v0, :cond_0

    .line 113
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v0    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v2, "tp_plugs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    const-string v3, "tp_module"

    .line 117
    invoke-static {p0, v2, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v1

    .line 119
    .local v1, "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    const-string v3, "Environmental monitoring"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    .end local v1    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_2
    const-string v2, "rt_plugs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    const-string v3, "rt_module"

    .line 124
    invoke-static {p0, v2, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v1

    .line 126
    .restart local v1    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v1, :cond_0

    .line 127
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    const-string v3, "Human body sensors"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    .end local v1    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_3
    const-string v2, "ir_module"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    const-string v3, "ir_module"

    .line 131
    invoke-static {p0, v2, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v1

    .line 133
    .restart local v1    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v1, :cond_0

    .line 134
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    .end local v1    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_4
    const-string v2, "rf_module"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    const-string v3, "rf_module"

    .line 138
    invoke-static {p0, v2, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v1

    .line 140
    .restart local v1    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 387
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 397
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 408
    :goto_0
    return v1

    .line 399
    :sswitch_0
    const v0, 0x7f0c0238

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 402
    :sswitch_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->finish()V

    goto :goto_0

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x457 -> :sswitch_0
        0x84a -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 149
    .local v17, "title":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/util/DataUtil;->containsEmoji(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 150
    const-string v18, "Names cannot contain expressions"

    .line 151
    const/16 v19, 0x1

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 151
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v18

    const v19, 0x7f07039b

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 155
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 156
    const-string v18, "Please enter less than 6 characters"

    .line 157
    const/16 v19, 0x1

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 157
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 160
    :cond_2
    if-eqz v17, :cond_3

    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 161
    :cond_3
    const-string v18, "Name cannot be empty"

    .line 162
    const/16 v19, 0x1

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 162
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 166
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->finish()V

    goto :goto_0

    .line 172
    :pswitch_1
    const-string v18, "deviceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 173
    if-eqz v17, :cond_5

    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 174
    :cond_5
    const-string v17, "Smart socket"

    .line 177
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    .line 178
    .local v7, "device":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setName(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 182
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v18

    .line 181
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v16

    .line 183
    .local v16, "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->updateSceneDetail(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDevicetitleByDevicemac(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 193
    .local v8, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getRemoteListByDevicemac(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 194
    .local v13, "remotes":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v8, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_8

    .line 360
    .end local v7    # "device":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v8    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .end local v13    # "remotes":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .end local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_7
    :goto_2
    const-string v18, "sceneInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->finish()V

    goto/16 :goto_0

    .line 195
    .restart local v7    # "device":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v8    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .restart local v13    # "remotes":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .restart local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 196
    .local v15, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    goto :goto_1

    .line 200
    .end local v7    # "device":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v8    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .end local v13    # "remotes":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .end local v15    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_9
    const-string v18, "sceneInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-class v20, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual/range {v18 .. v20}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 202
    .local v14, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setSceneName(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 206
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "sceneId=\'"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getNeedPush()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 208
    const-string v18, "y"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getNeedPush()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0249

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 212
    const-string v19, "loading"

    const/16 v20, 0x2ee0

    new-instance v21, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$1;

    invoke-direct/range {v21 .. v22}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)V

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 233
    :cond_a
    const-string v18, "Please select the linkage conditions"

    const/16 v19, 0x1

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 233
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 239
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v10

    .line 240
    .local v10, "linkageNum":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getNeedPush()Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, "needPush":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 243
    .local v12, "phoneMac":Ljava/lang/String;
    const-string v18, ":"

    const-string v19, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 244
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "wan%"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 245
    invoke-virtual {v14}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 246
    const-string v19, "%linkage_needPush"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 244
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "cmd":Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "saveIsLinkageNeedPush:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/Base64Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    new-instance v18, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v19, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)V

    .line 278
    new-instance v20, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)V

    .line 288
    const/16 v21, 0x0

    .line 249
    invoke-direct/range {v18 .. v21}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;Z)V

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 289
    :catch_0
    move-exception v9

    .line 290
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 293
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "linkageNum":Ljava/lang/String;
    .end local v11    # "needPush":Ljava/lang/String;
    .end local v12    # "phoneMac":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->finish()V

    goto/16 :goto_2

    .line 295
    .end local v14    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_d
    const-string v18, "remoteControl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 297
    const-class v20, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 296
    invoke-virtual/range {v18 .. v20}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 298
    .local v6, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setName(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->id:I

    move/from16 v18, v0

    .line 301
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortCutModelByControlId(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v15

    .line 303
    .restart local v15    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v15, :cond_7

    .line 304
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 307
    .end local v6    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v15    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_e
    const-string v18, "tp_plugs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "tp_module"

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v16

    .line 311
    .restart local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v16, :cond_f

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->finish()V

    goto/16 :goto_0

    .line 317
    :cond_f
    invoke-virtual/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    goto/16 :goto_2

    .line 320
    .end local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_10
    const-string v18, "rt_plugs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "rt_module"

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v16

    .line 324
    .restart local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v16, :cond_11

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->finish()V

    goto/16 :goto_0

    .line 330
    :cond_11
    invoke-virtual/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    goto/16 :goto_2

    .line 333
    .end local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_12
    const-string v18, "ir_module"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "ir_module"

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v16

    .line 337
    .restart local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v16, :cond_13

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->finish()V

    goto/16 :goto_0

    .line 343
    :cond_13
    invoke-virtual/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    goto/16 :goto_2

    .line 346
    .end local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_14
    const-string v18, "rf_module"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "rf_module"

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v16

    .line 350
    .restart local v16    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v16, :cond_15

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->finish()V

    goto/16 :goto_0

    .line 356
    :cond_15
    invoke-virtual/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    goto/16 :goto_2

    .line 166
    :pswitch_data_0
    .packed-switch 0x7f07039b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v2, 0x7f0300ef

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->setContentView(I)V

    .line 80
    new-instance v2, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v2, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 81
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->handler:Landroid/os/Handler;

    .line 83
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 84
    const v2, 0x7f070399

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    .line 85
    const v2, 0x7f07039b

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_close:Landroid/widget/ImageButton;

    .line 86
    const v2, 0x7f07039c

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_ok:Landroid/widget/ImageButton;

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->name:Ljava/lang/String;

    .line 91
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->mac:Ljava/lang/String;

    .line 92
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    .line 93
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->id:I

    .line 95
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_close:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_ok:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v2, 0x7f070398

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->updatetitle:Landroid/widget/TextView;

    .line 100
    const-string v2, "updatetitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "ut":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->updatetitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->update_title_edit:Landroid/widget/EditText;

    const-string v3, "Smart socket"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->initTitle(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 376
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->finish()V

    .line 379
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 72
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 67
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->doBack(Ljava/lang/String;)V

    .line 393
    return-void
.end method
