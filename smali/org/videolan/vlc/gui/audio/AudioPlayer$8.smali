.class Lorg/videolan/vlc/gui/audio/AudioPlayer$8;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$8;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$8;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->onStopClick(Landroid/view/View;)V

    .line 183
    const/4 v0, 0x1

    return v0
.end method
