.class public Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;
.super Ljava/lang/Object;
.source "LoremViewsFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private ctxt:Landroid/content/Context;

.field private items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->ctxt:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->ctxt:Landroid/content/Context;

    .line 39
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortDeviceList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 44
    return-void

    .line 42
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aput-object v2, v3, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 63
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->ctxt:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 64
    const v4, 0x7f0300c9

    .line 63
    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 66
    .local v2, "row":Landroid/widget/RemoteViews;
    const v3, 0x7f070346

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 67
    const v3, 0x7f070347

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getIsOn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/kankunit/smartplugcronus/provider/WidgetProvider;->EXTRA_WORD:Ljava/lang/String;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v3, Lcom/kankunit/smartplugcronus/provider/WidgetProvider;->DEVICE_STATE:Ljava/lang/String;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getIsOn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 74
    const v3, 0x7f070345

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 76
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onDataSetChanged()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->ctxt:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortDeviceList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "dms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/provider/LoremViewsFactory;->items:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aput-object v2, v3, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
