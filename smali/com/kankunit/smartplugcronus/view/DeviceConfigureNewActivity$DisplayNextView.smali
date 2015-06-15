.class final Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;
.super Ljava/lang/Object;
.source "DeviceConfigureNewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayNextView"
.end annotation


# instance fields
.field private final mPosition:Z

.field private final mfragment:Landroid/support/v4/app/Fragment;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;ZLandroid/support/v4/app/Fragment;)V
    .locals 0
    .param p2, "zheng"    # Z
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-boolean p2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;->mPosition:Z

    .line 280
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;->mfragment:Landroid/support/v4/app/Fragment;

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;ZLandroid/support/v4/app/Fragment;Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;ZLandroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->framelayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->access$0(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;->mPosition:Z

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$DisplayNextView;->mfragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$SwapViews;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;ZLandroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 291
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 284
    return-void
.end method
