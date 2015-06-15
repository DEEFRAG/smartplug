.class Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$0(Lcom/kankunit/smartplugcronus/customview/IndexGridView;Z)V

    .line 156
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$1(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 157
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$2(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$3(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownX:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$4(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownY:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$5(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I

    move-result v3

    # invokes: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->createDragImage(Landroid/graphics/Bitmap;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$6(Lcom/kankunit/smartplugcronus/customview/IndexGridView;Landroid/graphics/Bitmap;II)V

    .line 162
    return-void
.end method
