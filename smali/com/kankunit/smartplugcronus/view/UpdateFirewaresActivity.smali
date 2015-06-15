.class public Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "UpdateFirewaresActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private firewarelist:Landroid/widget/ListView;

.field private hanlder:Landroid/os/Handler;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private miniBlackSm:Ljava/lang/String;

.field private miniSm:Ljava/lang/String;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private sm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->sm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->miniSm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->miniBlackSm:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    const/16 v18, 0x0

    :goto_1
    return v18

    .line 172
    :pswitch_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "backMsg":Ljava/lang/String;
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 177
    :cond_1
    const-string v18, "Version information is not detected"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 178
    const/16 v18, 0x0

    goto :goto_1

    .line 180
    :cond_2
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v3, v18, v19

    .line 181
    .local v3, "allDetails":Ljava/lang/String;
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v13, v18, v19

    .line 182
    .local v13, "newEest":Ljava/lang/String;
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->sm:Ljava/lang/String;

    .line 183
    const-string v15, ""

    .line 184
    .local v15, "newMiniEst":Ljava/lang/String;
    const-string v14, ""

    .line 185
    .local v14, "newMiniBlackEst":Ljava/lang/String;
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 186
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x4

    aget-object v15, v18, v19

    .line 187
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x5

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->miniSm:Ljava/lang/String;

    .line 189
    :cond_3
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 190
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x6

    aget-object v14, v18, v19

    .line 191
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x7

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->miniBlackSm:Ljava/lang/String;

    .line 193
    :cond_4
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "details":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .line 196
    .local v10, "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_5

    .line 227
    new-instance v17, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 228
    .local v17, "sd":Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->firewarelist:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 197
    .end local v17    # "sd":Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;
    :cond_5
    const-string v16, ""

    .line 198
    .local v16, "newVersion":Ljava/lang/String;
    aget-object v5, v6, v9

    .line 199
    .local v5, "detail":Ljava/lang/String;
    const-string v18, "&"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 196
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 202
    :cond_6
    const-string v18, "&"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v12, v18, v19

    .line 203
    .local v12, "mac":Ljava/lang/String;
    const-string v18, "&"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v8, v18, v19

    .line 204
    .local v8, "dm_ssoftver":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    .line 205
    .local v7, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v10, Ljava/util/HashMap;

    .end local v10    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 206
    .restart local v10    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 207
    move-object/from16 v16, v13

    .line 208
    const-string v18, "fireware_type"

    const-string v19, "k2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_7
    :goto_4
    const-string v18, "fireware_mac"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v18, "firewaretitle"

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v18, "firewareold"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v18, "firewarenew"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/kankunit/smartplugcronus/util/DataUtil;->hasNewVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 221
    const-string v18, "isNewest"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :goto_5
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 209
    :cond_8
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 210
    move-object/from16 v16, v15

    .line 211
    const-string v18, "fireware_type"

    const-string v19, "mini_w"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 212
    :cond_9
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 213
    move-object/from16 v16, v14

    .line 214
    const-string v18, "fireware_type"

    const-string v19, "mini_b"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 223
    :cond_a
    const-string v18, "isNewest"

    const-string v19, "The latest version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public initHongMiHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    .line 161
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v7, 0x7f0300f0

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->setContentView(I)V

    .line 56
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->hanlder:Landroid/os/Handler;

    .line 57
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0249

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "loading..."

    const/16 v9, 0x2710

    new-instance v10, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$1;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;)V

    invoke-static {p0, v7, v8, v9, v10}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 63
    const-string v6, ""

    .line 64
    .local v6, "macs":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getAllDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 66
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 73
    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    :cond_0
    new-instance v7, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    const/4 v8, 0x0

    invoke-direct {v7, p0, p0, v8}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;Z)V

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "wan_phone%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%get_power%power"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "cmd":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getDevicesVersion:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uuuuuuuuuuu===="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-static {v7, v0}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    const v7, 0x7f07039d

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->firewarelist:Landroid/widget/ListView;

    .line 87
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->firewarelist:Landroid/widget/ListView;

    new-instance v8, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$2;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    return-void

    .line 67
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "mac":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 66
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 71
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 82
    .end local v5    # "mac":Ljava/lang/String;
    .restart local v0    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->finish()V

    .line 128
    :cond_0
    return v2
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "backMsg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uuuuuuuuuuuss==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 145
    .local v2, "decoded":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "backMsg":Ljava/lang/String;
    .local v1, "backMsg":Ljava/lang/String;
    move-object v0, v1

    .line 149
    .end local v1    # "backMsg":Ljava/lang/String;
    .restart local v0    # "backMsg":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 150
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    .line 151
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->hanlder:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    return-void

    .line 146
    .end local v4    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
