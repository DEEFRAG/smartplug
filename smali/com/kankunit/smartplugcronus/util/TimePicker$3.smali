.class Lcom/kankunit/smartplugcronus/util/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$3;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$3;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-static {v0, p3}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$0(Lcom/kankunit/smartplugcronus/util/TimePicker;I)V

    .line 131
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$3;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mIs24HourView:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$1(Lcom/kankunit/smartplugcronus/util/TimePicker;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$3;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$2(Lcom/kankunit/smartplugcronus/util/TimePicker;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$3;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$0(Lcom/kankunit/smartplugcronus/util/TimePicker;I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$3;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$3(Lcom/kankunit/smartplugcronus/util/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$3;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # getter for: Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$2(Lcom/kankunit/smartplugcronus/util/TimePicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$0(Lcom/kankunit/smartplugcronus/util/TimePicker;I)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$3;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # invokes: Lcom/kankunit/smartplugcronus/util/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$4(Lcom/kankunit/smartplugcronus/util/TimePicker;)V

    .line 143
    return-void
.end method
