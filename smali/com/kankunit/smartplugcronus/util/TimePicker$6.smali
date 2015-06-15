.class Lcom/kankunit/smartplugcronus/util/TimePicker$6;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/util/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/util/TimePicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0xc

    .line 200
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->requestFocus()Z

    .line 201
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$3(Lcom/kankunit/smartplugcronus/util/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$2(Lcom/kankunit/smartplugcronus/util/TimePicker;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$2(Lcom/kankunit/smartplugcronus/util/TimePicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$0(Lcom/kankunit/smartplugcronus/util/TimePicker;I)V

    .line 214
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$3(Lcom/kankunit/smartplugcronus/util/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$7(Lcom/kankunit/smartplugcronus/util/TimePicker;Z)V

    .line 215
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$8(Lcom/kankunit/smartplugcronus/util/TimePicker;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$3(Lcom/kankunit/smartplugcronus/util/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmText:Ljava/lang/String;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$9(Lcom/kankunit/smartplugcronus/util/TimePicker;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # invokes: Lcom/kankunit/smartplugcronus/util/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$4(Lcom/kankunit/smartplugcronus/util/TimePicker;)V

    .line 217
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$2(Lcom/kankunit/smartplugcronus/util/TimePicker;)I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$2(Lcom/kankunit/smartplugcronus/util/TimePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0xc

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$0(Lcom/kankunit/smartplugcronus/util/TimePicker;I)V

    goto :goto_0

    .line 214
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$6;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mPmText:Ljava/lang/String;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$10(Lcom/kankunit/smartplugcronus/util/TimePicker;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
