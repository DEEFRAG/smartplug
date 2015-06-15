.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1584
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->selectSubtitles()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$11(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1585
    return-void
.end method
