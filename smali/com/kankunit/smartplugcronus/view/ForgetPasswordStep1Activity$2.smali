.class Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$2;
.super Landroid/os/Handler;
.source "ForgetPasswordStep1Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->initHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    .line 111
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    const-string v1, "Sent successfully"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    const-string v1, "The phone is not registered"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    const-string v1, "Send too often"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 123
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    const-string v1, "Failed to send"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    :cond_3
    return-void
.end method
