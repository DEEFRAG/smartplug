.class Lcom/kankunit/smartplugcronus/view/TimerSetActivity$4;
.super Ljava/lang/Object;
.source "TimerSetActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doBack()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->access$1(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V

    .line 763
    const/4 v0, 0x1

    return v0
.end method
