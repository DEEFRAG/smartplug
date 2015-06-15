.class Lcom/kankunit/smartplugcronus/fragment/SceneFragment$4;
.super Ljava/lang/Object;
.source "SceneFragment.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$19(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 305
    return-void
.end method
