.class Lcom/kankunit/smartplugcronus/view/ShowDialogActivity$1;
.super Ljava/lang/Object;
.source "ShowDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;->finish()V

    .line 40
    return-void
.end method
