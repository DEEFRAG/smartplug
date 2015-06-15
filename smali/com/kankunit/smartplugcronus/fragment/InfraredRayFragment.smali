.class public Lcom/kankunit/smartplugcronus/fragment/InfraredRayFragment;
.super Landroid/support/v4/app/Fragment;
.source "InfraredRayFragment.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/InfraredRayFragment;->context:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 36
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/InfraredRayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/InfraredRayFragment;->context:Landroid/content/Context;

    .line 37
    const v4, 0x7f0300c1

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 38
    .local v3, "parent":Landroid/view/View;
    const v4, 0x7f0700bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 39
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/InfraredRayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v1, "emptyView":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    const-string v4, "The corresponding plugin will be posted on the website, so stay tuned!"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 43
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 46
    new-instance v0, Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/InfraredRayFragment;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/InfraredRayFragment;->getData()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 47
    .local v0, "adapter":Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    return-object v3
.end method
