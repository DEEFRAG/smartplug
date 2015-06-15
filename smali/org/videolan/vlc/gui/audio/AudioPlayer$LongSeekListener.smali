.class Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongSeekListener"
.end annotation


# instance fields
.field forward:Z

.field h:Landroid/os/Handler;

.field length:J

.field normal:I

.field possibleSeek:I

.field pressed:I

.field seekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

.field vibrated:Z


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;ZII)V
    .locals 2
    .param p2, "forwards"    # Z
    .param p3, "normalRes"    # I
    .param p4, "pressedRes"    # I

    .prologue
    .line 584
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->seekRunnable:Ljava/lang/Runnable;

    .line 620
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->h:Landroid/os/Handler;

    .line 585
    iput-boolean p2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->forward:Z

    .line 586
    iput p3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->normal:I

    .line 587
    iput p4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->pressed:I

    .line 588
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->length:J

    .line 589
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;)Lorg/videolan/vlc/gui/audio/AudioPlayer;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 623
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 660
    :goto_0
    return v0

    .line 625
    :pswitch_0
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->forward:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mNext:Landroid/widget/ImageButton;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$8(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    :goto_1
    iget v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->pressed:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 627
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getTime()I

    move-result v0

    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    .line 628
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$10(Lorg/videolan/vlc/gui/audio/AudioPlayer;Z)V

    .line 629
    iput-boolean v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->vibrated:Z

    .line 630
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getLength()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->length:J

    .line 632
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->h:Landroid/os/Handler;

    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->seekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 633
    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPrevious:Landroid/widget/ImageButton;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$9(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    goto :goto_1

    .line 636
    :pswitch_1
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->forward:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mNext:Landroid/widget/ImageButton;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$8(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    :goto_2
    iget v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 637
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->h:Landroid/os/Handler;

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->seekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 638
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-static {v0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$10(Lorg/videolan/vlc/gui/audio/AudioPlayer;Z)V

    .line 640
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-gez v0, :cond_3

    .line 641
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->forward:Z

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->onNextClick(Landroid/view/View;)V

    :goto_3
    move v0, v1

    .line 658
    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPrevious:Landroid/widget/ImageButton;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$9(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    goto :goto_2

    .line 644
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->onPreviousClick(Landroid/view/View;)V

    goto :goto_3

    .line 646
    :cond_3
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->forward:Z

    if-eqz v0, :cond_5

    .line 647
    iget v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v2}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/vlc/audio/AudioServiceController;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 648
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    iget v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/videolan/vlc/audio/AudioServiceController;->setTime(J)V

    goto :goto_3

    .line 650
    :cond_4
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->onNextClick(Landroid/view/View;)V

    goto :goto_3

    .line 652
    :cond_5
    iget v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    if-lez v0, :cond_6

    .line 653
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    iget v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/videolan/vlc/audio/AudioServiceController;->setTime(J)V

    goto :goto_3

    .line 655
    :cond_6
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->onPreviousClick(Landroid/view/View;)V

    goto :goto_3

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
