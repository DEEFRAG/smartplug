.class Lorg/videolan/vlc/audio/AudioService$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/audio/AudioService;
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
    iput-object p1, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    .line 338
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "action":Ljava/lang/String;
    const-string v6, "state"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 343
    .local v2, "state":I
    iget-object v6, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v6

    if-nez v6, :cond_1

    .line 344
    const-string v4, "VLC/AudioService"

    const-string v5, "Intent received, but VLC is not loaded, skipping."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const-string v6, "org.videolan.vlc.IncomingCallIntent"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 352
    iget-object v6, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v6

    invoke-virtual {v6}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v6

    invoke-virtual {v6}, Lorg/videolan/libvlc/LibVLC;->getVideoTracksCount()I

    move-result v6

    if-ge v6, v5, :cond_2

    move v4, v5

    :cond_2
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$1(Z)V

    .line 353
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->pause()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$2(Lorg/videolan/vlc/audio/AudioService;)V

    .line 360
    :cond_3
    const-string v4, "org.videolan.vlc.CallEndedIntent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 361
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWasPlayingAudio:Z
    invoke-static {}, Lorg/videolan/vlc/audio/AudioService;->access$3()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 362
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->play()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$4(Lorg/videolan/vlc/audio/AudioService;)V

    .line 366
    :cond_4
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Lorg/videolan/vlc/audio/AudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 367
    .local v3, "telManager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_0

    .line 373
    :cond_5
    const-string v4, "org.videolan.vlc.remote."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 374
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lorg/videolan/vlc/gui/MainActivity;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .local v1, "iVlc":Landroid/content/Intent;
    const-string v4, "from_notification"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    const/high16 v4, 0x30000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 383
    .end local v1    # "iVlc":Landroid/content/Intent;
    :cond_6
    const-string v4, "org.videolan.vlc.remote.PlayPause"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 384
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 385
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->pause()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$2(Lorg/videolan/vlc/audio/AudioService;)V

    .line 409
    :cond_7
    :goto_1
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mDetectHeadset:Z
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$11(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 410
    const-string v4, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 411
    const-string v4, "VLC/AudioService"

    const-string v5, "Headset Removed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 413
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->pause()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$2(Lorg/videolan/vlc/audio/AudioService;)V

    .line 425
    :cond_8
    :goto_2
    const-string v4, "org.videolan.vlc.SleepIntent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->stop()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$7(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_0

    .line 386
    :cond_9
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 387
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->play()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$4(Lorg/videolan/vlc/audio/AudioService;)V

    goto :goto_1

    .line 388
    :cond_a
    const-string v4, "org.videolan.vlc.remote.Play"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 389
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 390
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->play()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$4(Lorg/videolan/vlc/audio/AudioService;)V

    goto :goto_1

    .line 391
    :cond_b
    const-string v4, "org.videolan.vlc.remote.Pause"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 392
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 393
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->pause()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$2(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_1

    .line 394
    :cond_c
    const-string v4, "org.videolan.vlc.remote.Backward"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 395
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->previous()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$6(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_1

    .line 396
    :cond_d
    const-string v4, "org.videolan.vlc.remote.Stop"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 397
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->stop()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$7(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_1

    .line 398
    :cond_e
    const-string v4, "org.videolan.vlc.remote.Forward"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 399
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->next()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$8(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_1

    .line 400
    :cond_f
    const-string v4, "org.videolan.vlc.remote.LastPlaylist"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 401
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->loadLastPlaylist()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$9(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_1

    .line 402
    :cond_10
    const-string v4, "org.videolan.vlc.widget.INIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 403
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->updateWidget(Landroid/content/Context;)V
    invoke-static {v4, p1}, Lorg/videolan/vlc/audio/AudioService;->access$10(Lorg/videolan/vlc/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 415
    :cond_11
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 416
    const-string v4, "VLC/AudioService"

    const-string v5, "Headset Inserted."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 418
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$1;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->play()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$4(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_2
.end method
