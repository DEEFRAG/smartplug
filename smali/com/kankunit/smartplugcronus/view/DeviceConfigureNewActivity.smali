.class public Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "DeviceConfigureNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;,
        Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;
    }
.end annotation


# instance fields
.field private currentConfig:I

.field public devicetype:Ljava/lang/String;

.field private directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

.field private framelayout:Landroid/widget/FrameLayout;

.field private hongmi_header_rightbtn:Landroid/widget/ImageButton;

.field private hongmi_header_title:Landroid/widget/TextView;

.field mainLayout:Landroid/view/View;

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private menu:Landroid/view/Menu;

.field pop:Landroid/widget/PopupWindow;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field private wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->currentConfig:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->devicetype:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private ReplaceFragmentMethod()V
    .locals 3

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 253
    .local v0, "tration":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0701aa

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 254
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 255
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->framelayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->currentConfig:I

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
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

    .line 260
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 261
    .local v3, "centerX":F
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 265
    .local v4, "centerY":F
    new-instance v0, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;

    .line 266
    const/high16 v5, 0x439b0000    # 310.0f

    move v1, p3

    move v2, p4

    .line 265
    invoke-direct/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;-><init>(FFFFFZ)V

    .line 267
    .local v0, "rotation":Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setDuration(J)V

    .line 268
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setFillAfter(Z)V

    .line 269
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 270
    new-instance v1, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;ZLandroid/support/v4/app/Fragment;Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 271
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    return-void
.end method

.method public changeDirectConfigure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "Direct connect configuration"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    const-string v2, "Direct connect configuration"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->menu:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 439
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_rightbtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_rightbtn:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 442
    :cond_1
    const v1, 0x7f07014c

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 443
    .local v0, "deviceconfigure_mainbg":Landroid/widget/LinearLayout;
    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 444
    const/4 v1, 0x2

    iput v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->currentConfig:I

    .line 445
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    .line 446
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    const v2, 0x7f0701aa

    invoke-virtual {p0, v1, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->replaceFragment(Landroid/support/v4/app/Fragment;I)V

    .line 447
    return-void
.end method

.method public changeNetConfigure()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 411
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    const-string v2, "Network Configuration"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "Network Configuration"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    const-string v1, "ap"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->devicetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "AP Configuration"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    const-string v2, "AP Configuration"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->menu:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 422
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_rightbtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_rightbtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 425
    :cond_2
    iput v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->currentConfig:I

    .line 426
    const v1, 0x7f07014c

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 427
    .local v0, "deviceconfigure_mainbg":Landroid/widget/LinearLayout;
    const v1, 0x7f0202c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 429
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    .line 430
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    const v2, 0x7f0701aa

    invoke-virtual {p0, v1, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->replaceFragment(Landroid/support/v4/app/Fragment;I)V

    .line 431
    return-void
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    const-string v0, "isFinishedConfig"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    :cond_0
    return-void
.end method

.method public initBg()V
    .locals 5

    .prologue
    .line 95
    const v3, 0x7f07014c

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 96
    .local v2, "deviceconfigure_mainbg":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 97
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202c5

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201af

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 103
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initHongMiHeader()V
    .locals 4

    .prologue
    .line 376
    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    .line 377
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$3;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 385
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v1, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_rightbtn:Landroid/widget/ImageButton;

    .line 393
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_rightbtn:Landroid/widget/ImageButton;

    const v2, 0x7f020157

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 394
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_rightbtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$5;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    return-void
.end method

.method public initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->initBg()V

    .line 114
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 452
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 453
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 454
    const-string v1, "flag"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "flag":Ljava/lang/String;
    const-string v1, "ap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "AP Configuration"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    const-string v2, "AP Configuration"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_0
    const-string v1, "ap"

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->devicetype:Ljava/lang/String;

    .line 463
    .end local v0    # "flag":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0701aa

    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 182
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const v2, 0x7f03005f

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->setContentView(I)V

    .line 185
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "devicetype"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->devicetype:Ljava/lang/String;

    .line 187
    const v2, 0x7f07014c

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->mainLayout:Landroid/view/View;

    .line 189
    const v2, 0x7f0700d4

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 190
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030047

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f07013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 192
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const-string v3, "Configuration Help"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 194
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 195
    const v2, 0x7f07013c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 196
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const-string v3, "Video Configuration"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 198
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 199
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v6, v6, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    .line 200
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 202
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 204
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->initView()V

    .line 234
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 235
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 237
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->framelayout:Landroid/widget/FrameLayout;

    .line 239
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    .line 240
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-virtual {v0, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 241
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 242
    const-string v2, "ap"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->devicetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const-string v3, "AP Configuration"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->hongmi_header_title:Landroid/widget/TextView;

    const-string v3, "AP Configuration"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->menu:Landroid/view/Menu;

    .line 63
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 65
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

    .line 364
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 365
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->currentConfig:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 366
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isStartedConfigure:Z

    .line 370
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->finish()V

    .line 372
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isStartedConfigure:Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_2

    .line 70
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->currentConfig:I

    if-ne v2, v6, :cond_1

    .line 71
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    iput-boolean v4, v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isStartedConfigure:Z

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->finish()V

    .line 92
    :cond_0
    :goto_1
    return v6

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->directConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    iput-boolean v4, v2, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isStartedConfigure:Z

    goto :goto_0

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    iget-boolean v2, v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isStartedConfigure:Z

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1

    .line 86
    :cond_3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 90
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 169
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msgBody"

    const-string v2, "startScan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "ikonke.udpbroadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 164
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msgBody"

    const-string v2, "stopScan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "ikonke.udpbroadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onUserLeaveHint()V

    .line 179
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .param p1, "frg"    # Landroid/support/v4/app/Fragment;
    .param p2, "resId"    # I

    .prologue
    .line 108
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 109
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 110
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 111
    return-void
.end method
