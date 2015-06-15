.class Lcom/kankunit/smartplugcronus/view/WornActivity$2$1;
.super Ljava/lang/Object;
.source "WornActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/WornActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/WornActivity$2;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/WornActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2$1;->this$1:Lcom/kankunit/smartplugcronus/view/WornActivity$2;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2$1;->this$1:Lcom/kankunit/smartplugcronus/view/WornActivity$2;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity$2;)Lcom/kankunit/smartplugcronus/view/WornActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$8(Lcom/kankunit/smartplugcronus/view/WornActivity;Z)V

    .line 132
    return-void
.end method
