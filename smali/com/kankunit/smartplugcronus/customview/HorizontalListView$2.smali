.class Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    .line 317
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 376
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 377
    .local v5, "viewRect":Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 378
    .local v1, "childPosition":[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 379
    const/4 v6, 0x0

    aget v2, v1, v6

    .line 380
    .local v2, "left":I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v3, v2, v6

    .line 381
    .local v3, "right":I
    const/4 v6, 0x1

    aget v4, v1, v6

    .line 382
    .local v4, "top":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v4, v6

    .line 383
    .local v0, "bottom":I
    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    return v6
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 327
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->getChildCount()I

    move-result v6

    .line 363
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v6, :cond_1

    .line 373
    :cond_0
    :goto_1
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 365
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$7(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$7(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$5(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$5(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_1

    .line 363
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 334
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mNextX:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mNextX:I

    .line 334
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->requestLayout()V

    .line 339
    const/4 v0, 0x1

    return v0

    .line 334
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 344
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->getChildCount()I

    move-result v0

    if-lt v6, v0, :cond_1

    .line 357
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 346
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$4(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$4(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$5(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$5(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$6(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$6(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$5(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$5(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    .line 344
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
