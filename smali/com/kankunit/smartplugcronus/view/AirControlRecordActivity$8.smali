.class Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->closeAirControl()V

    .line 395
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isOpened:Z

    .line 396
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isPlay:Z

    .line 397
    new-instance v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$PlayThread;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$PlayThread;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$PlayThread;->start()V

    .line 398
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 399
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 400
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    const-string v1, "Start playing"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 403
    return-void
.end method
