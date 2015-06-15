.class Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5$1;
.super Ljava/lang/Object;
.source "TimerSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 776
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;)Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    move-result-object v0

    # invokes: Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doSave()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->access$0(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V

    .line 777
    return-void
.end method
