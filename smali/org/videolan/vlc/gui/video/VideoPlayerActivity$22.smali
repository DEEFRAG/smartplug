.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$22;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->encounteredError()V
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$22;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$22;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    .line 1100
    return-void
.end method
