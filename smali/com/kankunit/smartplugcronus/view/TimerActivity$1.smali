.class Lcom/kankunit/smartplugcronus/view/TimerActivity$1;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/TimerActivity;->updateTimerlist(Landroid/view/View;I)V
    invoke-static {v0, p2, p3}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$0(Lcom/kankunit/smartplugcronus/view/TimerActivity;Landroid/view/View;I)V

    .line 145
    return-void
.end method
