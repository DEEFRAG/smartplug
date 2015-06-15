.class Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;
.super Landroid/os/Handler;
.source "ForgetPasswordStep2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->initHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_0

    .line 153
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    const-string v3, "Sent successfully"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 155
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 156
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    const-string v3, "The phone is not registered"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 158
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 159
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    const-string v3, "Send too often"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 161
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 162
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    const-string v3, "Failed to send"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 165
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 166
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    const-string v3, "Authentication is successful"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 167
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "telephone"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->telephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$1(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v2, "userid"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->userid:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$9(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    invoke-virtual {v2, v0, v4}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->finish()V

    .line 173
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 174
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    const-string v3, "Authentication failed"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 177
    :cond_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 178
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendAgainTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$6(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reacquire the verification code   ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    .line 182
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendAgainTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$6(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Reacquire the verification code"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendAgainTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$6(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->access$7(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;I)V

    .line 186
    :cond_7
    return-void
.end method
