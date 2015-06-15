.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$14;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$14;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 2353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2356
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$14;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$21(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2357
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Presentation was dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$14;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$22(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)V

    .line 2360
    :cond_0
    return-void
.end method
