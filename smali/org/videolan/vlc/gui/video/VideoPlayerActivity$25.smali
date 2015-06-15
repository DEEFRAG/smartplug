.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$25;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->handleHardwareAccelerationError()V
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$25;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1138
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$25;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    .line 1139
    return-void
.end method
