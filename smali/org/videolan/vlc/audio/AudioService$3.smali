.class Lorg/videolan/vlc/audio/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/audio/AudioService;->changeAudioFocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/audio/AudioService;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/audio/AudioService$3;->this$0:Lorg/videolan/vlc/audio/AudioService;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 305
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    .line 306
    .local v0, "libVLC":Lorg/videolan/libvlc/LibVLC;
    packed-switch p1, :pswitch_data_0

    .line 326
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 309
    :pswitch_1
    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->pause()V

    goto :goto_0

    .line 318
    :pswitch_2
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->setVolume(I)I

    goto :goto_0

    .line 323
    :pswitch_3
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->setVolume(I)I

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
