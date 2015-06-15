.class Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;
.super Lorg/videolan/vlc/util/WeakHandler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaListEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/util/WeakHandler",
        "<",
        "Lorg/videolan/vlc/audio/AudioService;",
        ">;"
    }
.end annotation


# instance fields
.field expanding:Z


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 1
    .param p1, "audioService"    # Lorg/videolan/vlc/audio/AudioService;

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lorg/videolan/vlc/util/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;->expanding:Z

    .line 542
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, -0x1

    .line 546
    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;->getOwner()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/audio/AudioService;

    .line 547
    .local v3, "service":Lorg/videolan/vlc/audio/AudioService;
    if-nez v3, :cond_0

    .line 610
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "event"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 604
    :pswitch_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;->expanding:Z

    goto :goto_0

    .line 552
    :pswitch_1
    const-string v4, "VLC/AudioService"

    const-string v5, "CustomMediaListItemAdded"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "item_index"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 554
    .local v0, "index":I
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-lt v4, v0, :cond_1

    iget-boolean v4, p0, Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;->expanding:Z

    if-nez v4, :cond_1

    .line 555
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 557
    :cond_1
    # invokes: Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$32(Lorg/videolan/vlc/audio/AudioService;)V

    .line 558
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    goto :goto_0

    .line 561
    .end local v0    # "index":I
    :pswitch_2
    const-string v4, "VLC/AudioService"

    const-string v5, "CustomMediaListItemDeleted"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "item_index"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 563
    .restart local v0    # "index":I
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-ne v4, v0, :cond_4

    iget-boolean v4, p0, Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;->expanding:Z

    if-nez v4, :cond_4

    .line 565
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 566
    # invokes: Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$32(Lorg/videolan/vlc/audio/AudioService;)V

    .line 567
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$16(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 568
    # invokes: Lorg/videolan/vlc/audio/AudioService;->next()V
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$8(Lorg/videolan/vlc/audio/AudioService;)V

    goto :goto_0

    .line 569
    :cond_2
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 570
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    goto :goto_0

    .line 572
    :cond_3
    # invokes: Lorg/videolan/vlc/audio/AudioService;->stop()V
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$7(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_0

    .line 576
    :cond_4
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-le v4, v0, :cond_5

    iget-boolean v4, p0, Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;->expanding:Z

    if-nez v4, :cond_5

    .line 577
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 578
    :cond_5
    # invokes: Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$32(Lorg/videolan/vlc/audio/AudioService;)V

    .line 579
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_0

    .line 582
    .end local v0    # "index":I
    :pswitch_3
    const-string v4, "VLC/AudioService"

    const-string v5, "CustomMediaListItemMoved"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "index_before"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 584
    .local v2, "positionStart":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "index_after"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 585
    .local v1, "positionEnd":I
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 586
    invoke-static {v3, v1}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 587
    if-le v1, v2, :cond_6

    .line 588
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 598
    :cond_6
    :goto_1
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$23(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 600
    # invokes: Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$32(Lorg/videolan/vlc/audio/AudioService;)V

    .line 601
    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_0

    .line 589
    :cond_7
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-le v2, v4, :cond_8

    .line 590
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-gt v1, v4, :cond_8

    .line 591
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    goto :goto_1

    .line 592
    :cond_8
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 593
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    if-le v1, v4, :cond_6

    .line 594
    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v3}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    goto :goto_1

    .line 607
    .end local v1    # "positionEnd":I
    .end local v2    # "positionStart":I
    :pswitch_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;->expanding:Z

    goto/16 :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
