.class Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;
.super Ljava/lang/Object;
.source "GestureEditActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->setUpViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkedFail()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public checkedSuccess()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onGestureCodeInput(Ljava/lang/String;)V
    .locals 8
    .param p1, "inputCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 79
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->isInputPassValidate(Ljava/lang/String;)Z
    invoke-static {v2, p1}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$0(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextTip:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$1(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "<font color=\'#c70c1e\'>Links at least 3 points, please re-enter</font>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$2(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->clearDrawlineState(J)V

    .line 108
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mIsFirstInput:Z
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$3(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    invoke-static {v2, p1}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$4(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->updateCodeList(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$5(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$2(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->clearDrawlineState(J)V

    .line 88
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextReset:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$6(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 89
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextReset:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$6(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    const v4, 0x7f0c0292

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$8(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;Z)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mFirstPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$7(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    const-string v3, "KSmartLoginInfo"

    invoke-virtual {v2, v3, v5}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "userPWD"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "hasPwd"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    const-string v3, "Setting up successful"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 96
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$2(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->clearDrawlineState(J)V

    .line 97
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->finish()V

    goto :goto_1

    .line 99
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextTip:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$1(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "<font color=\'#c70c1e\'>Inconsistent with the last draw, please re-draw</font>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    const v3, 0x7f040010

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 102
    .local v0, "shakeAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextTip:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$1(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->access$2(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    move-result-object v2

    const-wide/16 v3, 0x514

    invoke-virtual {v2, v3, v4}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->clearDrawlineState(J)V

    goto :goto_1
.end method
