.class public Lcom/kankunit/smartplugcronus/fragment/SceneFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "SceneFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;,
        Lcom/kankunit/smartplugcronus/fragment/SceneFragment$DoSceneThread;
    }
.end annotation


# instance fields
.field private addDeviceWinBg:Landroid/widget/RelativeLayout;

.field private canLongClick:Z

.field private condition:Ljava/util/concurrent/locks/Condition;

.field private currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

.field private dataSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deleteHasLinkageLength:I

.field private detailModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/SceneDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field private doIndex:I

.field private getBackLength:I

.field private handler:Landroid/os/Handler;

.field private id:I

.field private isFragmengOpen:Z

.field private isMsgPannelShowing:Z

.field private iscancel:Z

.field private linkageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private linkageid:I

.field private lock:Ljava/util/concurrent/locks/Lock;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private msgBtn:Landroid/widget/ImageButton;

.field private msgDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private msgListView:Landroid/widget/ListView;

.field private msgVBar:Landroid/widget/RelativeLayout;

.field private msgbg:Landroid/widget/RelativeLayout;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private parentRL:Landroid/widget/RelativeLayout;

.field private rootView:Landroid/view/View;

.field private sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

.field private scenelistener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

.field private sfa:Landroid/content/Context;

.field private shadeLL:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 94
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->isMsgPannelShowing:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->msgDataList:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 116
    iput v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->doIndex:I

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->isFragmengOpen:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->iscancel:Z

    return v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->iscancel:Z

    return-void
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Lcom/kankunit/smartplugcronus/model/SceneDetailModel;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    return-void
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->condition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/customview/SceneGridView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Ljava/util/concurrent/locks/Lock;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic access$20(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initAfterDelete()V

    return-void
.end method

.method static synthetic access$21(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->updateData(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->doIndex:I

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->detailModels:Ljava/util/List;

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->detailModels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->doIndex:I

    return v0
.end method

.method private initAfterDelete()V
    .locals 2

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initGridInfo()V

    .line 338
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    .line 339
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;-><init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 370
    return-void
.end method

.method private initGridInfo()V
    .locals 3

    .prologue
    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->canLongClick:Z

    .line 124
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->loadData()V

    .line 125
    new-instance v0, Lcom/kankunit/smartplugcronus/adapter/SceneGridAdapter;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    .line 125
    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/adapter/SceneGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 127
    .local v0, "mDragAdapter":Lcom/kankunit/smartplugcronus/adapter/SceneGridAdapter;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 141
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;)V

    .line 142
    .local v0, "baseReceiver":Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "ikonke.basebroadcast"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->rootView:Landroid/view/View;

    const v4, 0x7f070247

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->msgVBar:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->rootView:Landroid/view/View;

    const v4, 0x7f070246

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->msgListView:Landroid/widget/ListView;

    .line 148
    new-instance v2, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->msgDataList:Ljava/util/List;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->msgListView:Landroid/widget/ListView;

    invoke-direct {v2, v3, v4, v5}, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V

    .line 149
    .local v2, "ma":Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->msgListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->rootView:Landroid/view/View;

    .line 152
    const v4, 0x7f07024a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    .line 151
    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    .line 153
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initGridInfo()V

    .line 154
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setNumColumns(I)V

    .line 155
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$1;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 189
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    .line 190
    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 228
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->rootView:Landroid/view/View;

    const v4, 0x7f070245

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->msgbg:Landroid/widget/RelativeLayout;

    .line 229
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->rootView:Landroid/view/View;

    const v4, 0x7f070248

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->msgBtn:Landroid/widget/ImageButton;

    .line 230
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->msgBtn:Landroid/widget/ImageButton;

    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$3;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method private updateData(ILjava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "isselected"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 283
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    const-string v2, "isselected"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 286
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/adapter/SceneGridAdapter;

    .line 287
    .local v1, "sga":Lcom/kankunit/smartplugcronus/adapter/SceneGridAdapter;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/SceneGridAdapter;->notifyDataSetChanged()V

    .line 288
    return-void
.end method


# virtual methods
.method public changeGridDeleteable()Z
    .locals 27

    .prologue
    .line 373
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->canLongClick:Z

    .line 374
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDeleteable()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 375
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    .line 376
    .local v16, "itemCount":I
    const/4 v13, 0x0

    .line 377
    .local v13, "deleteLength":I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->deleteHasLinkageLength:I

    .line 378
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getBackLength:I

    .line 379
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setDeleteable(Z)V

    .line 380
    const/4 v13, 0x0

    .line 381
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0249

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "loading"

    .line 383
    const v9, 0x9c40

    new-instance v10, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$6;-><init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V

    .line 381
    invoke-static {v6, v7, v8, v9, v10}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 393
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v16

    if-lt v14, v0, :cond_2

    .line 475
    if-nez v13, :cond_0

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initAfterDelete()V

    .line 478
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->deleteHasLinkageLength:I

    if-nez v6, :cond_1

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initAfterDelete()V

    .line 480
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v6, :cond_1

    .line 481
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 506
    .end local v13    # "deleteLength":I
    .end local v14    # "i":I
    .end local v16    # "itemCount":I
    :cond_1
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 394
    .restart local v13    # "deleteLength":I
    .restart local v14    # "i":I
    .restart local v16    # "itemCount":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->linkageMap:Ljava/util/Map;

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->linkageMap:Ljava/util/Map;

    const-string v8, "id"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->id:I

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->linkageMap:Ljava/util/Map;

    const-string v8, "isselected"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, "isselected":Ljava/lang/String;
    if-eqz v15, :cond_4

    const-string v6, "1"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 398
    add-int/lit8 v13, v13, 0x1

    .line 400
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sceneId=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v20

    .line 401
    .local v20, "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    if-eqz v20, :cond_9

    .line 402
    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getId()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->linkageid:I

    .line 403
    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v21

    .line 404
    .local v21, "linkageNum":Ljava/lang/String;
    const-string v17, ""

    .line 405
    .local v17, "linkageChange":Ljava/lang/String;
    new-instance v22, Lcom/kankunit/smartplugcronus/util/LinkageUtil;

    invoke-direct/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;-><init>()V

    .line 406
    .local v22, "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    new-instance v2, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;-><init>()V

    .line 408
    .local v2, "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "linkageId=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getSceneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 408
    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 410
    .local v18, "linkageDetails":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_5

    .line 411
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->id:I

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->deleteSceneById(Landroid/content/Context;I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/SpeechDao;->deleteSpeechByRelationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    .end local v2    # "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .end local v17    # "linkageChange":Ljava/lang/String;
    .end local v18    # "linkageDetails":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v20    # "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .end local v21    # "linkageNum":Ljava/lang/String;
    .end local v22    # "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 414
    .restart local v2    # "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .restart local v17    # "linkageChange":Ljava/lang/String;
    .restart local v18    # "linkageDetails":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .restart local v20    # "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .restart local v21    # "linkageNum":Ljava/lang/String;
    .restart local v22    # "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    :cond_5
    const/16 v19, 0x0

    .line 415
    .local v19, "linkageIndex":I
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    .line 414
    move/from16 v0, v19

    if-lt v0, v6, :cond_6

    .line 431
    const-string v6, ""

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 433
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    .line 434
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "linkageId=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getSceneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 436
    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 434
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 432
    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->deleteLinkageDetail(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sceneId=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getSceneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 437
    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->deleteLinkage(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->id:I

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->deleteSceneById(Landroid/content/Context;I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/SpeechDao;->deleteSpeechByRelationId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 417
    :cond_6
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 418
    .local v12, "LinkageDetailModel":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTrignum(Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)Ljava/lang/String;

    move-result-object v6

    .line 419
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 420
    .local v26, "trignums":[Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "trignumIndex":I
    :goto_4
    move-object/from16 v0, v26

    array-length v6, v0

    move/from16 v0, v25

    if-lt v0, v6, :cond_7

    .line 415
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 421
    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)Ljava/lang/String;

    move-result-object v23

    .line 423
    .local v23, "mac":Ljava/lang/String;
    aget-object v3, v26, v25

    const-string v4, "none"

    .line 424
    const-string v5, "none"

    const-string v6, "none"

    const-string v7, "unset"

    .line 422
    invoke-static/range {v2 .. v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v2

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 428
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v7

    .line 427
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 425
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 420
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 444
    .end local v12    # "LinkageDetailModel":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    .end local v23    # "mac":Ljava/lang/String;
    .end local v25    # "trignumIndex":I
    .end local v26    # "trignums":[Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 445
    .local v24, "phoneMac":Ljava/lang/String;
    const-string v6, ":"

    const-string v7, "-"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 446
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 447
    move-object/from16 v0, p0

    iget v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->deleteHasLinkageLength:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->deleteHasLinkageLength:I

    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 449
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 450
    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 451
    const-string v7, "%%linkage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 448
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "cmd":Ljava/lang/String;
    const-string v5, "@deletelinkage.kankun-smartplug.com"

    .line 454
    .local v5, "userJID":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 455
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;

    const/4 v9, 0x0

    .line 456
    const-string v10, "deletelinkage"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 454
    invoke-direct/range {v3 .. v11}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 457
    .local v3, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_2

    .line 469
    .end local v2    # "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .end local v3    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "userJID":Ljava/lang/String;
    .end local v17    # "linkageChange":Ljava/lang/String;
    .end local v18    # "linkageDetails":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v19    # "linkageIndex":I
    .end local v21    # "linkageNum":Ljava/lang/String;
    .end local v22    # "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    .end local v24    # "phoneMac":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->id:I

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->deleteSceneById(Landroid/content/Context;I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/SpeechDao;->deleteSpeechByRelationId(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 485
    .end local v13    # "deleteLength":I
    .end local v14    # "i":I
    .end local v15    # "isselected":Ljava/lang/String;
    .end local v16    # "itemCount":I
    .end local v20    # "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setDeleteable(Z)V

    .line 486
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    .line 487
    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$7;-><init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V

    invoke-virtual {v6, v7}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1
.end method

.method public changeGridDragMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 326
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->canLongClick:Z

    .line 327
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDragable:Z

    if-eqz v0, :cond_0

    .line 328
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->canLongClick:Z

    .line 329
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setDragable(Z)V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->setDragable(Z)V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 660
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 661
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 662
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 663
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 673
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 522
    iget v4, p1, Landroid/os/Message;->what:I

    .line 525
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 528
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_0

    .line 529
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 531
    :cond_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    const-string v5, "End of execution"

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 533
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 536
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_2

    .line 537
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 539
    :cond_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    const-string v5, "Execution aborted"

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 571
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->detailModels:Ljava/util/List;

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->doIndex:I

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->detailModels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_4

    .line 572
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 592
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_6

    .line 593
    const-string v4, "fail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 594
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_5

    .line 595
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 597
    :cond_5
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    .line 598
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0238

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 597
    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 599
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 622
    :cond_6
    :goto_0
    return v8

    .line 602
    :cond_7
    iget v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getBackLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getBackLength:I

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "backMsg":Ljava/lang/String;
    const-string v4, "%%"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, v9

    .line 605
    .local v1, "linkageNum":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "linkageNum=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 605
    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    .line 607
    .local v2, "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getSceneId()Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "sceneid":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "linkageId=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 610
    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->deleteLinkageDetail(Landroid/content/Context;Ljava/lang/String;)V

    .line 612
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sceneId=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->deleteLinkage(Landroid/content/Context;Ljava/lang/String;)V

    .line 613
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->deleteSceneById(Landroid/content/Context;I)V

    .line 614
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/SpeechDao;->deleteSpeechByRelationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initAfterDelete()V

    .line 616
    iget v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getBackLength:I

    iget v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->deleteHasLinkageLength:I

    if-ne v4, v5, :cond_6

    .line 617
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_6

    .line 618
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto/16 :goto_0
.end method

.method public loadData()V
    .locals 9

    .prologue
    const v8, 0x7f020297

    .line 247
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 248
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 250
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v1, "itemHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "item_image"

    const v6, 0x7f020292

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v5, "item_text"

    const-string v6, "Add"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v5, "id"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->getAllScene(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 256
    .local v4, "sceneModelList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneModel;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 279
    return-void

    .line 256
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 257
    .local v3, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneImage()I

    move-result v0

    .line 259
    .local v0, "index":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 260
    const-string v6, "item_image"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :goto_1
    const-string v6, "item_text"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v6, "id"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v6, "status"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v6, "count"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v6, "isselected"

    const-string v7, "0"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 262
    const-string v6, "item_image"

    const v7, 0x7f020375

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 263
    :cond_3
    const/4 v6, 0x3

    if-ne v0, v6, :cond_4

    .line 264
    const-string v6, "item_image"

    const v7, 0x7f020379

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    :cond_4
    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 266
    const-string v6, "item_image"

    const v7, 0x7f02037d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 267
    :cond_5
    const/4 v6, 0x5

    if-ne v0, v6, :cond_6

    .line 268
    const-string v6, "item_image"

    const v7, 0x7f020381

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 270
    :cond_6
    const-string v6, "item_image"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 323
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->canLongClick:Z

    .line 296
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 298
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$4;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->scenelistener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

    .line 307
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->scenelistener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->registerListener(Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;)V

    .line 309
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->db:Lnet/tsz/afinal/FinalDb;

    .line 310
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;

    .line 311
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    .line 312
    const v0, 0x7f0300cd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->rootView:Landroid/view/View;

    .line 313
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->parentRL:Landroid/widget/RelativeLayout;

    .line 314
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 315
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initView()V

    .line 316
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1092
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    const/4 v0, 0x1

    const/high16 v2, 0x43160000    # 150.0f

    .line 1050
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    iget-boolean v1, v1, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDragable:Z

    if-eqz v1, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return v0

    .line 1053
    :cond_1
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->canLongClick:Z

    if-eqz v1, :cond_0

    .line 1056
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 1060
    sget-object v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 1062
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1068
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 628
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msgBody"

    const-string v2, "resetbtn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v1, "ikonke.basebroadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 631
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initGridInfo()V

    .line 632
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onResume()V

    .line 633
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1081
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->isFragmengOpen:Z

    .line 133
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onStart()V

    .line 134
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->isFragmengOpen:Z

    .line 138
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onStop()V

    .line 139
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "backMsg":Ljava/lang/String;
    const-string v2, "linkage_ack"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v2, :cond_0

    .line 680
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 682
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 683
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x16

    iput v2, v1, Landroid/os/Message;->what:I

    .line 684
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 685
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 687
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 668
    return-void
.end method
