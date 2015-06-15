.class Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0xfa0

    .line 596
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget-boolean v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->vibrated:Z

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;)Lorg/videolan/vlc/gui/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 598
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 597
    check-cast v0, Landroid/os/Vibrator;

    .line 599
    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 601
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->vibrated:Z

    .line 604
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget-boolean v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->forward:Z

    if-eqz v0, :cond_3

    .line 605
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget-wide v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget-wide v2, v2, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->length:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 606
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget v1, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    add-int/lit16 v1, v1, 0xfa0

    iput v1, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    .line 614
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;)Lorg/videolan/vlc/gui/audio/AudioPlayer;

    move-result-object v0

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTime:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$1(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;)Lorg/videolan/vlc/gui/audio/AudioPlayer;

    move-result-object v0

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShowRemainingTime:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$2(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    int-to-long v0, v0

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget-wide v3, v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->length:J

    sub-long/2addr v0, v3

    :goto_1
    invoke-static {v0, v1}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;)Lorg/videolan/vlc/gui/audio/AudioPlayer;

    move-result-object v0

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTimeline:Landroid/widget/SeekBar;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$6(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget v1, v1, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 616
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;)Lorg/videolan/vlc/gui/audio/AudioPlayer;

    move-result-object v0

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$7(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget v1, v1, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 617
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->h:Landroid/os/Handler;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget-object v1, v1, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->seekRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 618
    return-void

    .line 608
    :cond_3
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    if-le v0, v3, :cond_4

    .line 609
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget v1, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    add-int/lit16 v1, v1, -0xfa0

    iput v1, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    goto :goto_0

    .line 610
    :cond_4
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    if-gt v0, v3, :cond_2

    .line 611
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    const/4 v1, 0x0

    iput v1, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    goto :goto_0

    .line 614
    :cond_5
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    iget v0, v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;->possibleSeek:I

    int-to-long v0, v0

    goto :goto_1
.end method
