.class Lcom/kankunit/smartplugcronus/view/TestActivity$3;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TestActivity;->access$1(Lcom/kankunit/smartplugcronus/view/TestActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TestActivity;->mainLayout:Landroid/view/View;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 146
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/TestActivity;->isWait:Z

    .line 147
    new-instance v0, Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    invoke-direct {v0, v1, v4}, Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/TestActivity;I)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;->start()V

    .line 148
    new-instance v0, Lcom/kankunit/smartplugcronus/view/TestActivity$waitTextThread;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/TestActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TestActivity$waitTextThread;->start()V

    .line 149
    return-void
.end method
