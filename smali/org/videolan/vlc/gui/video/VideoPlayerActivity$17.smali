.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$17;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$17;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 320
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$17;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-virtual {v0, p2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 321
    const/4 v0, 0x1

    return v0
.end method
