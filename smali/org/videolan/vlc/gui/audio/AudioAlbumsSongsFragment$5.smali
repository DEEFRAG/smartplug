.class Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$5;
.super Ljava/lang/Object;
.source "AudioAlbumsSongsFragment.java"

# interfaces
.implements Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;


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
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$5;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackSwitched()V
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$5;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 165
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/MainActivity;->popSecondaryFragment()V

    .line 166
    return-void
.end method

.method public onSwitched(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$5;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 155
    return-void
.end method

.method public onSwitching(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 151
    return-void
.end method

.method public onTouchClick()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onTouchDown()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method
