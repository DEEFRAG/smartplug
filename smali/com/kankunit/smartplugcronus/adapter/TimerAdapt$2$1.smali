.class Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$1;
.super Ljava/lang/Object;
.source "TimerAdapt.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$1;->this$1:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$1;->this$1:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->access$0(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$4(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/view/TimerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$1;->this$1:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->access$0(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$4(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/view/TimerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    return-void
.end method
