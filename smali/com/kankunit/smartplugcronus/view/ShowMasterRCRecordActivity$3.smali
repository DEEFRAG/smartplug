.class Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;
.super Ljava/lang/Object;
.source "ShowMasterRCRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    .line 203
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

    .line 206
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->access$3(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isRecord:Z

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iput-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isRecord:Z

    .line 210
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->access$0(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 213
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 214
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    const-string v1, "Recording has started\n Please click on the button you want to operate each of"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->access$3(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isRecord:Z

    .line 221
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 222
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 223
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    const-string v1, "End recording"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
