.class final Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;
.super Ljava/lang/Object;
.source "DeviceConfigureNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapViews"
.end annotation


# instance fields
.field private final mPosition:Z

.field private final mfragment:Landroid/support/v4/app/Fragment;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;ZLandroid/support/v4/app/Fragment;)V
    .locals 0
    .param p2, "position"    # Z
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-boolean p2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;->mPosition:Z

    .line 300
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;->mfragment:Landroid/support/v4/app/Fragment;

    .line 301
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x439b0000    # 310.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 304
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->framelayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->access$0(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v8

    .line 305
    .local v3, "centerX":F
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->framelayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->access$0(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v8

    .line 307
    .local v4, "centerY":F
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    .line 309
    .local v7, "tration":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0701aa

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;->mfragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v7, v1, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 310
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;->mPosition:Z

    if-eqz v1, :cond_0

    .line 311
    new-instance v0, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-direct/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;-><init>(FFFFFZ)V

    .line 317
    .local v0, "rotation":Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;
    :goto_0
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 318
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setDuration(J)V

    .line 319
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setFillAfter(Z)V

    .line 320
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->framelayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->access$0(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    return-void

    .line 314
    .end local v0    # "rotation":Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;
    :cond_0
    new-instance v0, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;-><init>(FFFFFZ)V

    .restart local v0    # "rotation":Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;
    goto :goto_0
.end method
