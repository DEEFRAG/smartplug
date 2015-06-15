.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "p"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$6(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getMedia(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 261
    .local v2, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 262
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    const-string v3, "albumsSongs"

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/gui/MainActivity;->showSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    .line 263
    .local v1, "frag":Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;
    if-eqz v1, :cond_0

    .line 264
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/libvlc/Media;

    invoke-virtual {v3}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->setMediaList(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 266
    :cond_0
    return-void
.end method
