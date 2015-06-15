.class Lcom/kankunit/smartplugcronus/customview/IndexGridView$5;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "IndexGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/IndexGridView;->animateReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$5;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    .line 515
    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$5;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$16(Lcom/kankunit/smartplugcronus/customview/IndexGridView;Z)V

    .line 524
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$5;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$16(Lcom/kankunit/smartplugcronus/customview/IndexGridView;Z)V

    .line 519
    return-void
.end method
