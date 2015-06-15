.class Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$5;
.super Ljava/lang/Object;
.source "BodyInductionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 311
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_bar:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$8(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->bodychat_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$9(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->finish()V

    .line 314
    return-void
.end method
