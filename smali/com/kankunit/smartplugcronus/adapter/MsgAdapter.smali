.class public Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private asyncImageLoader:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

.field private commonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field tempImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;->listView:Landroid/widget/ListView;

    .line 33
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;->list:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;->asyncImageLoader:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;->listView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 49
    .local v0, "activity":Landroid/app/Activity;
    move-object v10, p2

    .line 52
    .local v10, "rowView":Landroid/view/View;
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;->list:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 53
    .local v2, "commonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;->commonMap:Ljava/util/Map;

    .line 55
    const-string v11, "groupLable"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 57
    .local v3, "groupLabel":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 58
    .local v4, "inflater":Landroid/view/LayoutInflater;
    if-nez v3, :cond_0

    .line 60
    const v11, 0x7f0300a5

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 66
    :goto_0
    new-instance v1, Lcom/kankunit/smartplugcronus/cache/MsgCache;

    invoke-direct {v1, v10}, Lcom/kankunit/smartplugcronus/cache/MsgCache;-><init>(Landroid/view/View;)V

    .line 67
    .local v1, "cache":Lcom/kankunit/smartplugcronus/cache/MsgCache;
    invoke-virtual {v10, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    if-nez v3, :cond_1

    .line 70
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MsgCache;->getMsgAlertIcon()Landroid/widget/ImageButton;

    move-result-object v7

    .line 71
    .local v7, "msgAlertIcon":Landroid/widget/ImageButton;
    const v11, 0x7f020319

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 73
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MsgCache;->getMsgAlertDay()Landroid/widget/TextView;

    move-result-object v5

    .line 74
    .local v5, "msgAlertDay":Landroid/widget/TextView;
    const-string v11, "msgAlertDay"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MsgCache;->getMsgAlertHour()Landroid/widget/TextView;

    move-result-object v6

    .line 77
    .local v6, "msgAlertHour":Landroid/widget/TextView;
    const-string v11, "msgAlertHour"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MsgCache;->getMsgAlertTxt()Landroid/widget/TextView;

    move-result-object v8

    .line 80
    .local v8, "msgAlertTxt":Landroid/widget/TextView;
    const-string v11, "msgAlertTxt"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .end local v5    # "msgAlertDay":Landroid/widget/TextView;
    .end local v6    # "msgAlertHour":Landroid/widget/TextView;
    .end local v7    # "msgAlertIcon":Landroid/widget/ImageButton;
    .end local v8    # "msgAlertTxt":Landroid/widget/TextView;
    :goto_1
    return-object v10

    .line 64
    .end local v1    # "cache":Lcom/kankunit/smartplugcronus/cache/MsgCache;
    :cond_0
    const v11, 0x7f0300a6

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    goto :goto_0

    .line 83
    .restart local v1    # "cache":Lcom/kankunit/smartplugcronus/cache/MsgCache;
    :cond_1
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/cache/MsgCache;->getMsggrouplabel()Landroid/widget/TextView;

    move-result-object v9

    .line 84
    .local v9, "msgGroupLabel":Landroid/widget/TextView;
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setImgWithUrl(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;->asyncImageLoader:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

    new-instance v2, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter$1;-><init>(Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;)V

    invoke-virtual {v1, p2, v2}, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    .local v0, "cachedImage":Landroid/graphics/drawable/Drawable;
    return-void
.end method
