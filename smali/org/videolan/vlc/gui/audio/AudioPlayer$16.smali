.class Lorg/videolan/vlc/gui/audio/AudioPlayer$16;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioPlayer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$16;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRemoved(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$16;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/audio/AudioServiceController;->remove(I)V

    .line 252
    return-void
.end method
