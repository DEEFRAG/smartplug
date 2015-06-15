.class public Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "AddShortcutActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private addshortcutgridview:Landroid/widget/GridView;

.field private currentScrollY:I

.field private getLastVisiblePosition:I

.field private gridDataList:Ljava/util/List;
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

.field private handler:Landroid/os/Handler;

.field private lastVisiblePositionY:I

.field private leftBtn:Landroid/widget/ImageButton;

.field private rightBtn:Landroid/widget/ImageButton;

.field private scrollIndex:I

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->gridDataList:Ljava/util/List;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->updateData(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;

    return-object v0
.end method

.method private initActionBar()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method private initGridData()V
    .locals 11

    .prologue
    .line 369
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutWithDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 370
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/sqlite/DbModel;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 401
    return-void

    .line 370
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/tsz/afinal/db/sqlite/DbModel;

    .line 371
    .local v3, "dm":Lnet/tsz/afinal/db/sqlite/DbModel;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "a_name"

    invoke-virtual {v3, v9}, Lnet/tsz/afinal/db/sqlite/DbModel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "deviceName":Ljava/lang/String;
    const-string v9, "deviceName"

    invoke-interface {v6, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v9, "a_id"

    invoke-virtual {v3, v9}, Lnet/tsz/afinal/db/sqlite/DbModel;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 375
    .local v0, "deviceId":I
    const-string v9, "deviceId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v9, "b_id"

    invoke-virtual {v3, v9}, Lnet/tsz/afinal/db/sqlite/DbModel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, "shortcutId":Ljava/lang/String;
    const-string v9, "shortcutId"

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v9, "a_version"

    invoke-virtual {v3, v9}, Lnet/tsz/afinal/db/sqlite/DbModel;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 379
    .local v2, "deviceVersion":I
    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    .line 380
    const-string v9, "deviceIcon"

    const v10, 0x7f0201c9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :goto_1
    const-string v9, "a_flag"

    invoke-virtual {v3, v9}, Lnet/tsz/afinal/db/sqlite/DbModel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "flag":Ljava/lang/String;
    const-string v9, "flag"

    invoke-interface {v6, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->gridDataList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    .end local v4    # "flag":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    .line 382
    const-string v9, "deviceIcon"

    const v10, 0x7f0201c6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 384
    :cond_2
    const-string v9, "deviceIcon"

    const v10, 0x7f0201c7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private initHongMiHeader()V
    .locals 5

    .prologue
    .line 300
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 301
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 302
    const v4, 0x7f0c026e

    .line 301
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 310
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 318
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 319
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 201
    new-instance v0, Lcom/kankunit/smartplugcronus/adapter/ShortcutGridAdapter;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->gridDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/kankunit/smartplugcronus/adapter/ShortcutGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 202
    .local v0, "sga":Lcom/kankunit/smartplugcronus/adapter/ShortcutGridAdapter;
    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;

    .line 203
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 204
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;

    .line 205
    new-instance v2, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$2;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;

    .line 226
    new-instance v2, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$3;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 238
    return-void
.end method

.method private updateData(ILjava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "shortcutId"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->gridDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 242
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->gridDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 243
    const-string v2, "shortcutId"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->gridDataList:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;

    .line 246
    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 245
    check-cast v1, Lcom/kankunit/smartplugcronus/adapter/ShortcutGridAdapter;

    .line 247
    .local v1, "sga":Lcom/kankunit/smartplugcronus/adapter/ShortcutGridAdapter;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/ShortcutGridAdapter;->notifyDataSetChanged()V

    .line 248
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 405
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 413
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 407
    :pswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->finish()V

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 252
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->initActionBar()V

    .line 254
    const v3, 0x7f03002a

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->setContentView(I)V

    .line 256
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->handler:Landroid/os/Handler;

    .line 258
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->initGridData()V

    .line 259
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->initView()V

    .line 261
    const-string v3, "firstIndex"

    const-string v4, "adddevicedialog"

    invoke-static {p0, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "isFirst":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "notFirst"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Warm tips"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 264
    const-string v4, "The same WLAN environment has been successfully configured the device to add"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 265
    const-string v4, "I know"

    invoke-virtual {v3, v4, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 266
    const-string v3, "firstIndex"

    const-string v4, "adddevicedialog"

    const-string v5, "notFirst"

    invoke-static {p0, v3, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 280
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    .line 282
    const/16 v3, 0x11

    .line 280
    invoke-direct {v1, v6, v6, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    .line 283
    .local v1, "lp":Landroid/support/v7/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 284
    const v4, 0x7f03001c

    .line 283
    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, "viewTitleBar":Landroid/view/View;
    const v3, 0x7f020299

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 287
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    .line 290
    const/16 v4, 0x10

    .line 289
    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 291
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 294
    .end local v1    # "lp":Landroid/support/v7/app/ActionBar$LayoutParams;
    .end local v2    # "viewTitleBar":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->initHongMiHeader()V

    .line 297
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "HM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 132
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    return v8

    .line 85
    :sswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->finish()V

    goto :goto_0

    .line 88
    :sswitch_1
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    .line 89
    .local v5, "itemCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v5, :cond_0

    .line 112
    new-instance v8, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V

    .line 127
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$1;->start()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->addshortcutgridview:Landroid/widget/GridView;

    invoke-virtual {v8, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 91
    .local v7, "v":Landroid/view/View;
    const v8, 0x7f07024d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 92
    .local v6, "iv":Landroid/widget/ImageView;
    const v8, 0x7f070252

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 93
    .local v4, "idTv":Landroid/widget/TextView;
    const v8, 0x7f070372

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    .local v1, "deviceidTv":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "deviceid":I
    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 97
    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->addShortcutByDeviceid(Landroid/content/Context;I)V

    .line 100
    const-string v8, "old"

    .line 99
    invoke-static {p0, v0, v8}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDeviceFlagByDeviceId(Landroid/content/Context;ILjava/lang/String;)V

    .line 89
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByDeviceId(Landroid/content/Context;I)V

    .line 105
    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    .line 108
    .local v2, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-static {p0, v8}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0703c9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 59
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 54
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 55
    return-void
.end method
