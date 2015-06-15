.class Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$6;
.super Lorg/videolan/vlc/util/VLCRunnable;
.source "AudioAlbumsSongsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;Ljava/lang/Object;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    .line 267
    invoke-direct {p0, p2}, Lorg/videolan/vlc/util/VLCRunnable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 270
    move-object v0, p1

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    .line 271
    .local v0, "listItem":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    iget-object v2, v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 272
    .local v1, "media":Lorg/videolan/libvlc/Media;
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;
    invoke-static {v2}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->access$6(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/vlc/MediaLibrary;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 273
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    invoke-static {v2}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->access$1(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->removeMedia(Lorg/videolan/libvlc/Media;)V

    .line 274
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    invoke-static {v2}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->access$0(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->removeMedia(Lorg/videolan/libvlc/Media;)V

    .line 275
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    iget-object v2, v2, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/audio/AudioServiceController;->removeLocation(Ljava/lang/String;)V

    .line 276
    return-void
.end method
