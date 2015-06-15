.class public Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "HorizontalListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private map:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
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
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 20
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;->map:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance v0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;

    invoke-direct {v0, v3}, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;)V

    .line 45
    .local v0, "vh":Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030069

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    const v1, 0x7f0701d4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->access$1(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 47
    const v1, 0x7f0701d2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->access$2(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    # getter for: Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->electrict_power_user:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->access$3(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "electrict_power_user"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    # getter for: Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->electrict_power_mother_text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->access$4(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;->map:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "electrict_power_mother_text"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-object p2

    .line 50
    .end local v0    # "vh":Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;

    .restart local v0    # "vh":Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;
    goto :goto_0
.end method
