.class Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$4;
.super Ljava/lang/Object;
.source "BodyInductionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->onResume()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mainview:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$7(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x1388

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 265
    return-void
.end method
