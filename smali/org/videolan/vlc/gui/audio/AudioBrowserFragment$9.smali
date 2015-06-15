.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;
.super Lorg/videolan/vlc/util/VLCRunnable;
.source "AudioBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;Ljava/lang/Object;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .line 343
    invoke-direct {p0, p2}, Lorg/videolan/vlc/util/VLCRunnable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 346
    move-object v0, p1

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    .line 347
    .local v0, "listItem":Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
    iget-object v2, v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 348
    .local v1, "media":Lorg/videolan/libvlc/Media;
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;
    invoke-static {v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$12(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/vlc/MediaLibrary;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 349
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$5(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v2

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/audio/AudioServiceController;->removeLocation(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # invokes: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->updateLists()V
    invoke-static {v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$11(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    .line 351
    return-void
.end method
