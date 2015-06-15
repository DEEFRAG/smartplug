.class Lorg/videolan/vlc/gui/expandable/TimeSleep$2;
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep$2;->this$0:Lorg/videolan/vlc/gui/expandable/TimeSleep;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->cancelSleep(Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lorg/videolan/vlc/gui/expandable/TimeSleep$2;->this$0:Lorg/videolan/vlc/gui/expandable/TimeSleep;

    # invokes: Lorg/videolan/vlc/gui/expandable/TimeSleep;->setText()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/expandable/TimeSleep;->access$2(Lorg/videolan/vlc/gui/expandable/TimeSleep;)V

    .line 97
    return-void
.end method
