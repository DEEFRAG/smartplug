.class Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;
.super Ljava/lang/Object;
.source "LinkAgeActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/RadioGroup;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 159
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timepicker_main:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$0(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timePicker:Landroid/widget/TimePicker;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$1(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->open_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$2(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->close_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$3(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->point_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$4(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    invoke-static {v0, v2}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$5(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;Z)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->timer_point:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->open_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$2(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->close_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$3(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->point_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$4(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$5(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;Z)V

    goto :goto_0
.end method
