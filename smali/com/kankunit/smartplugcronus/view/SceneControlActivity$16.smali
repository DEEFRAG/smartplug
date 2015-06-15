.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$16;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$16;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 2289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$16;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2294
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$16;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentThread:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->interrupt()V

    .line 2295
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$16;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->finish()V

    .line 2296
    return-void
.end method
