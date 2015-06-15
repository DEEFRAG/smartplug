.class Lcom/kankunit/smartplugcronus/view/MasterControlActivity$6;
.super Ljava/lang/Object;
.source "MasterControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->finish()V

    .line 1159
    return-void
.end method
