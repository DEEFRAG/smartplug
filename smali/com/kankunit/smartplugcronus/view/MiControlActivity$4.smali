.class Lcom/kankunit/smartplugcronus/view/MiControlActivity$4;
.super Ljava/lang/Object;
.source "MiControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MiControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MiControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MiControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MiControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MiControlActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MiControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/MiControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 244
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/MiControlActivity;->isWait:Z

    .line 245
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MiControlActivity;->quit()V

    .line 246
    return-void
.end method
