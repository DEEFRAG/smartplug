.class Lcom/kankunit/smartplugcronus/view/HumitureActivity$3;
.super Ljava/lang/Object;
.source "HumitureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HumitureActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->finish()V

    .line 391
    return-void
.end method
