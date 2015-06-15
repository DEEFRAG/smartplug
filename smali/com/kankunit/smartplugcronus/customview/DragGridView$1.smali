.class Lcom/kankunit/smartplugcronus/customview/DragGridView$1;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$0(Lcom/kankunit/smartplugcronus/customview/DragGridView;Z)V

    .line 123
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$1(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 124
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$2(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$3(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownX:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$4(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownY:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$5(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I

    move-result v3

    # invokes: Lcom/kankunit/smartplugcronus/customview/DragGridView;->createDragImage(Landroid/graphics/Bitmap;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$6(Lcom/kankunit/smartplugcronus/customview/DragGridView;Landroid/graphics/Bitmap;II)V

    .line 127
    return-void
.end method
