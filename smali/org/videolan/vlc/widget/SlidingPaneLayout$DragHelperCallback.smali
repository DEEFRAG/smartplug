.class Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;


# direct methods
.method private constructor <init>(Lorg/videolan/vlc/widget/SlidingPaneLayout;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/vlc/widget/SlidingPaneLayout;Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;)V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0, p1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Lorg/videolan/vlc/widget/SlidingPaneLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 933
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 920
    iget-object v4, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v4}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$9(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    .line 921
    .local v1, "lp":Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;
    iget-object v4, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    iget v5, v1, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    add-int v3, v4, v5

    .line 922
    .local v3, "topBound":I
    iget-object v4, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I
    invoke-static {v4}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$7(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I
    invoke-static {v5}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$6(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v5

    sub-int v0, v4, v5

    .line 924
    .local v0, "bottomBound":I
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 926
    .local v2, "newTop":I
    return v2
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 915
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$7(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 866
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 870
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$1(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_0

    .line 871
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$2(Lorg/videolan/vlc/widget/SlidingPaneLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 872
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$3(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 873
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-static {v0, v2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$4(Lorg/videolan/vlc/widget/SlidingPaneLayout;I)V

    .line 874
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$5(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$5(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed()V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$2(Lorg/videolan/vlc/widget/SlidingPaneLayout;)F

    move-result v0

    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I
    invoke-static {v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$6(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I
    invoke-static {v2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$7(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    .line 878
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 879
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$3(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 880
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-static {v0, v5}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$4(Lorg/videolan/vlc/widget/SlidingPaneLayout;I)V

    .line 881
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$5(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$5(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened()V

    goto :goto_0

    .line 884
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$2(Lorg/videolan/vlc/widget/SlidingPaneLayout;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    .line 885
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$3(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$4(Lorg/videolan/vlc/widget/SlidingPaneLayout;I)V

    .line 887
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$5(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$5(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpenedEntirely()V

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 896
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # invokes: Lorg/videolan/vlc/widget/SlidingPaneLayout;->onPanelDragged(I)V
    invoke-static {v0, p3}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$8(Lorg/videolan/vlc/widget/SlidingPaneLayout;I)V

    .line 897
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$5(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$5(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F
    invoke-static {v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$2(Lorg/videolan/vlc/widget/SlidingPaneLayout;)F

    move-result v1

    invoke-interface {v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(F)V

    .line 899
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->invalidate()V

    .line 900
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/4 v4, 0x0

    .line 904
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    .line 905
    .local v0, "lp":Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;
    iget-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v2

    iget v3, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    add-int v1, v2, v3

    .line 906
    .local v1, "top":I
    cmpl-float v2, p3, v4

    if-gtz v2, :cond_0

    cmpl-float v2, p3, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F
    invoke-static {v2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$2(Lorg/videolan/vlc/widget/SlidingPaneLayout;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 907
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I
    invoke-static {v2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$7(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v2

    iget-object v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I
    invoke-static {v3}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$6(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 909
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$1(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 910
    iget-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->invalidate()V

    .line 911
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mIsUnableToDrag:Z
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$0(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x0

    .line 859
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    goto :goto_0
.end method
