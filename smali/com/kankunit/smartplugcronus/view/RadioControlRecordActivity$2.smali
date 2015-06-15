.class Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    .line 252
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

    .line 255
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$4(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->isRecord:Z

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iput-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->isRecord:Z

    .line 259
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->recordList:Ljava/util/List;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$0(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 263
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 264
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v1, "Recording has started\n Please click on the button you want to operate each of"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$4(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->isRecord:Z

    .line 271
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 272
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 273
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    const-string v1, "End recording"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
