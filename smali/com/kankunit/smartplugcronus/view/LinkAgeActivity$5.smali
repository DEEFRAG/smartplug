.class Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$5;
.super Ljava/lang/Object;
.source "LinkAgeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->doSave()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;->access$6(Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;)V

    .line 1381
    return-void
.end method
