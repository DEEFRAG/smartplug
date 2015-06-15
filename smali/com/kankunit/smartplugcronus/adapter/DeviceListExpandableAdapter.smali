.class public Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceListExpandableAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private itemList:Ljava/util/List;
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

.field private mInflater:Landroid/view/LayoutInflater;

.field private pluginModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/DevicePluginModel;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->itemList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->pluginModels:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->itemList:Ljava/util/List;

    .line 59
    invoke-static {p1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->db:Lnet/tsz/afinal/FinalDb;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method private getPlugTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "plugname"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "rt_module"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-string v0, "rf_module"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "tp_module"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "vd_module"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .param p1, "k"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 101
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->itemList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map;

    const-string v25, "mac"

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 102
    .local v15, "mac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->itemList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    .line 103
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const v25, 0x7f03005d

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 104
    .local v5, "convertView":Landroid/view/View;
    invoke-virtual {v5, v15}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    const v24, 0x7f0701a7

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 106
    .local v14, "lineView":Landroid/widget/ImageView;
    const v24, 0x7f0701a0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 107
    .local v10, "deviceStatusImage":Landroid/widget/ImageView;
    const v24, 0x7f0701a1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 108
    .local v7, "deviceOffImage":Landroid/widget/ImageView;
    const v24, 0x7f0701a2

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 109
    .local v6, "deviceNew":Landroid/widget/ImageView;
    const v24, 0x7f07003d

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 110
    .local v22, "textView":Landroid/widget/TextView;
    const v24, 0x7f0701a3

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 111
    .local v8, "deviceSImage":Landroid/widget/ImageView;
    const v24, 0x7f0701a4

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 112
    .local v9, "deviceSText":Landroid/widget/TextView;
    const v24, 0x7f070199

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 113
    .local v4, "buttonLayout":Landroid/widget/LinearLayout;
    const v24, 0x7f0701a5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 114
    .local v2, "button1":Landroid/widget/Button;
    const v24, 0x7f0701a6

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 116
    .local v3, "button2":Landroid/widget/Button;
    const-string v24, "isNew"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 117
    .local v12, "isNew":Ljava/lang/Object;
    const-string v24, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 118
    .local v21, "status":Ljava/lang/Object;
    const-string v24, "versionK"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 119
    .local v23, "versionK":Ljava/lang/Object;
    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 120
    const v24, 0x7f020088

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 133
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->itemList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map;

    const-string v25, "title"

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v20, "plugsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->pluginModels:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_5

    .line 142
    if-eqz v21, :cond_a

    const-string v24, "online"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 143
    const v24, 0x7f020180

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 144
    const v24, 0x7f0c0160

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f09003b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_6

    .line 147
    const v24, 0x7f02017b

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 148
    const v24, 0x7f02017b

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0168

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0169

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_2
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "true"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 181
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :goto_3
    new-instance v24, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;-><init>(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v24, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$2;-><init>(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    .end local v2    # "button1":Landroid/widget/Button;
    .end local v3    # "button2":Landroid/widget/Button;
    .end local v4    # "buttonLayout":Landroid/widget/LinearLayout;
    .end local v5    # "convertView":Landroid/view/View;
    .end local v6    # "deviceNew":Landroid/widget/ImageView;
    .end local v7    # "deviceOffImage":Landroid/widget/ImageView;
    .end local v8    # "deviceSImage":Landroid/widget/ImageView;
    .end local v9    # "deviceSText":Landroid/widget/TextView;
    .end local v10    # "deviceStatusImage":Landroid/widget/ImageView;
    .end local v12    # "isNew":Ljava/lang/Object;
    .end local v14    # "lineView":Landroid/widget/ImageView;
    .end local v15    # "mac":Ljava/lang/String;
    .end local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "plugsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "status":Ljava/lang/Object;
    .end local v22    # "textView":Landroid/widget/TextView;
    .end local v23    # "versionK":Ljava/lang/Object;
    :goto_4
    return-object v5

    .line 122
    .restart local v2    # "button1":Landroid/widget/Button;
    .restart local v3    # "button2":Landroid/widget/Button;
    .restart local v4    # "buttonLayout":Landroid/widget/LinearLayout;
    .restart local v5    # "convertView":Landroid/view/View;
    .restart local v6    # "deviceNew":Landroid/widget/ImageView;
    .restart local v7    # "deviceOffImage":Landroid/widget/ImageView;
    .restart local v8    # "deviceSImage":Landroid/widget/ImageView;
    .restart local v9    # "deviceSText":Landroid/widget/TextView;
    .restart local v10    # "deviceStatusImage":Landroid/widget/ImageView;
    .restart local v12    # "isNew":Ljava/lang/Object;
    .restart local v14    # "lineView":Landroid/widget/ImageView;
    .restart local v15    # "mac":Ljava/lang/String;
    .restart local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "status":Ljava/lang/Object;
    .restart local v22    # "textView":Landroid/widget/TextView;
    .restart local v23    # "versionK":Ljava/lang/Object;
    :cond_1
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 123
    const v24, 0x7f020087

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    :cond_2
    :goto_5
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    .local v13, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00ac

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 129
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 293
    .end local v2    # "button1":Landroid/widget/Button;
    .end local v3    # "button2":Landroid/widget/Button;
    .end local v4    # "buttonLayout":Landroid/widget/LinearLayout;
    .end local v5    # "convertView":Landroid/view/View;
    .end local v6    # "deviceNew":Landroid/widget/ImageView;
    .end local v7    # "deviceOffImage":Landroid/widget/ImageView;
    .end local v8    # "deviceSImage":Landroid/widget/ImageView;
    .end local v9    # "deviceSText":Landroid/widget/TextView;
    .end local v10    # "deviceStatusImage":Landroid/widget/ImageView;
    .end local v12    # "isNew":Ljava/lang/Object;
    .end local v13    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "lineView":Landroid/widget/ImageView;
    .end local v15    # "mac":Ljava/lang/String;
    .end local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "status":Ljava/lang/Object;
    .end local v22    # "textView":Landroid/widget/TextView;
    .end local v23    # "versionK":Ljava/lang/Object;
    :catch_0
    move-exception v11

    .line 294
    .local v11, "exception":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    const/4 v5, 0x0

    goto :goto_4

    .line 124
    .end local v11    # "exception":Ljava/lang/Exception;
    .restart local v2    # "button1":Landroid/widget/Button;
    .restart local v3    # "button2":Landroid/widget/Button;
    .restart local v4    # "buttonLayout":Landroid/widget/LinearLayout;
    .restart local v5    # "convertView":Landroid/view/View;
    .restart local v6    # "deviceNew":Landroid/widget/ImageView;
    .restart local v7    # "deviceOffImage":Landroid/widget/ImageView;
    .restart local v8    # "deviceSImage":Landroid/widget/ImageView;
    .restart local v9    # "deviceSText":Landroid/widget/TextView;
    .restart local v10    # "deviceStatusImage":Landroid/widget/ImageView;
    .restart local v12    # "isNew":Ljava/lang/Object;
    .restart local v14    # "lineView":Landroid/widget/ImageView;
    .restart local v15    # "mac":Ljava/lang/String;
    .restart local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "status":Ljava/lang/Object;
    .restart local v22    # "textView":Landroid/widget/TextView;
    .restart local v23    # "versionK":Ljava/lang/Object;
    :cond_3
    const/16 v24, 0x3

    :try_start_1
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    const/16 v24, 0x4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 125
    :cond_4
    const v24, 0x7f020086

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 136
    .restart local v20    # "plugsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    .line 137
    .local v19, "pluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->getMac()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 138
    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->getPluginName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 151
    .end local v19    # "pluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 152
    const v24, 0x7f02017c

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 153
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->getPlugTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v24, 0x7f02017b

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0169

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 157
    :cond_7
    const v24, 0x7f02017c

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 158
    const v24, 0x7f02017c

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 159
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 160
    .local v17, "plug1":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 161
    .local v18, "plug2":Ljava/lang/String;
    const-string v24, "rf_module"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    const-string v24, "tp_module"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 162
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->getPlugTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->getPlugTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 165
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->getPlugTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->getPlugTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 171
    .end local v17    # "plug1":Ljava/lang/String;
    .end local v18    # "plug2":Ljava/lang/String;
    :cond_a
    const v24, 0x7f02017f

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 172
    const v24, 0x7f0c0161

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f09003a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    const v24, 0x7f02017b

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 176
    const v24, 0x7f02017b

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0168

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0169

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 183
    :cond_b
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public setPlugModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/DevicePluginModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->pluginModels:Ljava/util/List;

    .line 65
    return-void
.end method
