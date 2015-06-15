.class Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$5;
.super Ljava/lang/Object;
.source "GhControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->numLayout:Z

    .line 307
    return-void
.end method
