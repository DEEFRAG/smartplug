.class public Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "RemoteControlListActivity.java"


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

.field db:Lnet/tsz/afinal/FinalDb;

.field private flag:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field pop:Landroid/widget/PopupWindow;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field private shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapterList:Ljava/util/List;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;

    .line 59
    const-string v0, "ir_module"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->flag:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->title:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->flag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->loadData()V

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapter:Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private loadData()V
    .locals 10

    .prologue
    .line 234
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapterList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 235
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->flag:Ljava/lang/String;

    invoke-static {p0, v6, v7}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getListByMacAndFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 236
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v7, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 237
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 256
    return-void

    .line 237
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 238
    .local v5, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "id"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0157

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "deviceName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 250
    :goto_1
    const-string v7, "deviceName"

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v7, "text"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v7, "image"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPhoto()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v7, "type"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapterList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 245
    .local v1, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 246
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v2

    .line 247
    goto :goto_1
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 364
    return-void
.end method

.method public emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V
    .locals 9
    .param p1, "model"    # Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 226
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 228
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

    .line 229
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

    .line 230
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v7, ""

    new-instance v8, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v8}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>()V

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 231
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 324
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 325
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 333
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 341
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    const v5, 0x7f0300c2

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "mac"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "flag"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->flag:Ljava/lang/String;

    .line 82
    const v5, 0x7f0700d4

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 83
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300cb

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 84
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f07013b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 85
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c023d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 87
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 88
    const v5, 0x7f07013c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 89
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0201

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 91
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v10, v10, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020393

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    .local v1, "drawable2":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v1, v10, v10, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 99
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v4, v11, v11, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    .line 100
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 102
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 104
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->flag:Ljava/lang/String;

    const-string v6, "ir_module"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;

    const-string v6, "ir_module"

    invoke-static {p0, v5, v6}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    .line 143
    .local v3, "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0165

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->title:Ljava/lang/String;

    .line 144
    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->title:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    :goto_0
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 156
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->loadData()V

    .line 157
    const v5, 0x7f0700bc

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 158
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v5, Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapterList:Ljava/util/List;

    invoke-direct {v5, p0, v6}, Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapter:Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    .line 159
    new-instance v5, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    new-instance v5, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 221
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapter:Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    return-void

    .line 149
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;

    const-string v6, "rf_module"

    invoke-static {p0, v5, v6}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    .line 150
    .restart local v3    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->title:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 282
    const-string v2, "..."

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 283
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 284
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 285
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->finish()V

    .line 319
    :goto_0
    return v6

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 313
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 315
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 316
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 317
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 277
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 278
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 261
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->flag:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 262
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "HM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 271
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->loadData()V

    .line 272
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapter:Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;->notifyDataSetChanged()V

    .line 273
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 274
    return-void
.end method
