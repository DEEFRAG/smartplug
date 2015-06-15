.class Lcom/kankunit/smartplugcronus/view/TimerSetActivity$1;
.super Ljava/lang/Object;
.source "TimerSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doSave()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->access$0(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V

    .line 123
    return-void
.end method
