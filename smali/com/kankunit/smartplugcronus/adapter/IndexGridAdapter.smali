.class public Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IndexGridAdapter.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;"
    }
.end annotation


# instance fields
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

.field private mHidePosition:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 26
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->mHidePosition:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->getItem(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/Map;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v16, 0x7f030089

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v16, "id"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    const v15, 0x7f0700a5

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 61
    .local v8, "mImageView":Landroid/widget/ImageView;
    const v15, 0x7f07021d

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 62
    .local v9, "mTextView":Landroid/widget/TextView;
    const v15, 0x7f070251

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 63
    .local v6, "itemDeviceName":Landroid/widget/TextView;
    const v15, 0x7f0701d1

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, "idTv":Landroid/widget/TextView;
    const v15, 0x7f070253

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 65
    .local v14, "shortcutTv":Landroid/widget/TextView;
    const v15, 0x7f070250

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 66
    .local v7, "item_badge":Landroid/widget/ImageView;
    const v15, 0x7f070254

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "deviceMacTv":Landroid/widget/TextView;
    const v15, 0x7f070255

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 68
    .local v11, "pluginMacTv":Landroid/widget/TextView;
    const v15, 0x7f07024e

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 69
    .local v10, "offlineoverlay":Landroid/widget/ImageView;
    const v15, 0x7f07024d

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 70
    .local v13, "selectimg":Landroid/widget/ImageView;
    const v15, 0x7f070256

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 72
    .local v12, "pluginTypeTv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v16, "item_image"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v16, "item_text"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v16, "shortcutType"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v16, "deviceMac"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v16, "pluginMac"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v16, "pluginType"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 80
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v15, "("

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v17, "deviceTitle"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v16, "shortcutType"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 84
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v16, "shortcutType"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const-string v16, "device"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 85
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v17, "isOn"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "isOn":Ljava/lang/String;
    const-string v15, "open"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 87
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    const v15, 0x7f020294

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    .end local v3    # "isOn":Ljava/lang/String;
    :goto_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v17, "isOnline"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "isOnline":Ljava/lang/String;
    const-string v15, "1"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 105
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->mHidePosition:I

    move/from16 v0, p1

    if-ne v0, v15, :cond_1

    .line 110
    const/4 v15, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v17, "isselected"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "isSelected":Ljava/lang/String;
    const-string v15, "1"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 114
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :goto_2
    return-object p2

    .line 89
    .end local v4    # "isOnline":Ljava/lang/String;
    .end local v5    # "isSelected":Ljava/lang/String;
    .restart local v3    # "isOn":Ljava/lang/String;
    :cond_2
    const-string v15, "closed"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 90
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    const v15, 0x7f020293

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    :cond_3
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 96
    .end local v3    # "isOn":Ljava/lang/String;
    :cond_4
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 100
    :cond_5
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 107
    .restart local v4    # "isOnline":Ljava/lang/String;
    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 116
    .restart local v5    # "isSelected":Ljava/lang/String;
    :cond_7
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 144
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->notifyDataSetChanged()V

    .line 149
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->notifyDataSetInvalidated()V

    .line 150
    return-void
.end method

.method public reorderItems(II)V
    .locals 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 124
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 125
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-ge p1, p2, :cond_2

    .line 126
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 135
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void

    .line 127
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "i":I
    :cond_2
    if-le p1, p2, :cond_0

    .line 130
    move v0, p1

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->list:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 130
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public setHideItem(I)V
    .locals 0
    .param p1, "hidePosition"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->mHidePosition:I

    .line 141
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->notifyDataSetChanged()V

    .line 142
    return-void
.end method
