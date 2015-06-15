.class public Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "DeviceConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;,
        Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$SwapViews;
    }
.end annotation


# instance fields
.field private currentConfig:I

.field private directConfigureBtn:Landroid/widget/Button;

.field private directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

.field private framelayout:Landroid/widget/FrameLayout;

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private menu:Landroid/view/Menu;

.field private wirelessConfigureBtn:Landroid/widget/Button;

.field private wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->currentConfig:I

    .line 34
    return-void
.end method

.method private ReplaceFragmentMethod()V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 184
    .local v0, "tration":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0701aa

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 185
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 186
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->framelayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Landroid/view/Menu;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->currentConfig:I

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->directConfigureBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->currentConfig:I

    return v0
.end method


# virtual methods
.method public applyRotation(ZLandroid/support/v4/app/Fragment;FF)V
    .locals 7
    .param p1, "zheng"    # Z
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 191
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 192
    .local v3, "centerX":F
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 196
    .local v4, "centerY":F
    new-instance v0, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;

    .line 197
    const/high16 v5, 0x439b0000    # 310.0f

    move v1, p3

    move v2, p4

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;-><init>(FFFFFZ)V

    .line 198
    .local v0, "rotation":Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setDuration(J)V

    .line 199
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setFillAfter(Z)V

    .line 200
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    new-instance v1, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;ZLandroid/support/v4/app/Fragment;Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 202
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    return-void
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    const-string v0, "isFinishedConfig"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    :cond_0
    return-void
.end method

.method public initBg()V
    .locals 5

    .prologue
    .line 78
    const v3, 0x7f07014c

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 79
    .local v2, "deviceconfigure_mainbg":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 80
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202c5

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201af

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 84
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 86
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 307
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 308
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0194

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    new-instance v3, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 316
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 323
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 324
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02032b

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 325
    new-instance v3, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-void
.end method

.method public initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->initBg()V

    .line 97
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    const v0, 0x7f0701a9

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->directConfigureBtn:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->directConfigureBtn:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f0701a8

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureBtn:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureBtn:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0701aa

    .line 165
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const v1, 0x7f03005e

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->setContentView(I)V

    .line 168
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->initView()V

    .line 171
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 172
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 174
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->framelayout:Landroid/widget/FrameLayout;

    .line 176
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    .line 177
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 178
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 179
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->menu:Landroid/view/Menu;

    .line 46
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 48
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 295
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 296
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->currentConfig:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    .line 301
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->finish()V

    .line 303
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isStartedConfigure:Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 75
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 54
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 55
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->currentConfig:I

    if-ne v2, v1, :cond_1

    .line 56
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    iput-boolean v4, v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    .line 60
    :goto_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->finish()V

    goto :goto_1

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    iput-boolean v4, v2, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isStartedConfigure:Z

    goto :goto_2

    .line 66
    :sswitch_1
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->currentConfig:I

    if-ne v2, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    iget-boolean v1, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    if-nez v1, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/view/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0703d4 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 152
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msgBody"

    const-string v2, "startScan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "ikonke.udpbroadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 147
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msgBody"

    const-string v2, "stopScan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "ikonke.udpbroadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onUserLeaveHint()V

    .line 162
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .param p1, "frg"    # Landroid/support/v4/app/Fragment;
    .param p2, "resId"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 92
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 93
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 94
    return-void
.end method
