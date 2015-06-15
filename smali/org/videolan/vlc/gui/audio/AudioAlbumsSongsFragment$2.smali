.class Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$2;
.super Ljava/lang/Object;
.source "AudioAlbumsSongsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;
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
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 343
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->access$1(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 344
    .local v0, "mediaLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    iget-object v1, v1, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/util/List;I)V

    .line 345
    return-void
.end method
