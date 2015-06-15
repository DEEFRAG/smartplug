.class Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;
.super Landroid/widget/RelativeLayout;
.source "OpenFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/OpenFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenFolderContainer"
.end annotation


# instance fields
.field isvalid:Z

.field lasttime:J

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/customview/OpenFolder;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    .line 306
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->lasttime:J

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->isvalid:Z

    .line 307
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 312
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 313
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 316
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 317
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 319
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 323
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 325
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # invokes: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->dismiss()V
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$6(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)V

    goto :goto_0

    .line 331
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 333
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    .line 341
    .local v0, "y":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->lasttime:J

    sub-long/2addr v2, v4

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->ANIMALTION_TIME:I
    invoke-static {}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$7()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 342
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->isvalid:Z

    .line 346
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->lasttime:J

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->isvalid:Z

    if-eqz v2, :cond_2

    .line 349
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderUpY:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$8(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderDownY:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$9(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)I

    move-result v2

    if-le v0, v2, :cond_2

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    # invokes: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->dismiss()V
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$6(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)V

    .line 353
    :goto_1
    return v1

    .line 344
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->isvalid:Z

    goto :goto_0

    .line 353
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method
