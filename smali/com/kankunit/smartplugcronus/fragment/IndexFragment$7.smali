.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$7;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$31(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 448
    return-void
.end method
