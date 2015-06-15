.class Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;
.super Ljava/lang/Object;
.source "TvControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    .line 231
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

    .line 234
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->access$4(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isRecord:Z

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iput-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isRecord:Z

    .line 238
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordList:Ljava/util/List;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->access$0(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 242
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 243
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    const-string v1, "Recording has started\n Please click on the button you want to operate each of"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->access$4(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isRecord:Z

    .line 250
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 251
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 252
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    const-string v1, "End recording"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
