.class Lorg/videolan/vlc/gui/video/MediaInfoFragment$2;
.super Ljava/lang/Object;
.source "MediaInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/MediaInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$2;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$2;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$2;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    # getter for: Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mItem:Lorg/videolan/libvlc/Media;
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$0(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Lorg/videolan/libvlc/Media;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    return-void
.end method
