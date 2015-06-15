.class Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;
.super Landroid/os/Handler;
.source "RegisterStep2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->initHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    .line 159
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

    .line 161
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_0

    .line 162
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    const-string v3, "Sent successfully"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 164
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 165
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    const-string v3, "The phone is registered"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 167
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 168
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    const-string v3, "Send too often"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 171
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    const-string v3, "Send failed"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 174
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 175
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    const-string v3, "Validation succeeded"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "telephone"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->telephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->access$1(Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    invoke-virtual {v2, v0, v4}, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 181
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    const-string v3, "Validation failed"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 184
    :cond_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 185
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->sendAgainTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->access$6(Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;)Landroid/widget/TextView;

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

    .line 188
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    .line 189
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->sendAgainTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->access$6(Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Reacquire the verification code"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->sendAgainTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->access$6(Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;->access$7(Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;I)V

    .line 192
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const-string v3, "Registration tips"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 194
    const-string v3, "If you always don't receive a verification code or have no China mainland mobile phone number, please send an email to help@ikonke.com and tell us your phone number and we will reply as soon as possible (not including weekends) we then generate a random password and notify you by e-mail. You can change your own password into the app."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 195
    const-string v3, "Confirm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    :cond_7
    return-void
.end method
