.class public Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "SelectPlugActivity.java"


# instance fields
.field airControl:Landroid/view/View;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private list:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->list:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 162
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c017e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v3, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 171
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 179
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v11

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 65
    const v11, 0x7f0300d1

    invoke-virtual {p0, v11}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 69
    const v11, 0x7f070362

    invoke-virtual {p0, v11}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    .line 70
    .local v4, "gridView":Landroid/widget/GridView;
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v11}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 72
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->list:Ljava/util/List;

    .line 73
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 74
    .local v10, "shortCutList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v12, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-virtual {v11, v12}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 75
    .local v8, "pluginModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 106
    new-instance v0, Lcom/kankunit/smartplugcronus/adapter/SelectPlugGridAdapter;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->list:Ljava/util/List;

    invoke-direct {v0, p0, v11}, Lcom/kankunit/smartplugcronus/adapter/SelectPlugGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 107
    .local v0, "adapter":Lcom/kankunit/smartplugcronus/adapter/SelectPlugGridAdapter;
    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    new-instance v11, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$1;

    invoke-direct {v11, p0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;)V

    invoke-virtual {v4, v11}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    return-void

    .line 75
    .end local v0    # "adapter":Lcom/kankunit/smartplugcronus/adapter/SelectPlugGridAdapter;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    .line 76
    .local v7, "pluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    const/4 v1, 0x0

    .line 77
    .local v1, "b":Z
    if-eqz v10, :cond_3

    .line 78
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 85
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->getMac()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "mac":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->getPluginName()Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "pluginName":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    .line 91
    .local v3, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v3, :cond_0

    const-string v12, "rt_module"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "tp_module"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 94
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "text"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v12, "mac"

    invoke-virtual {v6, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v12, "pluginName"

    invoke-virtual {v6, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v12, "ir_module"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 99
    const-string v12, "image"

    const v13, 0x7f0201ca

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_2
    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->list:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v3    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v5    # "mac":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "pluginName":Ljava/lang/String;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 79
    .local v2, "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->getMac()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 80
    const/4 v1, 0x1

    .line 81
    goto :goto_1

    .line 101
    .end local v2    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v3    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v5    # "mac":Ljava/lang/String;
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "pluginName":Ljava/lang/String;
    :cond_5
    const-string v12, "image"

    const v13, 0x7f0201cb

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->finish()V

    .line 151
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 54
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 49
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 50
    return-void
.end method
