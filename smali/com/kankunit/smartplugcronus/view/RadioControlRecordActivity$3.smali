.class Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;
.super Ljava/lang/Object;
.source "RadioControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->isPlay:Z

    .line 285
    new-instance v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$PlayThread;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$PlayThread;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$PlayThread;->start()V

    .line 286
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 287
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 288
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v1, "Start playing"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    return-void
.end method
