.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackSwitched()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public onSwitched(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 413
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$2(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/HeaderScrollView;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I
    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$0(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/videolan/vlc/widget/HeaderScrollView;->highlightTab(II)V

    .line 414
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$1(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;I)V

    .line 415
    return-void
.end method

.method public onSwitching(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 408
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$2(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/HeaderScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/widget/HeaderScrollView;->scroll(F)V

    .line 409
    return-void
.end method

.method public onTouchClick()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onTouchDown()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method
