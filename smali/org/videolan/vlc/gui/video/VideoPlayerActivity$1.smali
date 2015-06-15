.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 679
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 684
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 686
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$0(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    const-string v2, "level"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 689
    .local v1, "batteryLevel":I
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    .line 690
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$0(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 695
    :goto_1
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$0(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%d%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 691
    :cond_2
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3

    .line 692
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$0(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 694
    :cond_3
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$0(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 697
    .end local v1    # "batteryLevel":I
    :cond_4
    const-string v2, "org.videolan.vlc.SleepIntent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    goto :goto_0
.end method
