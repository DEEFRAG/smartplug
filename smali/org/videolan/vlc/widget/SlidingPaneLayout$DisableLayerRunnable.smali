.class Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableLayerRunnable"
.end annotation


# instance fields
.field final mChildView:Landroid/view/View;

.field final synthetic this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0
    .param p2, "childView"    # Landroid/view/View;

    .prologue
    .line 1154
    iput-object p1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    iput-object p2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    .line 1156
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1160
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    if-ne v0, v1, :cond_0

    .line 1161
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1162
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    # invokes: Lorg/videolan/vlc/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V
    invoke-static {v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$10(Lorg/videolan/vlc/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1164
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    # getter for: Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->access$11(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1165
    return-void
.end method
