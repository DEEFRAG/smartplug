.class public Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;,
        Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/List;
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

.field private gridItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field public isDeviceAll:Ljava/lang/Integer;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->isDeviceAll:Ljava/lang/Integer;

    .line 40
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->context:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->dataList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    .line 43
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->type:Ljava/lang/Integer;

    .line 46
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "titles"    # [Ljava/lang/String;
    .param p2, "images"    # [I
    .param p3, "description"    # [Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->isDeviceAll:Ljava/lang/Integer;

    .line 50
    iput-object p4, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->context:Landroid/content/Context;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    .line 52
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    .line 58
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->type:Ljava/lang/Integer;

    .line 59
    return-void

    .line 55
    :cond_0
    new-instance v1, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;

    aget-object v2, p1, v0

    aget v3, p2, v0

    aget-object v4, p3, v0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;-><init>(Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    .local v1, "picture":Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generatorContactCountIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x1050000

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    .line 165
    .local v8, "iconSize":I
    const/16 v11, 0x48

    const/16 v12, 0x48

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 166
    .local v4, "contactIcon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 168
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 169
    .local v7, "iconPaint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 170
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 171
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 172
    .local v10, "src":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x48

    const/16 v14, 0x48

    invoke-direct {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    .local v6, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v10, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 176
    new-instance v5, Landroid/graphics/Paint;

    const/16 v11, 0x101

    invoke-direct {v5, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 177
    .local v5, "countPaint":Landroid/graphics/Paint;
    const v11, -0xffff01

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 182
    new-instance v2, Landroid/graphics/Paint;

    const/16 v11, 0x101

    invoke-direct {v2, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 183
    .local v2, "bgcountPaint":Landroid/graphics/Paint;
    const/high16 v11, -0x10000

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 186
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    .local v1, "Rres":Landroid/content/res/Resources;
    const v11, 0x7f020479

    invoke-static {v1, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 188
    .local v9, "roundbmp":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 191
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 192
    add-int/lit8 v11, v8, 0x4

    int-to-float v11, v11

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v3, v9, v11, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    add-int/lit8 v11, v8, 0x7

    int-to-float v11, v11

    const/high16 v12, 0x41c80000    # 25.0f

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v11, v12, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    :cond_0
    :goto_0
    return-object v4

    .line 195
    :cond_1
    add-int/lit8 v11, v8, 0x4

    int-to-float v11, v11

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v3, v9, v11, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 196
    add-int/lit8 v11, v8, -0x3

    int-to-float v11, v11

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v3, v9, v11, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 197
    add-int/lit8 v11, v8, -0x1

    int-to-float v11, v11

    const/high16 v12, 0x41c80000    # 25.0f

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v11, v12, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->dataList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 73
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getIsDeviceAll()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->isDeviceAll:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 110
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f02027a

    .line 118
    if-nez p2, :cond_2

    .line 120
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030059

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 121
    new-instance v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;

    invoke-direct {v6}, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;-><init>()V

    .line 122
    .local v6, "viewHolder":Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;
    const v7, 0x7f070196

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 123
    const v7, 0x7f070195

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    :goto_0
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->type:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_3

    .line 130
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->dataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 131
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "itemText"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noscancount"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "countTxt":Ljava/lang/String;
    const-string v7, "noscancount"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v7, "noscancount"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 134
    :cond_0
    const-string v1, ""

    .line 136
    :cond_1
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 137
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->dataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "itemImage"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 138
    .local v4, "pic":I
    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 140
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2, v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->generatorContactCountIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, "countIcon":Landroid/graphics/Bitmap;
    iget-object v7, v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    .end local v1    # "countTxt":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "pic":I
    :goto_1
    return-object p2

    .line 127
    .end local v0    # "countIcon":Landroid/graphics/Bitmap;
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "viewHolder":Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;

    .restart local v6    # "viewHolder":Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;
    goto/16 :goto_0

    .line 143
    :cond_3
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->type:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 144
    iget-object v8, v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 146
    .restart local v5    # "res":Landroid/content/res/Resources;
    invoke-static {v5, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 148
    .restart local v2    # "icon":Landroid/graphics/Bitmap;
    const-string v7, "1"

    invoke-direct {p0, v2, v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->generatorContactCountIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .restart local v0    # "countIcon":Landroid/graphics/Bitmap;
    iget-object v7, v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 152
    .end local v0    # "countIcon":Landroid/graphics/Bitmap;
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_4
    iget-object v8, v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->gridItemList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 154
    .restart local v5    # "res":Landroid/content/res/Resources;
    invoke-static {v5, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 156
    .restart local v2    # "icon":Landroid/graphics/Bitmap;
    const-string v7, "1"

    invoke-direct {p0, v2, v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->generatorContactCountIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .restart local v0    # "countIcon":Landroid/graphics/Bitmap;
    iget-object v7, v6, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setIsDeviceAll(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "isDeviceAll"    # Ljava/lang/Integer;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;->isDeviceAll:Ljava/lang/Integer;

    .line 249
    return-void
.end method
