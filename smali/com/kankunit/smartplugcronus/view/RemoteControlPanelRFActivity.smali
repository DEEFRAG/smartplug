.class public Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "RemoteControlPanelRFActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$waitTextThread;
    }
.end annotation


# instance fields
.field airControl:Landroid/view/View;

.field appleTvControl:Landroid/view/View;

.field cancelButton:Landroid/widget/ImageButton;

.field private condition:Ljava/util/concurrent/locks/Condition;

.field curtainControl:Landroid/view/View;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field garageControl:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private isWait:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field miControl:Landroid/view/View;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

.field radioControl:Landroid/view/View;

.field tmallControl:Landroid/view/View;

.field tvControl:Landroid/view/View;

.field universalControl:Landroid/view/View;

.field waitPressView:Landroid/view/View;

.field waitTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->isWait:Z

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->mac:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->isWait:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 304
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 308
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 309
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0180

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 317
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 324
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 325
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 327
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    const v2, 0x7f0300c6

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 87
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 88
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mac"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->mac:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 90
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 91
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->condition:Ljava/util/concurrent/locks/Condition;

    .line 93
    const v2, 0x7f0700ee

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->mainLayout:Landroid/view/View;

    .line 95
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 96
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300f6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->popupWindowView:Landroid/view/View;

    .line 97
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0xe6

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 99
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->popupWindowView:Landroid/view/View;

    const v3, 0x7f07033c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->waitTextView:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->popupWindowView:Landroid/view/View;

    const v3, 0x7f070146

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->cancelButton:Landroid/widget/ImageButton;

    .line 102
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->popupWindowView:Landroid/view/View;

    invoke-direct {v2, v3, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 103
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0d00a8

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 105
    new-instance v2, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->handler:Landroid/os/Handler;

    .line 156
    const v2, 0x7f070337

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->curtainControl:Landroid/view/View;

    .line 157
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->curtainControl:Landroid/view/View;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v2, 0x7f070331

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->garageControl:Landroid/view/View;

    .line 195
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->garageControl:Landroid/view/View;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v2, 0x7f070338

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->universalControl:Landroid/view/View;

    .line 234
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->universalControl:Landroid/view/View;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->isWait:Z

    .line 286
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->finish()V

    .line 294
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020016

    if-ne v0, v1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->finish()V

    .line 297
    :cond_1
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 74
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 69
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 70
    return-void
.end method
