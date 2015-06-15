.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$21;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->endReached()V
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$21;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$21;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->loadMedia()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$56(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1084
    return-void
.end method
