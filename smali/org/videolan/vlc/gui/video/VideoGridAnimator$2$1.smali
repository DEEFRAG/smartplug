.class Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;
.super Ljava/lang/Object;
.source "VideoGridAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;->this$1:Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;->this$1:Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->access$0(Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;)Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    move-result-object v0

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mAnimationsRunning:I
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$5(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$6(Lorg/videolan/vlc/gui/video/VideoGridAnimator;I)V

    .line 120
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 115
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;->this$1:Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->access$0(Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;)Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    move-result-object v0

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mAnimationsRunning:I
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$5(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$6(Lorg/videolan/vlc/gui/video/VideoGridAnimator;I)V

    .line 110
    return-void
.end method
