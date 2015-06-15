.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$6;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initGridInfo()V

    .line 363
    return-void
.end method
