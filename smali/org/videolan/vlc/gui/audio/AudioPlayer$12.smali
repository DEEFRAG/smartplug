.class Lorg/videolan/vlc/gui/audio/AudioPlayer$12;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$12;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$12;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 220
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$12;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$12;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitch:Landroid/widget/ImageButton;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$11(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$12;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 222
    const v2, 0x7f01008c

    .line 221
    invoke-static {v1, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$12;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitch:Landroid/widget/ImageButton;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$11(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$12;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 225
    const v2, 0x7f01008b

    .line 224
    invoke-static {v1, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
