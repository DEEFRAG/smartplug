.class Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;
.super Ljava/lang/Object;
.source "AirControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isRecord:Z

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iput-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isRecord:Z

    .line 371
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordList:Ljava/util/List;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 372
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->closeAirControl()V

    .line 373
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isOpened:Z

    .line 374
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v1, "begin"

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->addRecordButton(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 376
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 377
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v1, "Recording has started\n Please click on the button you want to operate each of"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 387
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->addRecordButton(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isRecord:Z

    .line 382
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 383
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 384
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v1, "End recording"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
