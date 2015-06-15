.class Lorg/videolan/vlc/gui/expandable/JumpToTime$1;
.super Ljava/lang/Object;
.source "JumpToTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/expandable/JumpToTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/expandable/JumpToTime;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/expandable/JumpToTime;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/expandable/JumpToTime$1;->this$0:Lorg/videolan/vlc/gui/expandable/JumpToTime;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lorg/videolan/vlc/gui/expandable/JumpToTime$1;->this$0:Lorg/videolan/vlc/gui/expandable/JumpToTime;

    # getter for: Lorg/videolan/vlc/gui/expandable/JumpToTime;->mHourWheel:Lkankan/wheel/widget/WheelView;
    invoke-static {v1}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->access$0(Lorg/videolan/vlc/gui/expandable/JumpToTime;)Lkankan/wheel/widget/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    .line 93
    iget-object v2, p0, Lorg/videolan/vlc/gui/expandable/JumpToTime$1;->this$0:Lorg/videolan/vlc/gui/expandable/JumpToTime;

    # getter for: Lorg/videolan/vlc/gui/expandable/JumpToTime;->mMinWheel:Lkankan/wheel/widget/WheelView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->access$1(Lorg/videolan/vlc/gui/expandable/JumpToTime;)Lkankan/wheel/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    .line 94
    iget-object v2, p0, Lorg/videolan/vlc/gui/expandable/JumpToTime$1;->this$0:Lorg/videolan/vlc/gui/expandable/JumpToTime;

    # getter for: Lorg/videolan/vlc/gui/expandable/JumpToTime;->mSecWheel:Lkankan/wheel/widget/WheelView;
    invoke-static {v2}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->access$2(Lorg/videolan/vlc/gui/expandable/JumpToTime;)Lkankan/wheel/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v2

    add-int/2addr v1, v2

    .line 92
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/videolan/libvlc/LibVLC;->setTime(J)J

    .line 95
    iget-object v0, p0, Lorg/videolan/vlc/gui/expandable/JumpToTime$1;->this$0:Lorg/videolan/vlc/gui/expandable/JumpToTime;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/expandable/JumpToTime;->dismiss()V

    .line 96
    return-void
.end method
