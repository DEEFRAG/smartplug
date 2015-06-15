.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;
.super Landroid/os/Handler;
.source "IndexFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 168
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 172
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 177
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getCount()I

    move-result v2

    .line 178
    .local v2, "vCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_4

    .line 185
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->stopShake()V

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    if-eqz v3, :cond_2

    .line 190
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDragMode()V

    .line 194
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDeleteable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDeleteable(Z)V

    .line 200
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initGridInfo()V

    .line 201
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 178
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x110
        :pswitch_0
    .end packed-switch
.end method
