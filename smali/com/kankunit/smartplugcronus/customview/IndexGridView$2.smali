.class Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;
.super Ljava/lang/Object;
.source "IndexGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/IndexGridView;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x19

    .line 404
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getFirstVisiblePosition()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$7(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$8(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->moveY:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$9(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mUpScrollBorder:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$10(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 409
    const/16 v0, 0x14

    .line 410
    .local v0, "scrollY":I
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$7(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$8(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->smoothScrollBy(II)V

    .line 420
    return-void

    .line 411
    .end local v0    # "scrollY":I
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->moveY:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$9(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownScrollBorder:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$11(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 412
    const/16 v0, -0x14

    .line 413
    .restart local v0    # "scrollY":I
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$7(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$8(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 415
    .end local v0    # "scrollY":I
    :cond_3
    const/4 v0, 0x0

    .line 416
    .restart local v0    # "scrollY":I
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$7(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$8(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
