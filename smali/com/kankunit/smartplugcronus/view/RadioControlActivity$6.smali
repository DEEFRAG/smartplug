.class Lcom/kankunit/smartplugcronus/view/RadioControlActivity$6;
.super Ljava/lang/Object;
.source "RadioControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 320
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->isWait:Z

    .line 321
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->quit()V

    .line 322
    return-void
.end method
