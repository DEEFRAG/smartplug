.class Lorg/videolan/vlc/gui/video/MediaInfoFragment$MediaInfoHandler;
.super Lorg/videolan/vlc/util/WeakHandler;
.source "MediaInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/MediaInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaInfoHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/util/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/video/MediaInfoFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lorg/videolan/vlc/util/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 162
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment$MediaInfoHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    .line 167
    .local v0, "activity":Lorg/videolan/vlc/gui/video/MediaInfoFragment;
    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 169
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    # invokes: Lorg/videolan/vlc/gui/video/MediaInfoFragment;->updateImage()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$5(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V

    goto :goto_0

    .line 174
    :pswitch_1
    # invokes: Lorg/videolan/vlc/gui/video/MediaInfoFragment;->updateText()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$6(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
