.class Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$1;
.super Ljava/lang/Object;
.source "CurtainControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->model:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->access$3(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;I)V

    .line 127
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->closeButton:Landroid/widget/ImageButton;

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->access$3(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;I)V

    .line 131
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 132
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->closeButton:Landroid/widget/ImageButton;

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
