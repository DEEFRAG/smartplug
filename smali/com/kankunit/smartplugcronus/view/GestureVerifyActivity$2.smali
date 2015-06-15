.class Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;
.super Ljava/lang/Object;
.source "GestureVerifyActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->setUpViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkedFail()V
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->access$0(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    move-result-object v1

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->clearDrawlineState(J)V

    .line 142
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextTip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->access$1(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextTip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->access$1(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)Landroid/widget/TextView;

    move-result-object v1

    .line 144
    const-string v2, "<font color=\'#c70c1e\'>Password Error</font>"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    const v2, 0x7f040010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 147
    .local v0, "shakeAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextTip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->access$1(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    return-void
.end method

.method public checkedSuccess()V
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->access$0(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->clearDrawlineState(J)V

    .line 132
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    const-string v2, "The password is correct"

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 133
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->finish()V

    .line 136
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->finish()V

    .line 137
    return-void
.end method

.method public onGestureCodeInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputCode"    # Ljava/lang/String;

    .prologue
    .line 127
    return-void
.end method
