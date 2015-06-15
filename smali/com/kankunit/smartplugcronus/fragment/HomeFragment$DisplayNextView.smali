.class final Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayNextView"
.end annotation


# instance fields
.field private final mPosition:Z

.field private final mfragment:Landroid/support/v4/app/Fragment;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;ZLandroid/support/v4/app/Fragment;)V
    .locals 0
    .param p2, "zheng"    # Z
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-boolean p2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;->mPosition:Z

    .line 445
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;->mfragment:Landroid/support/v4/app/Fragment;

    .line 446
    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;ZLandroid/support/v4/app/Fragment;Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;ZLandroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->framelayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$SwapViews;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;->mPosition:Z

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;->mfragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$SwapViews;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;ZLandroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 456
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 449
    return-void
.end method
