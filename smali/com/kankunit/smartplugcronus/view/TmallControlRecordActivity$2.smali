.class Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;
.super Ljava/lang/Object;
.source "TmallControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    .line 192
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

    .line 195
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->access$3(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isRecord:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iput-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isRecord:Z

    .line 199
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordList:Ljava/util/List;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->access$0(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 202
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 203
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    const-string v1, "begin record"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->access$3(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iput-boolean v2, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isRecord:Z

    .line 210
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 211
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 212
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    const-string v1, "end record"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
