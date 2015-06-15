.class Lcom/kankunit/smartplugcronus/customview/DragGridView$2;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/DragGridView;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x19

    .line 333
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$7(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$8(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->moveY:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$9(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mUpScrollBorder:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$10(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 338
    const/16 v0, 0x14

    .line 339
    .local v0, "scrollY":I
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$7(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$8(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->smoothScrollBy(II)V

    .line 349
    return-void

    .line 340
    .end local v0    # "scrollY":I
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->moveY:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$9(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownScrollBorder:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$11(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 341
    const/16 v0, -0x14

    .line 342
    .restart local v0    # "scrollY":I
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$7(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$8(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 344
    .end local v0    # "scrollY":I
    :cond_3
    const/4 v0, 0x0

    .line 345
    .restart local v0    # "scrollY":I
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$7(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$8(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
