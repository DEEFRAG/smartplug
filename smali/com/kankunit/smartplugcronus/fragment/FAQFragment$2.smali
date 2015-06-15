.class Lcom/kankunit/smartplugcronus/fragment/FAQFragment$2;
.super Ljava/lang/Object;
.source "FAQFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

.field private final synthetic val$flea:Lcom/kankunit/smartplugcronus/adapter/FaqListExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;Lcom/kankunit/smartplugcronus/adapter/FaqListExpandableAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$2;->val$flea:Lcom/kankunit/smartplugcronus/adapter/FaqListExpandableAdapter;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$2;->val$flea:Lcom/kankunit/smartplugcronus/adapter/FaqListExpandableAdapter;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/FaqListExpandableAdapter;->getGroupCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 85
    return-void

    .line 80
    :cond_0
    if-eq v0, p1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faqlist:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faqlist:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
