.class public Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "RemoteControlFragment.java"


# instance fields
.field private adapter:Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

.field adapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field db:Lnet/tsz/afinal/FinalDb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->loadData()V

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapter:Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    return-object v0
.end method

.method private loadData()V
    .locals 10

    .prologue
    .line 250
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 251
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->db:Lnet/tsz/afinal/FinalDb;

    const-class v7, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 252
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->db:Lnet/tsz/afinal/FinalDb;

    const-class v7, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 253
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 271
    return-void

    .line 253
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 254
    .local v5, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "id"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v7, "dname"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0157

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "deviceName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 264
    :goto_1
    const-string v7, "deviceName"

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v7, "mac"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v7, "text"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v7, "image"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPhoto()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v7, "type"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 259
    .local v1, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 260
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v2

    .line 261
    goto :goto_1
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    return-void
.end method

.method public emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V
    .locals 9
    .param p1, "model"    # Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 242
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#delete#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v7, ""

    new-instance v8, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v8}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>()V

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 247
    return-void
.end method

.method public getIcon(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    const v0, 0x7f0201d2

    const/4 v1, 0x1

    .line 166
    if-ne p1, v1, :cond_1

    .line 167
    const v0, 0x7f0201b6

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 170
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 171
    const v0, 0x7f0201b8

    goto :goto_0

    .line 172
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 173
    const v0, 0x7f0201be

    goto :goto_0

    .line 174
    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    move v0, v1

    .line 175
    goto :goto_0

    .line 176
    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 177
    const v0, 0x7f0201cc

    goto :goto_0

    .line 178
    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    .line 179
    const v0, 0x7f0201bf

    goto :goto_0

    .line 180
    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    .line 181
    const v0, 0x7f0201b7

    goto :goto_0

    .line 182
    :cond_7
    const/16 v1, 0x9

    if-ne p1, v1, :cond_8

    .line 183
    const v0, 0x7f0201bb

    goto :goto_0

    .line 184
    :cond_8
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 185
    const v0, 0x7f0201bc

    goto :goto_0
.end method

.method public getRemoteType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 216
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 217
    const-string v0, "airRemoteControl"

    .line 237
    :goto_0
    return-object v0

    .line 218
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 219
    const-string v0, "tvRemoteControl"

    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 221
    const-string v0, "curtainRemoteControl"

    goto :goto_0

    .line 222
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 223
    const-string v0, "universalRemoteControl"

    goto :goto_0

    .line 224
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 225
    const-string v0, "tmallRemoteControl"

    goto :goto_0

    .line 226
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 227
    const-string v0, "radioRemoteControl"

    goto :goto_0

    .line 228
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 229
    const-string v0, "miRemoteControl"

    goto :goto_0

    .line 230
    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 231
    const-string v0, "appleRemoteControl"

    goto :goto_0

    .line 232
    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_8

    .line 233
    const-string v0, "garageRemoteControl"

    goto :goto_0

    .line 234
    :cond_8
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 235
    const-string v0, "ghRemoteControl"

    goto :goto_0

    .line 237
    :cond_9
    const-string v0, "tvRemoteControl"

    goto :goto_0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    const v1, 0x7f0c0181

    .line 191
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 193
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 202
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 204
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 206
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_8

    .line 208
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_8
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 210
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 212
    :cond_9
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 69
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;

    .line 70
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->db:Lnet/tsz/afinal/FinalDb;

    .line 71
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->loadData()V

    .line 72
    const v3, 0x7f0300c1

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, "parent":Landroid/view/View;
    const v3, 0x7f0700bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 74
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "emptyView":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const-string v3, "You don't have to buy or install the appropriate plugin!"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {v1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 81
    new-instance v3, Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapter:Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    .line 82
    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 161
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapter:Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    return-object v2
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 283
    return-void
.end method
