.class Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;
.super Ljava/lang/Object;
.source "IndexGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/IndexGridView;->onSwapItem(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

.field private final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field private final synthetic val$tempPosition:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/IndexGridView;Landroid/view/ViewTreeObserver;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;->val$tempPosition:I

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 444
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$13(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I

    move-result v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;->val$tempPosition:I

    # invokes: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->animateReorder(II)V
    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$14(Lcom/kankunit/smartplugcronus/customview/IndexGridView;II)V

    .line 445
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;->val$tempPosition:I

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$15(Lcom/kankunit/smartplugcronus/customview/IndexGridView;I)V

    .line 446
    const/4 v0, 0x1

    return v0
.end method
