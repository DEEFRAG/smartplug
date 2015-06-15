.class Lorg/videolan/vlc/audio/AudioService$AudioServiceEventHandler;
.super Lorg/videolan/vlc/util/WeakHandler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioServiceEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/util/WeakHandler",
        "<",
        "Lorg/videolan/vlc/audio/AudioService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0
    .param p1, "fragment"    # Lorg/videolan/vlc/audio/AudioService;

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lorg/videolan/vlc/util/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 439
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 443
    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioService$AudioServiceEventHandler;->getOwner()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/videolan/vlc/audio/AudioService;

    .line 444
    .local v6, "service":Lorg/videolan/vlc/audio/AudioService;
    if-nez v6, :cond_1

    .line 531
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 446
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "event"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 528
    const-string v7, "VLC/AudioService"

    const-string v8, "Event not handled (0x%x)"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "event"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :sswitch_1
    const-string v7, "VLC/AudioService"

    const-string v8, "MediaParsedChanged"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :sswitch_2
    const-string v7, "VLC/AudioService"

    const-string v8, "MediaPlayerPlaying"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    .line 453
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdateProgress()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$34(Lorg/videolan/vlc/audio/AudioService;)V

    .line 455
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v7

    invoke-virtual {v7}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v7

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "location":Ljava/lang/String;
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v7

    invoke-virtual {v7}, Lorg/videolan/libvlc/LibVLC;->getLength()J

    move-result-wide v1

    .line 457
    .local v1, "length":J
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v0

    .line 458
    .local v0, "dbManager":Lorg/videolan/vlc/MediaDatabase;
    invoke-virtual {v0, v3}, Lorg/videolan/vlc/MediaDatabase;->getMedia(Ljava/lang/String;)Lorg/videolan/libvlc/Media;

    move-result-object v4

    .line 466
    .local v4, "m":Lorg/videolan/libvlc/Media;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-nez v7, :cond_2

    cmp-long v7, v1, v10

    if-lez v7, :cond_2

    .line 467
    const-string v7, "VLC/AudioService"

    const-string v8, "Updating audio file length"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v7, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_LENGTH:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 468
    invoke-virtual {v0, v3, v7, v8}, Lorg/videolan/vlc/MediaDatabase;->updateMedia(Ljava/lang/String;Lorg/videolan/vlc/MediaDatabase$mediaColumn;Ljava/lang/Object;)V

    .line 472
    :cond_2
    # invokes: Lorg/videolan/vlc/audio/AudioService;->changeAudioFocus(Z)V
    invoke-static {v6, v9}, Lorg/videolan/vlc/audio/AudioService;->access$38(Lorg/videolan/vlc/audio/AudioService;Z)V

    .line 473
    const/16 v7, 0x104

    # invokes: Lorg/videolan/vlc/audio/AudioService;->setRemoteControlClientPlaybackState(I)V
    invoke-static {v6, v7}, Lorg/videolan/vlc/audio/AudioService;->access$39(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 474
    # invokes: Lorg/videolan/vlc/audio/AudioService;->showNotification()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$28(Lorg/videolan/vlc/audio/AudioService;)V

    .line 475
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_0

    .line 476
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_0

    .line 479
    .end local v0    # "dbManager":Lorg/videolan/vlc/MediaDatabase;
    .end local v1    # "length":J
    .end local v3    # "location":Ljava/lang/String;
    .end local v4    # "m":Lorg/videolan/libvlc/Media;
    :sswitch_3
    const-string v7, "VLC/AudioService"

    const-string v8, "MediaPlayerPaused"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    .line 481
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdateProgress()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$34(Lorg/videolan/vlc/audio/AudioService;)V

    .line 482
    # invokes: Lorg/videolan/vlc/audio/AudioService;->showNotification()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$28(Lorg/videolan/vlc/audio/AudioService;)V

    .line 483
    const/16 v7, 0x105

    # invokes: Lorg/videolan/vlc/audio/AudioService;->setRemoteControlClientPlaybackState(I)V
    invoke-static {v6, v7}, Lorg/videolan/vlc/audio/AudioService;->access$39(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 484
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 485
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 488
    :sswitch_4
    const-string v7, "VLC/AudioService"

    const-string v8, "MediaPlayerStopped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    .line 490
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdateProgress()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$34(Lorg/videolan/vlc/audio/AudioService;)V

    .line 491
    const/16 v7, 0x106

    # invokes: Lorg/videolan/vlc/audio/AudioService;->setRemoteControlClientPlaybackState(I)V
    invoke-static {v6, v7}, Lorg/videolan/vlc/audio/AudioService;->access$39(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 492
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 493
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 496
    :sswitch_5
    const-string v7, "VLC/AudioService"

    const-string v8, "MediaPlayerEndReached"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    .line 498
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdateProgress()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$34(Lorg/videolan/vlc/audio/AudioService;)V

    .line 499
    # invokes: Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices(Z)V
    invoke-static {v6, v9}, Lorg/videolan/vlc/audio/AudioService;->access$41(Lorg/videolan/vlc/audio/AudioService;Z)V

    .line 500
    # invokes: Lorg/videolan/vlc/audio/AudioService;->next()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$8(Lorg/videolan/vlc/audio/AudioService;)V

    .line 501
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 502
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 505
    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 506
    # invokes: Lorg/videolan/vlc/audio/AudioService;->handleVout()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$42(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_0

    .line 510
    :sswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 511
    .local v5, "pos":F
    # invokes: Lorg/videolan/vlc/audio/AudioService;->updateWidgetPosition(Landroid/content/Context;F)V
    invoke-static {v6, v6, v5}, Lorg/videolan/vlc/audio/AudioService;->access$43(Lorg/videolan/vlc/audio/AudioService;Landroid/content/Context;F)V

    goto/16 :goto_0

    .line 515
    .end local v5    # "pos":F
    :sswitch_8
    const v7, 0x7f0c0078

    new-array v8, v9, [Ljava/lang/Object;

    .line 516
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v9

    invoke-virtual {v9}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v9

    .line 517
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v10

    .line 516
    invoke-virtual {v9, v10}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 514
    invoke-virtual {v6, v7, v8}, Lorg/videolan/vlc/audio/AudioService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lorg/videolan/vlc/audio/AudioService;->showToast(Ljava/lang/String;I)V
    invoke-static {v6, v7, v12}, Lorg/videolan/vlc/audio/AudioService;->access$25(Lorg/videolan/vlc/audio/AudioService;Ljava/lang/String;I)V

    .line 518
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    .line 519
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdateProgress()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$34(Lorg/videolan/vlc/audio/AudioService;)V

    .line 520
    # invokes: Lorg/videolan/vlc/audio/AudioService;->next()V
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$8(Lorg/videolan/vlc/audio/AudioService;)V

    .line 521
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 522
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 446
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x104 -> :sswitch_2
        0x105 -> :sswitch_3
        0x106 -> :sswitch_4
        0x109 -> :sswitch_5
        0x10a -> :sswitch_8
        0x10b -> :sswitch_0
        0x10c -> :sswitch_7
        0x112 -> :sswitch_6
    .end sparse-switch
.end method
