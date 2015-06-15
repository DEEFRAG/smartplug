.class public Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FirewareListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private map:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f020086

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 61
    if-nez p2, :cond_1

    .line 62
    new-instance v5, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;

    invoke-direct {v5, v9}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;-><init>(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)V

    .line 63
    .local v5, "vh":Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030075

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    const v6, 0x7f0701ef

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 64
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$1(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 67
    const v6, 0x7f0701f4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 66
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$2(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 69
    const v6, 0x7f0701f7

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 68
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$3(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 71
    const v6, 0x7f0701f5

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 70
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$4(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 73
    const v6, 0x7f0701f6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 72
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$5(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 75
    const v6, 0x7f0701f8

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 74
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$6(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 77
    const v6, 0x7f0701f9

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 76
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$7(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;Landroid/widget/ImageView;)V

    .line 78
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "fireware_mac"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "mac":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "fireware_type"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "type":Ljava/lang/String;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 87
    .local v3, "res":Landroid/content/res/Resources;
    const-string v6, "k2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    const v6, 0x7f020088

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .local v0, "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    .line 90
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    .line 89
    invoke-virtual {v0, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_title:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$8(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 92
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_type:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$9(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "k2"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_mac:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$10(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_title:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$8(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v9, "firewaretitle"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_old:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$11(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v9, "firewareold"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_new:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$12(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v9, "firewarenew"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "isNewest"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "isNewest":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 112
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_isnewest:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$13(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v9, "isNewest"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_red_point:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$14(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :goto_2
    return-object p2

    .line 80
    .end local v1    # "isNewest":Ljava/lang/String;
    .end local v2    # "mac":Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "vh":Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;

    .restart local v5    # "vh":Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 93
    .restart local v2    # "mac":Ljava/lang/String;
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_2
    const-string v6, "mini_w"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .restart local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    .line 95
    invoke-virtual {v0, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_title:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$8(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_type:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$9(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "mini_w"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 99
    .end local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    const-string v6, "mini_b"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .restart local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    .line 102
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    .line 101
    invoke-virtual {v0, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_title:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$8(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 104
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_type:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$9(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "mini_b"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 116
    .end local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "isNewest":Ljava/lang/String;
    :cond_4
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_isnewest:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$13(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    .line 117
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v9, "isNewest"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    # getter for: Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->fireware_red_point:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;->access$14(Lcom/kankunit/smartplugcronus/adapter/FirewareListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method
