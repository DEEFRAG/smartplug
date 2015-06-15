.class Lcom/kankunit/smartplugcronus/view/TimerActivity$7;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TimerActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/TimerActivity;->doAdd()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$14(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V

    .line 506
    return-void
.end method
