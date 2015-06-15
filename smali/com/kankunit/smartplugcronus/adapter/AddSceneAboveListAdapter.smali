.class public Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddSceneAboveListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private countTextView:Landroid/widget/TextView;

.field private currentIndex:I

.field private imageLayoutWidth:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLength:I

.field private map:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
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
    .local p2, "map":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->currentIndex:I

    .line 38
    iput v1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->mLength:I

    .line 40
    iput v1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->imageLayoutWidth:I

    .line 47
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->context:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->map:Ljava/util/List;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->currentIndex:I

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->currentIndex:I

    return v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->map:Ljava/util/List;

    return-object v0
.end method

.method private getImage(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const v1, 0x7f020086

    const v0, 0x7f020081

    .line 191
    packed-switch p1, :pswitch_data_0

    .line 223
    :goto_0
    :pswitch_0
    return v0

    .line 195
    :pswitch_1
    const v0, 0x7f020087

    goto :goto_0

    .line 197
    :pswitch_2
    const v0, 0x7f020088

    goto :goto_0

    .line 199
    :pswitch_3
    const v0, 0x7f020089

    goto :goto_0

    .line 201
    :pswitch_4
    const v0, 0x7f02008a

    goto :goto_0

    .line 203
    :pswitch_5
    const v0, 0x7f02008b

    goto :goto_0

    .line 205
    :pswitch_6
    const v0, 0x7f02008c

    goto :goto_0

    .line 207
    :pswitch_7
    const v0, 0x7f02008d

    goto :goto_0

    .line 209
    :pswitch_8
    const v0, 0x7f02008e

    goto :goto_0

    .line 211
    :pswitch_9
    const v0, 0x7f020082

    goto :goto_0

    .line 213
    :pswitch_a
    const v0, 0x7f020083

    goto :goto_0

    .line 215
    :pswitch_b
    const v0, 0x7f020084

    goto :goto_0

    .line 217
    :pswitch_c
    const v0, 0x7f020085

    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 219
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 221
    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public deleteItemId(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->currentIndex:I

    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->map:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->countTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->map:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->map:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->currentIndex:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f030026

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    const v20, 0x7f0700ac

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 99
    .local v10, "imageLayout":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->imageLayoutWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    const v20, 0x7f0700b6

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 101
    .local v13, "operationLayout":Landroid/view/View;
    const v20, 0x7f0700b5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 102
    .local v17, "textView":Landroid/widget/TextView;
    const v20, 0x7f0700b2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 103
    .local v11, "imageView":Landroid/widget/ImageView;
    const v20, 0x7f0700b3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 104
    .local v8, "directionImageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->map:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 105
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->map:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    const-string v21, "type"

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 108
    .local v19, "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->map:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    const-string v21, "title"

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->getImage(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->currentIndex:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 111
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 112
    .local v16, "set":Landroid/view/animation/AnimationSet;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 113
    const-wide/16 v20, 0x12c

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 114
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->mLength:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 115
    .local v18, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const v20, 0x3dcccccd    # 0.1f

    const/high16 v21, 0x3f000000    # 0.5f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 116
    .local v6, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 118
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    move/from16 v12, p1

    .line 120
    .local v12, "index":I
    new-instance v20, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$1;-><init>(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 137
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    const v20, 0x7f0700b7

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 139
    .local v5, "addImage":Landroid/view/View;
    const v20, 0x7f0700b8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 140
    .local v9, "editImage":Landroid/view/View;
    const v20, 0x7f0700b9

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 141
    .local v7, "deleteImage":Landroid/view/View;
    new-instance v20, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$2;-><init>(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v20, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;-><init>(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v20, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$4;-><init>(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;I)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .end local v5    # "addImage":Landroid/view/View;
    .end local v6    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v7    # "deleteImage":Landroid/view/View;
    .end local v9    # "editImage":Landroid/view/View;
    .end local v12    # "index":I
    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "initInfo"

    .line 179
    const-string v22, "addSceneFlag"

    .line 178
    invoke-static/range {v20 .. v22}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, "protectFlag":Ljava/lang/String;
    const-string v20, "yes"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 181
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-class v21, Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v14, "pIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "initInfo"

    const-string v22, "addSceneFlag"

    const-string v23, "yes"

    invoke-static/range {v20 .. v23}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v14    # "pIntent":Landroid/content/Intent;
    :cond_2
    return-object p2
.end method

.method public setCountTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->countTextView:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "currentIndex"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->currentIndex:I

    .line 63
    return-void
.end method

.method public setImageLayoutWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->imageLayoutWidth:I

    .line 75
    return-void
.end method

.method public setMLength(I)V
    .locals 0
    .param p1, "mlength"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->mLength:I

    .line 71
    return-void
.end method
