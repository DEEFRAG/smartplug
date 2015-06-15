.class Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2$1;
.super Ljava/lang/Object;
.source "DirectConfigureNewFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;

.field private final synthetic val$set:Landroid/view/animation/AnimationSet;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;Landroid/view/animation/AnimationSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2$1;->val$set:Landroid/view/animation/AnimationSet;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2$1;->val$set:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->startNow()V

    .line 169
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 164
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 160
    return-void
.end method
