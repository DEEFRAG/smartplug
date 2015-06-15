.class Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$1;
.super Ljava/lang/Object;
.source "AddDelayTaskActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->doSave()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)V

    .line 134
    return-void
.end method
