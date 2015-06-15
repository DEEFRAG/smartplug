.class public Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field public current:I

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
    .line 31
    .local p2, "map":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->current:I

    .line 32
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->map:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->map:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 58
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03009e

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    const v5, 0x7f07021d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 60
    .local v4, "textView":Landroid/widget/TextView;
    const v5, 0x7f0700a5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 62
    .local v2, "imageView":Landroid/widget/ImageView;
    iget v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->current:I

    if-ne p1, v5, :cond_0

    .line 63
    const v5, 0x7f0202fe

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 66
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f02019b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    .local v0, "br_icon":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_2

    .line 68
    const v5, 0x7f020280

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 69
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c014f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_1
    :goto_0
    return-object p2

    .line 70
    :cond_2
    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 71
    const v5, 0x7f020281

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 72
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0150

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_5

    .line 75
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    const-string v6, "hasNewFound"

    const-string v7, "hasNewFoundClick"

    .line 74
    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "hasNotClickFound":Ljava/lang/String;
    const-string v5, "new"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 77
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v9, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    invoke-virtual {v4, v8, v8, v0, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 83
    :goto_1
    const v5, 0x7f02019a

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 84
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0151

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v9, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 85
    .end local v1    # "hasNotClickFound":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-ne p1, v5, :cond_6

    .line 86
    const v5, 0x7f020283

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 87
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0155

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_6
    const/4 v5, 0x4

    if-ne p1, v5, :cond_9

    .line 91
    sget-boolean v5, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isUpdate:Z

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/kankunit/smartplugcronus/view/MenuActivity;->canFirewareUpdata:Z

    if-eqz v5, :cond_8

    .line 92
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v9, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    invoke-virtual {v4, v8, v8, v0, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    :goto_2
    const v5, 0x7f020286

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0152

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 95
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v9, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 102
    :cond_9
    const/4 v5, 0x5

    if-ne p1, v5, :cond_a

    .line 103
    const v5, 0x7f02027d

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0153

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 107
    :cond_a
    const/4 v5, 0x6

    if-ne p1, v5, :cond_1

    .line 108
    const v5, 0x7f02027b

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0154

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setCurrent(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/kankunit/smartplugcronus/adapter/MenuAdapter;->current:I

    .line 117
    return-void
.end method
