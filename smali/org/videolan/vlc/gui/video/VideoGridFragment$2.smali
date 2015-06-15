.class Lorg/videolan/vlc/gui/video/VideoGridFragment$2;
.super Lorg/videolan/vlc/util/VLCRunnable;
.source "VideoGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoGridFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;Ljava/lang/Object;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .line 315
    invoke-direct {p0, p2}, Lorg/videolan/vlc/util/VLCRunnable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 318
    move-object v0, p1

    check-cast v0, Lorg/videolan/libvlc/Media;

    .line 319
    .local v0, "media":Lorg/videolan/libvlc/Media;
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->access$3(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaLibrary;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->access$4(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/gui/video/VideoListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->remove(Ljava/lang/Object;)V

    .line 321
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    # getter for: Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->access$5(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v1

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/audio/AudioServiceController;->removeLocation(Ljava/lang/String;)V

    .line 322
    return-void
.end method
