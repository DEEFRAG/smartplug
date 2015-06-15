.class Lcom/kankunit/smartplugcronus/customview/DragGridView$3;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/DragGridView;->onSwapItem(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

.field private final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field private final synthetic val$tempPosition:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/DragGridView;Landroid/view/ViewTreeObserver;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;->val$tempPosition:I

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 366
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$12(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I

    move-result v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;->val$tempPosition:I

    # invokes: Lcom/kankunit/smartplugcronus/customview/DragGridView;->animateReorder(II)V
    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$13(Lcom/kankunit/smartplugcronus/customview/DragGridView;II)V

    .line 367
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/DragGridView;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;->val$tempPosition:I

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->access$14(Lcom/kankunit/smartplugcronus/customview/DragGridView;I)V

    .line 368
    const/4 v0, 0x1

    return v0
.end method
