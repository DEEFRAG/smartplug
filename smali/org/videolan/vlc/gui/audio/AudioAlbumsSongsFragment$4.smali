.class Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$4;
.super Ljava/lang/Object;
.source "AudioAlbumsSongsFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    iget-object v1, v1, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->access$4(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;I)V

    .line 145
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mCurrentTab:I
    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->access$5(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->smoothScrollTo(I)V

    .line 146
    return-void
.end method
