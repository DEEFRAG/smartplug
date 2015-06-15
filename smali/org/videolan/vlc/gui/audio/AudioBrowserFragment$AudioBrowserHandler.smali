.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;
.super Lorg/videolan/vlc/util/WeakHandler;
.source "AudioBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioBrowserHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/util/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lorg/videolan/vlc/util/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 438
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 442
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .line 443
    .local v0, "fragment":Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 445
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 447
    :pswitch_0
    # invokes: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->updateLists()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$11(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
