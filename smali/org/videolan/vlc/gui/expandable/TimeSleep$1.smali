.class Lorg/videolan/vlc/gui/expandable/TimeSleep$1;
.super Ljava/lang/Object;
.source "TimeSleep.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/expandable/TimeSleep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/expandable/TimeSleep;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/expandable/TimeSleep;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep$1;->this$0:Lorg/videolan/vlc/gui/expandable/TimeSleep;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    .local v0, "currentTime":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 81
    .local v1, "sleepTime":Ljava/util/Calendar;
    const/16 v2, 0xb

    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep$1;->this$0:Lorg/videolan/vlc/gui/expandable/TimeSleep;

    # getter for: Lorg/videolan/vlc/gui/expandable/TimeSleep;->mHourWheel:Lkankan/wheel/widget/WheelView;
    invoke-static {v3}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->access$0(Lorg/videolan/vlc/gui/expandable/TimeSleep;)Lkankan/wheel/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/16 v2, 0xc

    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep$1;->this$0:Lorg/videolan/vlc/gui/expandable/TimeSleep;

    # getter for: Lorg/videolan/vlc/gui/expandable/TimeSleep;->mMinWheel:Lkankan/wheel/widget/WheelView;
    invoke-static {v3}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->access$1(Lorg/videolan/vlc/gui/expandable/TimeSleep;)Lkankan/wheel/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 83
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 84
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->roll(IZ)V

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->setSleep(Landroid/content/Context;Ljava/util/Calendar;)V

    .line 88
    iget-object v2, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep$1;->this$0:Lorg/videolan/vlc/gui/expandable/TimeSleep;

    # invokes: Lorg/videolan/vlc/gui/expandable/TimeSleep;->setText()V
    invoke-static {v2}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->access$2(Lorg/videolan/vlc/gui/expandable/TimeSleep;)V

    .line 89
    return-void
.end method
