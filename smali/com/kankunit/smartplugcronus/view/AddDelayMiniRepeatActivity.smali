.class public Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AddDelayMiniRepeatActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isCheck:[Z

.field private repeatList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;)[Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->isCheck:[Z

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->doSave()V

    return-void
.end method

.method private doSave()V
    .locals 4

    .prologue
    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "isCheck"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->isCheck:[Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->finish()V

    .line 103
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public initHongMiHeader()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->doSave()V

    .line 148
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->isCheck:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x19

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f030023

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->setContentView(I)V

    .line 39
    const v1, 0x7f0700a4

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->repeatList:Landroid/widget/ListView;

    .line 41
    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->isCheck:[Z

    .line 42
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 44
    const-string v1, "isCheck"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->isCheck:[Z

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v5, :cond_0

    .line 62
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 63
    const v3, 0x7f030050

    .line 64
    new-array v4, v10, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const-string v1, "checkstate"

    aput-object v1, v4, v9

    .line 65
    new-array v5, v10, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 62
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 66
    .local v0, "listItemAdapter1":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->repeatList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->repeatList:Landroid/widget/ListView;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    return-void

    .line 49
    .end local v0    # "listItemAdapter1":Landroid/widget/SimpleAdapter;
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_2

    .line 51
    const-string v1, "title"

    const-string v3, "Loop: Never"

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->isCheck:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "checkstate"

    const v3, 0x7f02013d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 52
    :cond_2
    if-ne v7, v9, :cond_3

    .line 53
    const-string v1, "title"

    const-string v3, "Cycle: infinite"

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 55
    :cond_3
    const-string v1, "title"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loop:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 65
    nop

    :array_0
    .array-data 4
        0x7f070168
        0x7f070169
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->finish()V

    .line 93
    :cond_0
    return v2
.end method
