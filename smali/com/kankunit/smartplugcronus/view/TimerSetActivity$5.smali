.class Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;
.super Ljava/lang/Object;
.source "TimerSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;)Lcom/kankunit/smartplugcronus/view/TimerSetActivity;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 771
    const-string v1, "ok"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->fastFlag:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doSave()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->access$0(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V

    .line 781
    :goto_0
    return-void

    .line 774
    :cond_0
    new-instance v0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5$1;-><init>(Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;)V

    .line 779
    .local v0, "save":Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0241

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->fastFlag:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
