.class Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler$3;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler;->showConfigureAnimation(Landroid/content/Context;Landroid/view/View;)Lcom/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fBtn:Landroid/view/View;

.field private final synthetic val$fContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler$3;->val$fContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler$3;->val$fBtn:Landroid/view/View;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 137
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler$3;->val$fContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler$3;->val$fBtn:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler;->showConfigureAnimation(Landroid/content/Context;Landroid/view/View;)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 133
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 129
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 125
    return-void
.end method
