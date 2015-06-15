.class Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;
.super Ljava/lang/Object;
.source "SceneGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/SceneGridView;->onSwapItem(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

.field private final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field private final synthetic val$tempPosition:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/SceneGridView;Landroid/view/ViewTreeObserver;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;->val$tempPosition:I

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 437
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$12(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)I

    move-result v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;->val$tempPosition:I

    # invokes: Lcom/kankunit/smartplugcronus/customview/SceneGridView;->animateReorder(II)V
    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$13(Lcom/kankunit/smartplugcronus/customview/SceneGridView;II)V

    .line 438
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;->val$tempPosition:I

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->access$14(Lcom/kankunit/smartplugcronus/customview/SceneGridView;I)V

    .line 439
    const/4 v0, 0x1

    return v0
.end method
