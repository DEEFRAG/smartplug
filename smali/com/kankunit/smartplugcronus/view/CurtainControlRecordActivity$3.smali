.class Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    .line 183
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

    .line 186
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->access$4(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->isRecord:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iput-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->isRecord:Z

    .line 190
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->recordList:Ljava/util/List;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->access$0(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 193
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 194
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    const-string v1, "Recording has started\n Please click on the button you want to operate each of"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->access$4(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->isRecord:Z

    .line 201
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 202
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 203
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    const-string v1, "End recording"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
