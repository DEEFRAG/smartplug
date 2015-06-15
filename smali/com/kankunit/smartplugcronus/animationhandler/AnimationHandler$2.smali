.class Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler$2;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler;->hideMsgAnimations(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 97
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 93
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 85
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 81
    return-void
.end method
