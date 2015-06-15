.class Lcom/kankunit/smartplugcronus/customview/IndexGridView$3;
.super Ljava/lang/Object;
.source "IndexGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/IndexGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    # getter for: Lcom/kankunit/smartplugcronus/customview/IndexGridView;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->access$12(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->stopDrag()V

    .line 296
    return-void
.end method
