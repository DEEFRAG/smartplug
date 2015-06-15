.class Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;
.super Ljava/lang/Object;
.source "CurtainControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 204
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->model:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;I)V

    .line 206
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->openButton:Landroid/widget/ImageButton;

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 207
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->closeButton:Landroid/widget/ImageButton;

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;I)V

    .line 210
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->openButton:Landroid/widget/ImageButton;

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 211
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->closeButton:Landroid/widget/ImageButton;

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
