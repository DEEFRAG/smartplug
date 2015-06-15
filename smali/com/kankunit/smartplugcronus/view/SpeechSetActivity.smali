.class public Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "SpeechSetActivity.java"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private datast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private speech_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->getData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->datast:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->datast:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->speech_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private getData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->getAllScene(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "scenes":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneModel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/kankunit/smartplugcronus/model/SpeechModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/SpeechModel;-><init>()V

    .line 86
    .local v3, "speech":Lcom/kankunit/smartplugcronus/model/SpeechModel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 101
    return-object v0

    .line 87
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/SpeechDao;->getSpeechByrelationId(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/SpeechModel;

    move-result-object v3

    .line 89
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SpeechModel;->getSpeechName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 90
    const-string v4, ""

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SpeechModel;->getSpeechName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    :cond_1
    new-instance v3, Lcom/kankunit/smartplugcronus/model/SpeechModel;

    .end local v3    # "speech":Lcom/kankunit/smartplugcronus/model/SpeechModel;
    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/SpeechModel;-><init>()V

    .line 92
    .restart local v3    # "speech":Lcom/kankunit/smartplugcronus/model/SpeechModel;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/SpeechModel;->setRelationId(Ljava/lang/String;)V

    .line 93
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/SpeechModel;->setSpeechName(Ljava/lang/String;)V

    .line 94
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/SpeechModel;->setSpeechType(Ljava/lang/String;)V

    .line 95
    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/SpeechDao;->saveSpeech(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/SpeechModel;)V

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 98
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SpeechModel;->getSpeechName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    return-void
.end method

.method public initHongMiHeader()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const v0, 0x7f0300dc

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f070374

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->speech_list:Landroid/widget/ListView;

    .line 43
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->getData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->datast:Ljava/util/List;

    .line 44
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 45
    const v1, 0x1090006

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->datast:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 44
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->speech_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->speech_list:Landroid/widget/ListView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 79
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SpeechSetActivity;->finish()V

    .line 36
    :cond_0
    return v2
.end method
