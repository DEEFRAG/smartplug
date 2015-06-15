.class public Lcom/kankunit/smartplugcronus/view/HomeActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/HomeActivity$DisplayNextView;,
        Lcom/kankunit/smartplugcronus/view/HomeActivity$SwapViews;
    }
.end annotation


# instance fields
.field private directConfigureBtn:Landroid/widget/Button;

.field private framelayout:Landroid/widget/FrameLayout;

.field private wirelessConfigureBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private ReplaceFragmentMethod()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 102
    .local v0, "tration":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0701aa

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 103
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 104
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/HomeActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->framelayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/HomeActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->wirelessConfigureBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/HomeActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->directConfigureBtn:Landroid/widget/Button;

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

    .line 109
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 110
    .local v3, "centerX":F
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 114
    .local v4, "centerY":F
    new-instance v0, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;

    .line 115
    const/high16 v5, 0x439b0000    # 310.0f

    move v1, p3

    move v2, p4

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;-><init>(FFFFFZ)V

    .line 116
    .local v0, "rotation":Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setDuration(J)V

    .line 117
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setFillAfter(Z)V

    .line 118
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 119
    new-instance v1, Lcom/kankunit/smartplugcronus/view/HomeActivity$DisplayNextView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/kankunit/smartplugcronus/view/HomeActivity$DisplayNextView;-><init>(Lcom/kankunit/smartplugcronus/view/HomeActivity;ZLandroid/support/v4/app/Fragment;Lcom/kankunit/smartplugcronus/view/HomeActivity$DisplayNextView;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    return-void
.end method

.method public initBg()V
    .locals 5

    .prologue
    .line 42
    const v3, 0x7f07014c

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 43
    .local v2, "deviceconfigure_mainbg":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 44
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202c5

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201af

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 48
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 50
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initView()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->initBg()V

    .line 56
    const v0, 0x7f0701a9

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->directConfigureBtn:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->directConfigureBtn:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/HomeActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/HomeActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f0701a8

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->wirelessConfigureBtn:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->wirelessConfigureBtn:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/HomeActivity$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/HomeActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f03005e

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->initView()V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    const v1, 0x7f0701aa

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/HomeActivity;->framelayout:Landroid/widget/FrameLayout;

    .line 96
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/HomeActivity;->ReplaceFragmentMethod()V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 37
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 32
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 33
    return-void
.end method
