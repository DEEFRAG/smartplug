.class public Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddSceneBehindListAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

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
    .line 23
    .local p2, "map":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;->map:Ljava/util/List;

    .line 26
    return-void
.end method

.method private getImage(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const v1, 0x7f020086

    const v0, 0x7f020081

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    :pswitch_0
    return v0

    .line 68
    :pswitch_1
    const v0, 0x7f020087

    goto :goto_0

    .line 70
    :pswitch_2
    const v0, 0x7f020088

    goto :goto_0

    .line 72
    :pswitch_3
    const v0, 0x7f020089

    goto :goto_0

    .line 74
    :pswitch_4
    const v0, 0x7f02008a

    goto :goto_0

    .line 76
    :pswitch_5
    const v0, 0x7f02008b

    goto :goto_0

    .line 78
    :pswitch_6
    const v0, 0x7f02008c

    goto :goto_0

    .line 80
    :pswitch_7
    const v0, 0x7f02008d

    goto :goto_0

    .line 82
    :pswitch_8
    const v0, 0x7f02008e

    goto :goto_0

    .line 84
    :pswitch_9
    const v0, 0x7f020082

    goto :goto_0

    .line 86
    :pswitch_a
    const v0, 0x7f020083

    goto :goto_0

    .line 88
    :pswitch_b
    const v0, 0x7f020084

    goto :goto_0

    .line 90
    :pswitch_c
    const v0, 0x7f020085

    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 92
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 94
    goto :goto_0

    .line 64
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
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;->map:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;->map:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030027

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    const v6, 0x7f07003d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 48
    .local v4, "textView":Landroid/widget/TextView;
    const v6, 0x7f0700bb

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    .local v1, "devicenameView":Landroid/widget/TextView;
    const v6, 0x7f0700b2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 50
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;->map:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "type"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 51
    .local v5, "type":I
    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;->getImage(I)I

    move-result v2

    .line 53
    .local v2, "imageType":I
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;->map:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "title"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;->map:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "devicename"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "devicenameString":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 60
    return-object p2
.end method
