.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$15;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$15;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 266
    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 270
    const-string v0, "VLC/VideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRoutePresentationDisplayChanged: info="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$15;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->removePresentation()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$45(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 272
    return-void
.end method
