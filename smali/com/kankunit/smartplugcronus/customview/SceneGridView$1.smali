.class Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;
.super Ljava/lang/Object;
.source "SceneGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/SceneGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$0(Lcom/kankunit/smartplugcronus/customview/SceneGridView;Z)V

    .line 155
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$1(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 156
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$2(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$3(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownX:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$4(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownY:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$5(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)I

    move-result v3

    # invokes: Lcom/kankunit/smartplugcronus/customview/SceneGridView;->createDragImage(Landroid/graphics/Bitmap;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$6(Lcom/kankunit/smartplugcronus/customview/SceneGridView;Landroid/graphics/Bitmap;II)V

    .line 161
    return-void
.end method
