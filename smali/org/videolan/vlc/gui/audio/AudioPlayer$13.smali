.class Lorg/videolan/vlc/gui/audio/AudioPlayer$13;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioPlayer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$13;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 231
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$13;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$13;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsListAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;
    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$12(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getLocations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/util/List;I)V

    .line 232
    return-void
.end method
