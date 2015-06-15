.class final Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;
.super Ljava/lang/Object;
.source "DeviceConfigureActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayNextView"
.end annotation


# instance fields
.field private final mPosition:Z

.field private final mfragment:Landroid/support/v4/app/Fragment;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;ZLandroid/support/v4/app/Fragment;)V
    .locals 0
    .param p2, "zheng"    # Z
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-boolean p2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;->mPosition:Z

    .line 211
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;->mfragment:Landroid/support/v4/app/Fragment;

    .line 212
    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;ZLandroid/support/v4/app/Fragment;Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;ZLandroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->framelayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->access$0(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$SwapViews;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;->mPosition:Z

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$DisplayNextView;->mfragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$SwapViews;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;ZLandroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 222
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 215
    return-void
.end method
