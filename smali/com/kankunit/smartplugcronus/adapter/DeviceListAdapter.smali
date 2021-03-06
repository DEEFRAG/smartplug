.class public Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceListAdapter.java"


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
    .line 24
    .local p2, "map":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;->map:Ljava/util/List;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;->map:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;->map:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03005d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    const v4, 0x7f07003d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 52
    .local v3, "textView":Landroid/widget/TextView;
    const v4, 0x7f0701a5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, "button1":Landroid/widget/Button;
    const v4, 0x7f0701a6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 55
    .local v1, "button2":Landroid/widget/Button;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;->map:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "title"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    move v2, p1

    .line 57
    .local v2, "k":I
    new-instance v4, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1;

    invoke-direct {v4, p0, v2}, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1;-><init>(Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v4, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$2;

    invoke-direct {v4, p0, v2}, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$2;-><init>(Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-object p2
.end method
