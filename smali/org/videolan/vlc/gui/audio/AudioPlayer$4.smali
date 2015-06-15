.class Lorg/videolan/vlc/gui/audio/AudioPlayer$4;
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->onTimeLabelClick(Landroid/view/View;)V

    .line 158
    return-void
.end method
