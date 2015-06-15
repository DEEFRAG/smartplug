.class Lcom/kankunit/smartplugcronus/customview/DragGridView$4;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "DragGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/DragGridView;->animateReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/DragGridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$4;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    .line 422
    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$4;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$15(Lcom/kankunit/smartplugcronus/customview/DragGridView;Z)V

    .line 431
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$4;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$15(Lcom/kankunit/smartplugcronus/customview/DragGridView;Z)V

    .line 426
    return-void
.end method
