.class Lcom/kankunit/smartplugcronus/util/TimePicker$4;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$4;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$4;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-static {v0, p3}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$5(Lcom/kankunit/smartplugcronus/util/TimePicker;I)V

    .line 155
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$4;->this$0:Lcom/kankunit/smartplugcronus/util/TimePicker;

    # invokes: Lcom/kankunit/smartplugcronus/util/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->access$4(Lcom/kankunit/smartplugcronus/util/TimePicker;)V

    .line 156
    return-void
.end method
