.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$7;
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$7;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1666
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$7;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->seek(I)V

    .line 1667
    return-void
.end method
