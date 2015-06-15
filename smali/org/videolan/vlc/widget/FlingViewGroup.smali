.class public Lorg/videolan/vlc/widget/FlingViewGroup;
.super Landroid/view/ViewGroup;
.source "FlingViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/FlingViewGroup"

.field private static final TOUCH_STATE_MOVE:I = 0x0

.field private static final TOUCH_STATE_REST:I = 0x1


# instance fields
.field private mCurrentView:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInterceptTouchState:I

.field private mLastInterceptDownY:F

.field private mLastX:F

.field private final mMaximumVelocity:I

.field private final mScroller:Landroid/widget/Scroller;

.field private final mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    .line 41
    iput v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchState:I

    .line 42
    iput v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    .line 55
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 56
    const/4 v2, -0x2

    .line 57
    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    .line 60
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 61
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchSlop:I

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mMaximumVelocity:I

    .line 63
    return-void
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v0

    .line 250
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 251
    .local v1, "whichScreen":I
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToScreen(I)V

    .line 252
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->scrollTo(II)V

    .line 115
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->postInvalidate()V

    .line 117
    :cond_0
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v4

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 133
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 135
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 159
    :cond_2
    :goto_1
    iget v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchState:I

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    .line 137
    :pswitch_0
    iput v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastInterceptDownY:F

    .line 139
    iput v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInitialMotionX:F

    .line 140
    iput v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInitialMotionY:F

    .line 141
    iget-object v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchState:I

    .line 143
    iput v3, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    goto :goto_1

    :cond_3
    move v2, v4

    .line 142
    goto :goto_2

    .line 146
    :pswitch_1
    iget v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    if-eqz v2, :cond_0

    .line 148
    iget v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastInterceptDownY:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 149
    iput v4, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    .line 150
    :cond_4
    iget v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 151
    iput v4, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchState:I

    goto :goto_1

    .line 155
    :pswitch_2
    iput v3, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    goto :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v3

    .line 70
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 79
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, v4}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 74
    .local v2, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 74
    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 76
    add-int/2addr v1, v2

    .line 70
    .end local v2    # "childWidth":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 87
    .local v4, "widthMode":I
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_0

    .line 88
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v1

    .line 92
    .local v1, "count":I
    const/4 v3, 0x0

    .line 93
    .local v3, "maxHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0, v5, v3}, Lorg/videolan/vlc/widget/FlingViewGroup;->setMeasuredDimension(II)V

    .line 100
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 239
    iget-object v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    if-eqz v1, :cond_0

    .line 240
    int-to-float v1, p1

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 241
    .local v0, "progress":F
    iget v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-eq p1, v1, :cond_1

    .line 242
    iget-object v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-interface {v1, v0}, Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;->onSwitching(F)V

    .line 246
    .end local v0    # "progress":F
    :cond_0
    :goto_0
    return-void

    .line 244
    .restart local v0    # "progress":F
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    iget v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    invoke-interface {v1, v2}, Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;->onSwitched(I)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 106
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 107
    iget v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    mul-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->scrollTo(II)V

    .line 108
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->requestLayout()V

    .line 109
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v12, 0x3e8

    const/4 v10, 0x0

    .line 164
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 233
    :goto_0
    return v10

    .line 167
    :cond_0
    iget-object v11, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 168
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 169
    :cond_1
    iget-object v11, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 172
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 173
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 175
    .local v9, "y":F
    packed-switch v0, :pswitch_data_0

    .line 233
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 177
    :pswitch_0
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_3

    .line 178
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 179
    :cond_3
    iput v8, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    .line 180
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    if-eqz v10, :cond_2

    .line 181
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-interface {v10}, Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;->onTouchDown()V

    goto :goto_1

    .line 184
    :pswitch_1
    iget v11, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    sub-float/2addr v11, v8

    float-to-int v2, v11

    .line 185
    .local v2, "delta":I
    iput v8, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    .line 186
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v5

    .line 187
    .local v5, "scrollX":I
    if-gez v2, :cond_4

    .line 188
    if-lez v5, :cond_2

    .line 189
    neg-int v11, v5

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v11, v10}, Lorg/videolan/vlc/widget/FlingViewGroup;->scrollBy(II)V

    goto :goto_1

    .line 191
    :cond_4
    if-lez v2, :cond_2

    .line 193
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v12

    sub-int v1, v11, v12

    .line 194
    .local v1, "availableToScroll":I
    if-lez v1, :cond_2

    .line 195
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {p0, v11, v10}, Lorg/videolan/vlc/widget/FlingViewGroup;->scrollBy(II)V

    goto :goto_1

    .line 201
    .end local v1    # "availableToScroll":I
    .end local v2    # "delta":I
    .end local v5    # "scrollX":I
    :pswitch_2
    iget-object v6, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 202
    .local v6, "velocityTracker":Landroid/view/VelocityTracker;
    iget v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v6, v12, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 203
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 204
    .local v7, "velocityX":I
    iget v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInitialMotionX:F

    sub-float v3, v8, v10

    .line 205
    .local v3, "dx":F
    iget v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInitialMotionY:F

    sub-float v4, v9, v10

    .line 207
    .local v4, "dy":F
    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-lez v10, :cond_7

    iget v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    if-nez v10, :cond_7

    iget v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v3, v10

    if-lez v10, :cond_7

    .line 208
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    if-eqz v10, :cond_5

    .line 209
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-interface {v10}, Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;->onBackSwitched()V

    .line 219
    :cond_5
    :goto_2
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_6

    .line 220
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 221
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 224
    :cond_6
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    if-eqz v10, :cond_2

    .line 225
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-interface {v10}, Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;->onTouchUp()V

    .line 226
    mul-float v10, v3, v3

    mul-float v11, v4, v4

    add-float/2addr v10, v11

    iget v11, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchSlop:I

    iget v12, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchSlop:I

    mul-int/2addr v11, v12

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 227
    iget-object v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-interface {v10}, Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;->onTouchClick()V

    goto/16 :goto_1

    .line 210
    :cond_7
    if-le v7, v12, :cond_8

    iget v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    if-lez v10, :cond_8

    .line 211
    iget v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToScreen(I)V

    goto :goto_2

    .line 212
    :cond_8
    const/16 v10, -0x3e8

    if-ge v7, v10, :cond_9

    .line 213
    iget v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_9

    .line 214
    iget v10, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToScreen(I)V

    goto :goto_2

    .line 216
    :cond_9
    invoke-direct {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToDestination()V

    goto :goto_2

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollTo(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 262
    iput p1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    .line 263
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 264
    .local v3, "delta":I
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 265
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->invalidate()V

    .line 266
    return-void
.end method

.method public setOnViewSwitchedListener(Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    .prologue
    .line 276
    iput-object p1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    .line 277
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 124
    iput p1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    .line 125
    return-void
.end method

.method public smoothScrollTo(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 269
    iput p1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    .line 270
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 271
    .local v3, "delta":I
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v1

    const/16 v5, 0x12c

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 272
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->invalidate()V

    .line 273
    return-void
.end method

.method public snapToScreen(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 255
    iput p1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    .line 256
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 257
    .local v3, "delta":I
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 258
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->invalidate()V

    .line 259
    return-void
.end method
