.class Lcom/kankunit/smartplugcronus/view/TestActivity$1;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TestActivity;->access$1(Lcom/kankunit/smartplugcronus/view/TestActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 92
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/TestActivity;->isWait:Z

    .line 93
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/TestActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TestActivity;->quit()V

    .line 94
    return-void
.end method
