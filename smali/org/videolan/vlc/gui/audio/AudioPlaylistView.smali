.class public Lorg/videolan/vlc/gui/audio/AudioPlaylistView;
.super Landroid/widget/ListView;
.source "AudioPlaylistView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;,
        Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;
    }
.end annotation


# instance fields
.field private mDragShadow:Landroid/view/View;

.field private mIsDragging:Z

.field private mOnItemDraggedListener:Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemRemovedListener:Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;

.field private mPositionDragStart:I

.field mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-boolean v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mIsDragging:Z

    .line 57
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03003e

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    .line 60
    const v2, 0x7f01009f

    invoke-static {p1, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 61
    .local v1, "resId":I
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dragging()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 180
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v3, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 197
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;

    .line 185
    .local v1, "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;
    iget v4, v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->position:I

    iget v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mPositionDragStart:I

    if-ne v4, v5, :cond_1

    .line 186
    iget-object v4, v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v4, v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutFooter:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 191
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mTouchY:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    iget-object v4, v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->expansion:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 194
    :cond_2
    iget-object v4, v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->expansion:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 134
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mIsDragging:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mTouchY:F

    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 138
    .local v0, "posY":F
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    .end local v0    # "posY":F
    :cond_0
    return-void
.end method

.method public dragAborted()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 222
    iput-boolean v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mIsDragging:Z

    .line 224
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 231
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;

    .line 227
    .local v1, "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;
    iget-object v3, v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v3, v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->layoutFooter:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v3, v1, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->expansion:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public dragDropped()V
    .locals 8

    .prologue
    .line 200
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mIsDragging:Z

    .line 203
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 204
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 205
    .local v0, "b_foundHitChild":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getChildCount()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 217
    :goto_1
    if-nez v0, :cond_0

    .line 218
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemDraggedListener:Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;

    iget v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mPositionDragStart:I

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getCount()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;->onItemDragged(II)V

    .line 219
    :cond_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 208
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mTouchY:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;

    .line 211
    .local v2, "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemDraggedListener:Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;

    if-eqz v5, :cond_2

    .line 212
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemDraggedListener:Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;

    iget v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mPositionDragStart:I

    iget v7, v2, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;->position:I

    invoke-interface {v5, v6, v7}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;->onItemDragged(II)V

    .line 213
    :cond_2
    const/4 v0, 0x1

    .line 214
    goto :goto_1

    .line 205
    .end local v2    # "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ViewHolder;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 148
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 165
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 153
    .local v3, "shadowHeight":I
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getRight()I

    move-result v2

    .line 154
    .local v2, "right":I
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getLeft()I

    move-result v1

    .line 155
    .local v1, "left":I
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getBottom()I

    move-result v0

    .line 156
    .local v0, "bottom":I
    sub-int v4, v0, v3

    .line 158
    .local v4, "top":I
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 163
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mIsDragging:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 83
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mTouchY:F

    goto :goto_0

    .line 87
    :pswitch_1
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->dragAborted()V

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 67
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 68
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 73
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 74
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 104
    .local v0, "handleEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mTouchY:F

    .line 106
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mIsDragging:Z

    if-eqz v1, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->invalidate()V

    .line 127
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 112
    :pswitch_0
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->dragging()V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->dragDropped()V

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->dragAborted()V

    goto :goto_0

    .line 127
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performItemLongClick(Landroid/view/View;IJ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 255
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 257
    :cond_0
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemRemovedListener:Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemRemovedListener:Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;

    invoke-interface {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;->onItemRemoved(I)V

    .line 252
    :cond_0
    return-void
.end method

.method public setOnItemDraggedListener(Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;

    .prologue
    .line 238
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemDraggedListener:Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;

    .line 239
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 260
    .local p1, "l":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 261
    return-void
.end method

.method public setOnItemRemovedListener(Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mOnItemRemovedListener:Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;

    .line 247
    return-void
.end method

.method public startDrag(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "positionDragStart"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;

    .prologue
    .line 168
    iput p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mPositionDragStart:I

    .line 169
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    const v3, 0x7f07003d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    .local v1, "titleView":Landroid/widget/TextView;
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mDragShadow:Landroid/view/View;

    const v3, 0x7f07010a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    .local v0, "artistView":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->mIsDragging:Z

    .line 176
    .end local v0    # "artistView":Landroid/widget/TextView;
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
