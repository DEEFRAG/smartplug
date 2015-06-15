.class Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$1;
.super Ljava/lang/Object;
.source "AudioPlaylistItemViewGroup.java"

# interfaces
.implements Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$1;->this$0:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackSwitched()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onSwitched(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$1;->this$0:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;

    # getter for: Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->mOnItemSlidedListener:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->access$0(Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;)Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$1;->this$0:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;

    # getter for: Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->mOnItemSlidedListener:Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;
    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;->access$0(Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup;)Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;->onItemSlided()V

    .line 47
    :cond_0
    return-void
.end method

.method public onSwitching(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 40
    return-void
.end method

.method public onTouchClick()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onTouchDown()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
