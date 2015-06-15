.class public Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "SceneControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;
    }
.end annotation


# instance fields
.field private accelerationVal:I

.field private condition:Ljava/util/concurrent/locks/Condition;

.field private currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

.field private currentThread:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private delete_cbo:Landroid/widget/CheckBox;

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

.field private devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

.field private handler:Landroid/os/Handler;

.field private hasTemp1:Z

.field private hasTemp2:Z

.field private hasTemp3:Z

.field private hasTemp4:Z

.field private hasTemp5:Z

.field private hasTemp6:Z

.field private hasTemp7:Z

.field private isActivityOpen:Z

.field private isDoFlag:[Z

.field private isModelNull:Z

.field private isTouchDown:Z

.field private isVal1CboCheck:Z

.field private isVal2CboCheck:Z

.field private isValDeleteCboCheck:Z

.field private iscancel:Z

.field private ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

.field private limStr:[Ljava/lang/String;

.field private linkageClickFlag:I

.field private linkageMac:Ljava/lang/String;

.field private linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

.field private linkagePop:Landroid/widget/PopupWindow;

.field private linkagePwd:Ljava/lang/String;

.field private linkage_cancel:Landroid/widget/TextView;

.field private linkage_cancel_layout:Landroid/widget/RelativeLayout;

.field private linkage_delete_title:Landroid/widget/TextView;

.field private linkage_ok:Landroid/widget/TextView;

.field private linkage_ok_layout:Landroid/widget/RelativeLayout;

.field private linkage_title:Landroid/widget/TextView;

.field private linkage_val1_text:Landroid/widget/TextView;

.field private linkage_val1_title:Landroid/widget/TextView;

.field private linkage_val2_text:Landroid/widget/TextView;

.field private linkage_val2_title:Landroid/widget/TextView;

.field private listItemAdapter_task:Lcom/kankunit/smartplugcronus/adapter/SceneControlAdapter;

.field private listItem_task:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/Lock;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private openButton:Landroid/widget/ImageButton;

.field private openButtonClickListener:Landroid/view/View$OnClickListener;

.field pop:Landroid/widget/PopupWindow;

.field private rootView:Landroid/view/View;

.field private sceneBgLayout:Landroid/widget/RelativeLayout;

.field private sceneId:I

.field private sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

.field private sceneTaskCount:Landroid/widget/TextView;

.field private scene_canadd_layout2:Landroid/widget/LinearLayout;

.field private scene_control_beam:Landroid/widget/Button;

.field private scene_control_beamClick:Landroid/view/View$OnClickListener;

.field private scene_control_beam_text:Landroid/widget/TextView;

.field private scene_control_body:Landroid/widget/Button;

.field private scene_control_bodyClick:Landroid/view/View$OnClickListener;

.field private scene_control_body_text:Landroid/widget/TextView;

.field private scene_control_clock:Landroid/widget/Button;

.field private scene_control_clockClick:Landroid/view/View$OnClickListener;

.field private scene_control_clock_text:Landroid/widget/TextView;

.field private scene_control_humidity:Landroid/widget/Button;

.field private scene_control_humidityClick:Landroid/view/View$OnClickListener;

.field private scene_control_humidity_text:Landroid/widget/TextView;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_editClick:Landroid/view/View$OnClickListener;

.field private scene_control_menu_update:Landroid/widget/TextView;

.field private scene_control_menu_updateClick:Landroid/view/View$OnClickListener;

.field private scene_control_temperature:Landroid/widget/Button;

.field private scene_control_temperatureClick:Landroid/view/View$OnClickListener;

.field private scene_control_temperature_text:Landroid/widget/TextView;

.field private scene_do_list:Landroid/widget/ListView;

.field private scene_linkage_close:Landroid/widget/LinearLayout;

.field private scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private tempNum1:I

.field private tempNum2:I

.field timerset_mainbg:Landroid/widget/LinearLayout;

.field private val1_addbtn:Landroid/widget/ImageButton;

.field private val1_cbo:Landroid/widget/CheckBox;

.field private val1_subbtn:Landroid/widget/ImageButton;

.field private val2_addbtn:Landroid/widget/ImageButton;

.field private val2_cbo:Landroid/widget/CheckBox;

.field private val2_subbtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 132
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    .line 151
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->iscancel:Z

    .line 172
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->accelerationVal:I

    .line 177
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Level 1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Level 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Level 3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Level 4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Level 5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->limStr:[Ljava/lang/String;

    .line 181
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    .line 182
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    .line 183
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    .line 184
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    .line 185
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp5:Z

    .line 186
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp6:Z

    .line 187
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp7:Z

    .line 1657
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_editClick:Landroid/view/View$OnClickListener;

    .line 1678
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_updateClick:Landroid/view/View$OnClickListener;

    .line 1703
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->openButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1776
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clockClick:Landroid/view/View$OnClickListener;

    .line 1805
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_bodyClick:Landroid/view/View$OnClickListener;

    .line 1910
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$6;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperatureClick:Landroid/view/View$OnClickListener;

    .line 2021
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$7;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidityClick:Landroid/view/View$OnClickListener;

    .line 2122
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$8;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beamClick:Landroid/view/View$OnClickListener;

    .line 104
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    return v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    return-void
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    return-void
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    return-void
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    return-void
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;[Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    return-void
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    return-object v0
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    return-void
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->iscancel:Z

    return-void
.end method

.method static synthetic access$20(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    return-void
.end method

.method static synthetic access$21(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1338
    invoke-direct {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showLinkagePop(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->iscancel:Z

    return v0
.end method

.method static synthetic access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    return-object v0
.end method

.method static synthetic access$24(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/SceneDetailModel;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    return-void
.end method

.method static synthetic access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$26(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$27(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$28(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    return-object v0
.end method

.method static synthetic access$29(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_close:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentThread:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;

    return-object v0
.end method

.method static synthetic access$30(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$31(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$32(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$33(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$34(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$35(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-object v0
.end method

.method static synthetic access$37(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    return-object v0
.end method

.method static synthetic access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    return-object v0
.end method

.method static synthetic access$39(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->openButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$40(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$41(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$43(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$44(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    return v0
.end method

.method static synthetic access$45(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    return v0
.end method

.method static synthetic access$46(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    return-void
.end method

.method static synthetic access$47(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$48(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->limStr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$49(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$50(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    return-void
.end method

.method static synthetic access$51(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$52(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$53(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneModel;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    return-object v0
.end method

.method static synthetic access$54(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showTimerActivity(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$55(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    return-void
.end method

.method static synthetic access$56(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    return-void
.end method

.method static synthetic access$57(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    return-void
.end method

.method static synthetic access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    return-object v0
.end method

.method static synthetic access$59(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V
    .locals 0

    .prologue
    .line 3766
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageBody(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$60(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isTouchDown:Z

    return v0
.end method

.method static synthetic access$61(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->accelerationVal:I

    return v0
.end method

.method static synthetic access$62(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->accelerationVal:I

    return-void
.end method

.method static synthetic access$63(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentThread:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)Z
    .locals 1

    .prologue
    .line 1747
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->canSet(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/util/List;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0

    .prologue
    .line 1048
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showTimer(Ljava/util/List;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    return-void
.end method

.method private canSet(I)Z
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1751
    const/4 v0, 0x0

    .line 1752
    .local v0, "doLength":I
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 1753
    add-int/lit8 v0, v0, 0x1

    .line 1755
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    .line 1756
    add-int/lit8 v0, v0, 0x1

    .line 1758
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_2

    .line 1759
    add-int/lit8 v0, v0, 0x1

    .line 1761
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    .line 1762
    add-int/lit8 v0, v0, 0x1

    .line 1764
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    const/4 v4, 0x4

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_4

    .line 1765
    add-int/lit8 v0, v0, 0x1

    .line 1767
    :cond_4
    if-ge v0, v5, :cond_6

    .line 1773
    :cond_5
    :goto_0
    return v1

    .line 1770
    :cond_6
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_5

    move v1, v2

    .line 1773
    goto :goto_0
.end method

.method private doBack(Ljava/lang/String;)V
    .locals 7
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x849

    const/16 v4, 0x457

    const/4 v5, 0x2

    .line 2834
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isActivityOpen:Z

    if-nez v3, :cond_0

    .line 2888
    :goto_0
    return-void

    .line 2837
    :cond_0
    const-string v3, "fail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2838
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2839
    .local v2, "m":Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->what:I

    .line 2840
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2843
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    const-string v3, "linkage_ack"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2844
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_2

    .line 2845
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 2847
    :cond_2
    const-string v3, "repeat_linkagenum"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2848
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2849
    .restart local v2    # "m":Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->what:I

    .line 2850
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2854
    .end local v2    # "m":Landroid/os/Message;
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    .line 2855
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    if-eqz v3, :cond_4

    .line 2856
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v4, "isDo"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setIsDo(Ljava/lang/String;)V

    .line 2857
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2858
    .restart local v2    # "m":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 2859
    const-string v3, "isDo"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2860
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2861
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->saveLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 2862
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->saveLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    goto :goto_0

    .line 2865
    .end local v2    # "m":Landroid/os/Message;
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 2864
    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 2866
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    goto :goto_0

    .line 2870
    :cond_5
    const-string v3, "linkage_isdo_ack"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2871
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_6

    .line 2872
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 2875
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sceneId=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2874
    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v1

    .line 2876
    .local v1, "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    const-string v3, "%"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setIsDo(Ljava/lang/String;)V

    .line 2877
    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 2878
    const-string v3, "%"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v5

    .line 2879
    .local v0, "isDo":Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2880
    .restart local v2    # "m":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 2881
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2882
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2884
    .end local v0    # "isDo":Ljava/lang/String;
    .end local v1    # "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .end local v2    # "m":Landroid/os/Message;
    :cond_7
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2885
    .restart local v2    # "m":Landroid/os/Message;
    const/16 v3, 0x6f

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 2886
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private doClick(ILjava/lang/String;)V
    .locals 10
    .param p1, "clickFlag"    # I
    .param p2, "plugName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2704
    iput-boolean v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    .line 2705
    iput-boolean v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    .line 2706
    iput-boolean v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    .line 2707
    iput-boolean v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    .line 2708
    invoke-static {p0, p2}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->getDeviceByPlugName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2710
    .local v6, "plugs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 2711
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v3, v8, [Ljava/lang/String;

    .line 2712
    .local v3, "deviceName":[Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 2713
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 2722
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2723
    .local v7, "strs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    array-length v8, v8

    if-lt v4, v8, :cond_3

    .line 2729
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 2728
    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 2730
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    array-length v8, v8

    if-ge v8, v9, :cond_5

    .line 2731
    :cond_0
    const-string v8, "Found no related plugins"

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 2732
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 2733
    invoke-direct {p0, v9}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    .line 2825
    .end local v3    # "deviceName":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "strs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :goto_2
    return-void

    .line 2714
    .restart local v3    # "deviceName":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_1
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->getMac()Ljava/lang/String;

    move-result-object v5

    .line 2715
    .local v5, "mac":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    .line 2717
    .local v2, "device":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v2, :cond_2

    .line 2718
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aput-object v2, v8, v4

    .line 2719
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    .line 2713
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2724
    .end local v2    # "device":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v5    # "mac":Ljava/lang/String;
    .restart local v7    # "strs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_3
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aget-object v8, v8, v4

    if-eqz v8, :cond_4

    .line 2725
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    aget-object v8, v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2723
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2736
    :cond_5
    new-instance v1, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;-><init>()V

    .line 2737
    .local v1, "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;

    invoke-direct {v0, p0, v1, p1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;I)V

    .line 2817
    .local v0, "btnListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v8, "Select equipment"

    invoke-static {p0, v8, v3, v0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getBuilder(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V

    goto :goto_2

    .line 2820
    .end local v0    # "btnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    .end local v3    # "deviceName":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "strs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_6
    const-string v8, "Found no related plugins"

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 2821
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 2822
    invoke-direct {p0, v9}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto :goto_2
.end method

.method private getTimer(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "timeStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1040
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v6

    .line 1041
    .local v3, "month":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v0, v4, v5

    .line 1042
    .local v0, "day":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 1043
    .local v1, "hour":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    .line 1044
    .local v2, "min":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initData()V
    .locals 15

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "sceneId"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    .line 810
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v12, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-class v13, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v11, v12, v13}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/SceneModel;

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 811
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneImage()I

    move-result v5

    .line 812
    .local v5, "index":I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_2

    .line 813
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneBgLayout:Landroid/widget/RelativeLayout;

    .line 814
    const v12, 0x7f020397

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 827
    :goto_0
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneTaskCount:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v11

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 830
    const v11, 0x7f070077

    invoke-virtual {p0, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 831
    .local v4, "hongmi_header_title":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 832
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    :cond_0
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v12, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "sceneId="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 836
    iget v14, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 835
    invoke-virtual {v11, v12, v13}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;

    .line 837
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getStatus()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 838
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 843
    :cond_1
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    .line 844
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->listItem_task:Ljava/util/ArrayList;

    .line 845
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_8

    .line 885
    new-instance v11, Lcom/kankunit/smartplugcronus/adapter/SceneControlAdapter;

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->listItem_task:Ljava/util/ArrayList;

    invoke-direct {v11, p0, v12}, Lcom/kankunit/smartplugcronus/adapter/SceneControlAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->listItemAdapter_task:Lcom/kankunit/smartplugcronus/adapter/SceneControlAdapter;

    .line 886
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_do_list:Landroid/widget/ListView;

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->listItemAdapter_task:Lcom/kankunit/smartplugcronus/adapter/SceneControlAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 887
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->setLvHeight()V

    .line 888
    const v11, 0x7f07005f

    invoke-virtual {p0, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ScrollView;

    .line 889
    .local v10, "scene_control_scroll":Landroid/widget/ScrollView;
    const/4 v11, 0x0

    const/16 v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 890
    return-void

    .line 815
    .end local v4    # "hongmi_header_title":Landroid/widget/TextView;
    .end local v10    # "scene_control_scroll":Landroid/widget/ScrollView;
    :cond_2
    const/4 v11, 0x2

    if-ne v5, v11, :cond_3

    .line 816
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneBgLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f020374

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 817
    :cond_3
    const/4 v11, 0x3

    if-ne v5, v11, :cond_4

    .line 818
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneBgLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f020378

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 819
    :cond_4
    const/4 v11, 0x4

    if-ne v5, v11, :cond_5

    .line 820
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneBgLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f02037c

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 821
    :cond_5
    const/4 v11, 0x5

    if-ne v5, v11, :cond_6

    .line 822
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneBgLayout:Landroid/widget/RelativeLayout;

    const v12, 0x7f020380

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 824
    :cond_6
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneBgLayout:Landroid/widget/RelativeLayout;

    .line 825
    const v12, 0x7f020397

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 838
    .restart local v4    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 839
    .local v2, "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 840
    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v12, v2}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 845
    .end local v2    # "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 846
    .local v7, "model":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 847
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "scene_do_title"

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v8

    .line 849
    .local v8, "modelType":I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_9

    .line 850
    const-string v12, "scene_do_state"

    const-string v13, ""

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    :goto_3
    const-string v12, "status"

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getDetailStatus()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->listItem_task:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 851
    :cond_9
    const/4 v12, 0x6

    if-eq v8, v12, :cond_a

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_a

    .line 852
    const/16 v12, 0xa

    if-eq v8, v12, :cond_a

    const/16 v12, 0xb

    if-eq v8, v12, :cond_a

    const/4 v12, 0x5

    if-eq v8, v12, :cond_a

    .line 853
    const/4 v12, 0x7

    if-eq v8, v12, :cond_a

    const/16 v12, 0x8

    if-eq v8, v12, :cond_a

    const/16 v12, 0x9

    if-eq v8, v12, :cond_a

    .line 854
    const/16 v12, 0xc

    if-eq v8, v12, :cond_a

    const/16 v12, 0xd

    if-ne v8, v12, :cond_c

    .line 855
    :cond_a
    const-string v12, "scene_do_state"

    const-string v13, ""

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v9

    .line 857
    .local v9, "remoteControlId":I
    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 858
    const-class v14, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 857
    invoke-virtual {v12, v13, v14}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 859
    .local v0, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-eqz v0, :cond_b

    .line 860
    const-string v12, "scene_do_title"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 861
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 860
    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 863
    :cond_b
    const-string v12, "scene_do_title"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Remote control (deleted) "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 867
    .end local v0    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v9    # "remoteControlId":I
    :cond_c
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v12

    .line 866
    invoke-static {p0, v12}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    .line 868
    .local v3, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v3, :cond_e

    .line 869
    const-string v1, "Open"

    .line 870
    .local v1, "dString":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 871
    const-string v1, "Turn off"

    .line 877
    :cond_d
    :goto_4
    const-string v12, "scene_do_title"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 878
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 877
    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .end local v1    # "dString":Ljava/lang/String;
    :cond_e
    const-string v12, "scene_do_state"

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 872
    .restart local v1    # "dString":Ljava/lang/String;
    :cond_f
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_10

    .line 873
    const-string v1, "Nightlight On"

    .line 874
    goto :goto_4

    :cond_10
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_d

    .line 875
    const-string v1, "Nightlight Off"

    goto :goto_4
.end method

.method private initLinkage(Z)V
    .locals 8
    .param p1, "isInit"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 784
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 787
    :cond_0
    if-eqz p1, :cond_1

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "sceneId=\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 791
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v1, :cond_2

    .line 792
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "y"

    .line 793
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 792
    :goto_0
    aput-boolean v1, v4, v3

    .line 794
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "y"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 794
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 795
    if-eqz v1, :cond_4

    move v1, v2

    .line 794
    :goto_1
    aput-boolean v1, v4, v2

    .line 796
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTemp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "y"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTemp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 796
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 797
    if-eqz v1, :cond_5

    move v1, v2

    .line 796
    :goto_2
    aput-boolean v1, v4, v5

    .line 798
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasHum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "y"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasHum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 798
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 799
    if-eqz v1, :cond_6

    move v1, v2

    .line 798
    :goto_3
    aput-boolean v1, v4, v5

    .line 800
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasLum()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v5, "y"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasLum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 800
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 801
    if-eqz v5, :cond_7

    .line 800
    :goto_4
    aput-boolean v2, v1, v4

    .line 803
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 804
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x7a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 805
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 806
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    move v1, v3

    .line 793
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 795
    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 797
    goto :goto_2

    :cond_6
    move v1, v3

    .line 799
    goto :goto_3

    :cond_7
    move v2, v3

    .line 801
    goto :goto_4
.end method

.method private initPop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 564
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 565
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030092

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 566
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupWindow;

    .line 567
    const/4 v3, 0x0

    invoke-direct {v2, v1, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 566
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    .line 568
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 570
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 571
    const v2, 0x7f07003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_title:Landroid/widget/TextView;

    .line 572
    const v2, 0x7f070272

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_title:Landroid/widget/TextView;

    .line 573
    const v2, 0x7f070278

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_title:Landroid/widget/TextView;

    .line 574
    const v2, 0x7f07027e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_delete_title:Landroid/widget/TextView;

    .line 575
    const v2, 0x7f070275

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    .line 576
    const v2, 0x7f07027b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    .line 577
    const v2, 0x7f0701e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_cancel:Landroid/widget/TextView;

    .line 578
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_cancel:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    const v2, 0x7f07013e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_ok:Landroid/widget/TextView;

    .line 580
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_ok:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    const v2, 0x7f070280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 581
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_cancel_layout:Landroid/widget/RelativeLayout;

    .line 583
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_cancel_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    const v2, 0x7f070282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_ok_layout:Landroid/widget/RelativeLayout;

    .line 585
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_ok_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    const v2, 0x7f070277

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    .line 587
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    const v2, 0x7f07027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    .line 589
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    const v2, 0x7f07027f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->delete_cbo:Landroid/widget/CheckBox;

    .line 591
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->delete_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    const v2, 0x7f070274

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_subbtn:Landroid/widget/ImageButton;

    .line 593
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_subbtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 594
    const v2, 0x7f070276

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_addbtn:Landroid/widget/ImageButton;

    .line 595
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_addbtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 596
    const v2, 0x7f07027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_subbtn:Landroid/widget/ImageButton;

    .line 597
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_subbtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 598
    const v2, 0x7f07027c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_subbtn:Landroid/widget/ImageButton;

    .line 599
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_subbtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 600
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 603
    const v0, 0x7f070349

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->openButton:Landroid/widget/ImageButton;

    .line 604
    const v0, 0x7f070176

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->timerset_mainbg:Landroid/widget/LinearLayout;

    .line 605
    const v0, 0x7f07035b

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_do_list:Landroid/widget/ListView;

    .line 606
    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 607
    const v0, 0x7f07034e

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock:Landroid/widget/Button;

    .line 608
    const v0, 0x7f070350

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body:Landroid/widget/Button;

    .line 609
    const v0, 0x7f070352

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature:Landroid/widget/Button;

    .line 610
    const v0, 0x7f070354

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity:Landroid/widget/Button;

    .line 611
    const v0, 0x7f070356

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam:Landroid/widget/Button;

    .line 612
    const v0, 0x7f07034f

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock_text:Landroid/widget/TextView;

    .line 613
    const v0, 0x7f070351

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body_text:Landroid/widget/TextView;

    .line 614
    const v0, 0x7f070353

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature_text:Landroid/widget/TextView;

    .line 615
    const v0, 0x7f070355

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity_text:Landroid/widget/TextView;

    .line 616
    const v0, 0x7f070357

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam_text:Landroid/widget/TextView;

    .line 617
    const v0, 0x7f070359

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneTaskCount:Landroid/widget/TextView;

    .line 618
    const v0, 0x7f070348

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneBgLayout:Landroid/widget/RelativeLayout;

    .line 619
    const v0, 0x7f07034c

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 620
    const v0, 0x7f07034d

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_canadd_layout2:Landroid/widget/LinearLayout;

    .line 621
    const v0, 0x7f070358

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_close:Landroid/widget/LinearLayout;

    .line 623
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 672
    const v0, 0x7f07035a

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 674
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 781
    return-void
.end method

.method private saveLinkageBody(Z)V
    .locals 15
    .param p1, "isset"    # Z

    .prologue
    .line 3767
    new-instance v0, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;-><init>()V

    .line 3768
    .local v0, "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    const-string v12, ""

    .line 3769
    .local v12, "linkageNum":Ljava/lang/String;
    new-instance v13, Lcom/kankunit/smartplugcronus/util/LinkageUtil;

    invoke-direct {v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;-><init>()V

    .line 3770
    .local v13, "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    const-string v11, ""

    .line 3771
    .local v11, "linkageChange":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3772
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3775
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0249

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "loading"

    .line 3776
    const/16 v6, 0x2ee0

    new-instance v7, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$22;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$22;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    .line 3773
    invoke-static {p0, v4, v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 3787
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sceneId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3786
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3788
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v4, :cond_11

    .line 3789
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 3790
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#update"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3793
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "linkageId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3792
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 3797
    .local v10, "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3798
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3806
    :goto_0
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 3807
    if-eqz p1, :cond_6

    .line 3808
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-eqz v4, :cond_4

    .line 3809
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    if-eqz v4, :cond_4

    .line 3810
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-eqz v4, :cond_4

    .line 3811
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasBody()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ""

    .line 3812
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3814
    :cond_1
    const-string v4, "Body sensors trigger conditions has been to the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3813
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3814
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3815
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    .line 3997
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_2
    :goto_1
    return-void

    .line 3800
    .restart local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_3
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3801
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3802
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v5

    .line 3801
    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 3803
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto :goto_0

    .line 3818
    :cond_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3819
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody1(Ljava/lang/String;)V

    .line 3820
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasBody(Ljava/lang/String;)V

    .line 3821
    const-string v1, "9"

    const-string v2, "none"

    .line 3822
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3821
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3824
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3825
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3826
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3825
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3823
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3875
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3876
    const-string v7, ":body"

    .line 3875
    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 3878
    :cond_6
    if-nez p1, :cond_a

    .line 3879
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3880
    const-string v1, "9"

    const-string v2, "none"

    .line 3881
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "unset"

    .line 3880
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3883
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3884
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3885
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3884
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3882
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3887
    :cond_7
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3888
    const-string v1, "10"

    .line 3889
    const-string v2, "none"

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "unset"

    .line 3888
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3891
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3892
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3893
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3892
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3890
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3895
    :cond_8
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3896
    const-string v1, "11"

    .line 3897
    const-string v2, "none"

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "unset"

    .line 3896
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3899
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3900
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3901
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3900
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3898
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3903
    :cond_9
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody1(Ljava/lang/String;)V

    .line 3904
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody2(Ljava/lang/String;)V

    .line 3905
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody3(Ljava/lang/String;)V

    .line 3906
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasBody(Ljava/lang/String;)V

    .line 3907
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ":body"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 3911
    :cond_a
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 3967
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :goto_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 3966
    invoke-virtual {v13, p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getActionCmd(Landroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;

    move-result-object v14

    .line 3968
    .local v14, "sendMsg":Ljava/lang/String;
    const-string v4, "noAuth"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3969
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_b

    .line 3970
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 3972
    :cond_b
    const-string v4, "There are no permissions, linkage cannot be saved"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3827
    .end local v14    # "sendMsg":Ljava/lang/String;
    .restart local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_c
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 3828
    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 3829
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody2(Ljava/lang/String;)V

    .line 3830
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasBody(Ljava/lang/String;)V

    .line 3831
    const-string v1, "10"

    const-string v2, "none"

    .line 3832
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3831
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3833
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3834
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3835
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3836
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3835
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3833
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3837
    goto/16 :goto_2

    :cond_d
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 3838
    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3839
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody3(Ljava/lang/String;)V

    .line 3840
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasBody(Ljava/lang/String;)V

    .line 3841
    const-string v1, "11"

    const-string v2, "none"

    .line 3842
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3841
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3844
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3845
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3846
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3845
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3843
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3847
    goto/16 :goto_2

    :cond_e
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-nez v4, :cond_f

    .line 3848
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody1(Ljava/lang/String;)V

    .line 3849
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasBody(Ljava/lang/String;)V

    .line 3850
    const-string v1, "9"

    const-string v2, "none"

    .line 3851
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3850
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3853
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3854
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3855
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3854
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3852
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3856
    goto/16 :goto_2

    :cond_f
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    if-nez v4, :cond_10

    .line 3857
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody2(Ljava/lang/String;)V

    .line 3858
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasBody(Ljava/lang/String;)V

    .line 3859
    const-string v1, "10"

    const-string v2, "none"

    .line 3860
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3859
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3862
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3863
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3864
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3863
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3861
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3865
    goto/16 :goto_2

    :cond_10
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-nez v4, :cond_5

    .line 3866
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody3(Ljava/lang/String;)V

    .line 3867
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasBody(Ljava/lang/String;)V

    .line 3868
    const-string v1, "11"

    const-string v2, "none"

    .line 3869
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3868
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3870
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3871
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3872
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3873
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3872
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3870
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 3913
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_11
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 3914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#save"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3915
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3916
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3918
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 3919
    if-eqz p1, :cond_14

    .line 3920
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-eqz v4, :cond_12

    .line 3922
    const-string v4, "Body sensors trigger conditions has been to the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3921
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3922
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3923
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3926
    :cond_12
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-nez v4, :cond_15

    .line 3927
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody1(Ljava/lang/String;)V

    .line 3928
    const-string v1, "9"

    const-string v2, "none"

    .line 3929
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3928
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3931
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3932
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3933
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3932
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3930
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3951
    :cond_13
    :goto_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasBody(Ljava/lang/String;)V

    .line 3954
    :cond_14
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3955
    const-string v5, "yyyy-MM-dd HH-mm-ss"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 3954
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 3956
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 3957
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 3958
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-static {v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 3959
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3960
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v5

    .line 3959
    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 3961
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 3962
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    const-string v7, ":body"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 3963
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3934
    :cond_15
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    if-nez v4, :cond_16

    .line 3935
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody2(Ljava/lang/String;)V

    .line 3936
    const-string v1, "10"

    const-string v2, "none"

    .line 3937
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3936
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3938
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3939
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3940
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3941
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3940
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3938
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3942
    goto/16 :goto_4

    :cond_16
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-nez v4, :cond_13

    .line 3943
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody3(Ljava/lang/String;)V

    .line 3944
    const-string v1, "11"

    const-string v2, "none"

    .line 3945
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3944
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3946
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3947
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3948
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3949
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3948
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3946
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 3975
    .restart local v14    # "sendMsg":Ljava/lang/String;
    :cond_17
    const-string v4, "noDevice"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 3976
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_18

    .line 3977
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 3979
    :cond_18
    const-string v4, "Device no longer exists, could not save the linkage"

    .line 3980
    const/4 v5, 0x1

    .line 3979
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3980
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3983
    :cond_19
    const-string v4, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3988
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3989
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%linkage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3988
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3991
    .local v2, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@addlinkage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3992
    const-string v5, "kankun-smartplug.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3991
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3993
    .local v3, "userJID":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 3994
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-string v8, "addlinkage"

    .line 3995
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v4, p0

    .line 3993
    invoke-direct/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 3996
    .local v1, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_1
.end method

.method private saveLinkageHum()V
    .locals 15

    .prologue
    .line 3350
    new-instance v0, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;-><init>()V

    .line 3351
    .local v0, "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    const-string v12, ""

    .line 3352
    .local v12, "linkageNum":Ljava/lang/String;
    new-instance v13, Lcom/kankunit/smartplugcronus/util/LinkageUtil;

    invoke-direct {v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;-><init>()V

    .line 3353
    .local v13, "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    const-string v11, ""

    .line 3354
    .local v11, "linkageChange":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3355
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3358
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0249

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "loading"

    .line 3359
    const/16 v6, 0x2ee0

    new-instance v7, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$20;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$20;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    .line 3356
    invoke-static {p0, v4, v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 3370
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sceneId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3369
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3371
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v4, :cond_10

    .line 3372
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 3373
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#update"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3376
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "linkageId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3375
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 3380
    .local v10, "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3381
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3392
    :goto_0
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    .line 3393
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3395
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-eqz v4, :cond_4

    .line 3396
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3397
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v5

    .line 3396
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3397
    if-eqz v4, :cond_4

    .line 3399
    :cond_1
    const-string v4, "Simultaneous trigger conditions of humidity is greater than the upper limit. Please try again after you remove the scene before"

    const/4 v5, 0x1

    .line 3398
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3399
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3400
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    .line 3558
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_2
    :goto_1
    return-void

    .line 3383
    .restart local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_3
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3384
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3385
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v5

    .line 3384
    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 3386
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto :goto_0

    .line 3403
    :cond_4
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-eqz v4, :cond_5

    .line 3404
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3405
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v5

    .line 3404
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3405
    if-nez v4, :cond_6

    .line 3406
    :cond_5
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setHum1(Ljava/lang/String;)V

    .line 3407
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasHum(Ljava/lang/String;)V

    .line 3408
    const-string v1, "7"

    .line 3409
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3408
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3411
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3412
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3413
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3412
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3410
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3416
    :cond_6
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3417
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-eqz v4, :cond_8

    .line 3418
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3419
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v5

    .line 3418
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3419
    if-eqz v4, :cond_8

    .line 3421
    :cond_7
    const-string v4, "Linkage trigger conditions of humidity is less than the limit. Please try again after you remove the scene before"

    const/4 v5, 0x1

    .line 3420
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3421
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3422
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3425
    :cond_8
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-eqz v4, :cond_9

    .line 3426
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3427
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v5

    .line 3426
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3427
    if-nez v4, :cond_a

    .line 3428
    :cond_9
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setHum2(Ljava/lang/String;)V

    .line 3429
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasHum(Ljava/lang/String;)V

    .line 3430
    const-string v1, "8"

    .line 3431
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3430
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3433
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3434
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3435
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3434
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3432
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3438
    :cond_a
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3439
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3440
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setHum1(Ljava/lang/String;)V

    .line 3441
    const-string v1, "7"

    .line 3442
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "unset"

    .line 3441
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3444
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3445
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3446
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3445
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3443
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3449
    :cond_b
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_c

    .line 3450
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3451
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setHum2(Ljava/lang/String;)V

    .line 3452
    const-string v1, "8"

    .line 3453
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "unset"

    .line 3452
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3455
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3456
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3457
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3456
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3454
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3460
    :cond_c
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_d

    .line 3461
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasHum(Ljava/lang/String;)V

    .line 3465
    :cond_d
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_f

    .line 3466
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ":hum"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 3470
    :goto_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 3527
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :goto_3
    const-string v4, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3533
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 3532
    invoke-virtual {v13, p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getActionCmd(Landroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;

    move-result-object v14

    .line 3534
    .local v14, "sendMsg":Ljava/lang/String;
    const-string v4, "noAuth"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3535
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_e

    .line 3536
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 3538
    :cond_e
    const-string v4, "There are no permissions, linkage cannot be saved"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3468
    .end local v14    # "sendMsg":Ljava/lang/String;
    .restart local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_f
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    const-string v7, ":hum"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto :goto_2

    .line 3472
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_10
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 3473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#save"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3474
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3475
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3477
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_16

    .line 3478
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3479
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-eqz v4, :cond_11

    .line 3481
    const-string v4, "Trigger conditions linked to the humidity is greater than the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3480
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3481
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3482
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3485
    :cond_11
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-nez v4, :cond_12

    .line 3486
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setHum1(Ljava/lang/String;)V

    .line 3487
    const-string v1, "7"

    .line 3488
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3487
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3490
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3491
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3492
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3491
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3489
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3494
    :cond_12
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasHum(Ljava/lang/String;)V

    .line 3496
    :cond_13
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3497
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-eqz v4, :cond_14

    .line 3499
    const-string v4, "Trigger conditions linked to the humidity is greater than the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3498
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3499
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3500
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3503
    :cond_14
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-nez v4, :cond_15

    .line 3504
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setHum2(Ljava/lang/String;)V

    .line 3505
    const-string v1, "8"

    .line 3506
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3505
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3508
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3509
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3510
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3509
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3507
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3512
    :cond_15
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasHum(Ljava/lang/String;)V

    .line 3515
    :cond_16
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3516
    const-string v5, "yyyy-MM-dd HH-mm-ss"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 3515
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 3517
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 3518
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 3519
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-static {v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 3520
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3521
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v5

    .line 3520
    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 3522
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 3523
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    const-string v7, ":hum"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 3524
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3541
    .restart local v14    # "sendMsg":Ljava/lang/String;
    :cond_17
    const-string v4, "noDevice"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 3542
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_18

    .line 3543
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 3545
    :cond_18
    const-string v4, "Device no longer exists, could not save the linkage"

    .line 3546
    const/4 v5, 0x1

    .line 3545
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3546
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3549
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3550
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%linkage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3549
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3552
    .local v2, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@addlinkage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3553
    const-string v5, "kankun-smartplug.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3552
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3554
    .local v3, "userJID":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 3555
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-string v8, "addlinkage"

    .line 3556
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v4, p0

    .line 3554
    invoke-direct/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 3557
    .local v1, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_1
.end method

.method private saveLinkageLum()V
    .locals 15

    .prologue
    .line 3561
    new-instance v0, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;-><init>()V

    .line 3562
    .local v0, "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    const-string v12, ""

    .line 3563
    .local v12, "linkageNum":Ljava/lang/String;
    new-instance v13, Lcom/kankunit/smartplugcronus/util/LinkageUtil;

    invoke-direct {v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;-><init>()V

    .line 3564
    .local v13, "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    const-string v11, ""

    .line 3565
    .local v11, "linkageChange":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3566
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3569
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0249

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "loading"

    .line 3570
    const/16 v6, 0x2ee0

    new-instance v7, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$21;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$21;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    .line 3567
    invoke-static {p0, v4, v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 3581
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sceneId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3580
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3582
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v4, :cond_e

    .line 3583
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 3584
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#update"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3590
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "linkageId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3589
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 3591
    .local v10, "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3592
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3603
    :goto_0
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 3604
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3605
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-eqz v4, :cond_4

    .line 3606
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3607
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v5

    .line 3606
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3607
    if-eqz v4, :cond_4

    .line 3609
    :cond_1
    const-string v4, "Light trigger condition has been linked to more than the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3608
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3609
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3610
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    .line 3764
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_2
    :goto_1
    return-void

    .line 3594
    .restart local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_3
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3595
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3596
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v5

    .line 3595
    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 3597
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto :goto_0

    .line 3614
    :cond_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLum1(Ljava/lang/String;)V

    .line 3615
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasLum(Ljava/lang/String;)V

    .line 3616
    const-string v1, "4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3617
    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3616
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3619
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3620
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3621
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3620
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3618
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3624
    :cond_5
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3625
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-eqz v4, :cond_7

    .line 3626
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3627
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v5

    .line 3626
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3627
    if-eqz v4, :cond_7

    .line 3629
    :cond_6
    const-string v4, "Linkage to trigger lighting conditions are less than the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3628
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3629
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3630
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3634
    :cond_7
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLum2(Ljava/lang/String;)V

    .line 3635
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasLum(Ljava/lang/String;)V

    .line 3636
    const-string v1, "5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3637
    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3636
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3639
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3640
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3641
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3640
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3638
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3644
    :cond_8
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3645
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3646
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLum1(Ljava/lang/String;)V

    .line 3647
    const-string v1, "4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3648
    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "unset"

    .line 3647
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3650
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3651
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3652
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3651
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3649
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3655
    :cond_9
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3656
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3657
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLum2(Ljava/lang/String;)V

    .line 3658
    const-string v1, "5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3659
    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "unset"

    .line 3658
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3661
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3662
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3663
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3662
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3660
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3666
    :cond_a
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3667
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasLum(Ljava/lang/String;)V

    .line 3671
    :cond_b
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_d

    .line 3672
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ":lum"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 3676
    :goto_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 3733
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :goto_3
    const-string v4, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3739
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 3738
    invoke-virtual {v13, p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getActionCmd(Landroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;

    move-result-object v14

    .line 3740
    .local v14, "sendMsg":Ljava/lang/String;
    const-string v4, "noAuth"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3741
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_c

    .line 3742
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 3744
    :cond_c
    const-string v4, "There are no permissions, linkage cannot be saved"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3674
    .end local v14    # "sendMsg":Ljava/lang/String;
    .restart local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_d
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    const-string v7, ":lum"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto :goto_2

    .line 3678
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_e
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 3679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#save"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3680
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3681
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3683
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_14

    .line 3684
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3685
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-eqz v4, :cond_f

    .line 3687
    const-string v4, "Light trigger condition has been linked to more than the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3686
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3687
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3688
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3691
    :cond_f
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-nez v4, :cond_10

    .line 3692
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLum1(Ljava/lang/String;)V

    .line 3693
    const-string v1, "4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3694
    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3693
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3696
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3697
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3698
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3697
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3695
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3700
    :cond_10
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasLum(Ljava/lang/String;)V

    .line 3702
    :cond_11
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3703
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-eqz v4, :cond_12

    .line 3705
    const-string v4, "Linkage to trigger lighting conditions are less than the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3704
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3705
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3706
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3709
    :cond_12
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-nez v4, :cond_13

    .line 3710
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLum2(Ljava/lang/String;)V

    .line 3711
    const-string v1, "5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3712
    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3711
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3714
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3715
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3716
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3715
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3713
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3718
    :cond_13
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasLum(Ljava/lang/String;)V

    .line 3721
    :cond_14
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3722
    const-string v5, "yyyy-MM-dd HH-mm-ss"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 3721
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 3723
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 3724
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 3725
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-static {v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 3726
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3727
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v5

    .line 3726
    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 3728
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 3729
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    const-string v7, ":lum"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 3730
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3747
    .restart local v14    # "sendMsg":Ljava/lang/String;
    :cond_15
    const-string v4, "noDevice"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3748
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_16

    .line 3749
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 3751
    :cond_16
    const-string v4, "There are devices already that don't exist, can not save the linkage"

    .line 3752
    const/4 v5, 0x1

    .line 3751
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3752
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3755
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3756
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%linkage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3755
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3758
    .local v2, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@addlinkage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3759
    const-string v5, "kankun-smartplug.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3758
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3760
    .local v3, "userJID":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 3761
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-string v8, "addlinkage"

    .line 3762
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v4, p0

    .line 3760
    invoke-direct/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 3763
    .local v1, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_1
.end method

.method private saveLinkageTemp()V
    .locals 15

    .prologue
    .line 3015
    new-instance v0, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;-><init>()V

    .line 3016
    .local v0, "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    const-string v12, ""

    .line 3017
    .local v12, "linkageNum":Ljava/lang/String;
    new-instance v13, Lcom/kankunit/smartplugcronus/util/LinkageUtil;

    invoke-direct {v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;-><init>()V

    .line 3018
    .local v13, "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    const-string v11, ""

    .line 3019
    .local v11, "linkageChange":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3020
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3023
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0249

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "loading"

    .line 3024
    const/16 v6, 0x2ee0

    new-instance v7, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$19;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$19;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    .line 3021
    invoke-static {p0, v4, v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 3035
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sceneId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3034
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3036
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v4, :cond_1a

    .line 3037
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 3038
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#update"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3044
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "linkageId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3043
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 3045
    .local v10, "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 3046
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3054
    :goto_0
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14

    .line 3055
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3056
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-eqz v4, :cond_5

    .line 3057
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    if-eqz v4, :cond_5

    .line 3058
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3059
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v5

    .line 3058
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3059
    if-eqz v4, :cond_5

    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, ""

    .line 3060
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3062
    :cond_2
    const-string v4, "Linkage trigger condition is greater than the upper limit temperature. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3061
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3062
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3063
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    .line 3347
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_3
    :goto_1
    return-void

    .line 3048
    .restart local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_4
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3049
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3050
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v5

    .line 3049
    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 3051
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto :goto_0

    .line 3066
    :cond_5
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3067
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp1(Ljava/lang/String;)V

    .line 3068
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3070
    const-string v1, "0"

    .line 3071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3072
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3070
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3073
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3074
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3075
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3076
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3075
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3073
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3113
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3114
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    if-eqz v4, :cond_c

    .line 3115
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-eqz v4, :cond_c

    .line 3116
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3117
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v5

    .line 3116
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3117
    if-eqz v4, :cond_c

    :cond_7
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, ""

    .line 3118
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3120
    :cond_8
    const-string v4, "Linkage to trigger temperature conditions are less than the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3119
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3120
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3121
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3077
    :cond_9
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 3078
    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3079
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp2(Ljava/lang/String;)V

    .line 3080
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3082
    const-string v1, "1"

    .line 3083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3084
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3082
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3086
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3087
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3088
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3087
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3085
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3089
    goto/16 :goto_2

    :cond_a
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-nez v4, :cond_b

    .line 3090
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp1(Ljava/lang/String;)V

    .line 3091
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3093
    const-string v1, "0"

    .line 3094
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3095
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3093
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3096
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3097
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3098
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3099
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3098
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3096
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3100
    goto/16 :goto_2

    :cond_b
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    if-nez v4, :cond_6

    .line 3101
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp2(Ljava/lang/String;)V

    .line 3102
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3104
    const-string v1, "1"

    .line 3105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3106
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3104
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3108
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3109
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3110
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3109
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 3124
    :cond_c
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 3125
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp3(Ljava/lang/String;)V

    .line 3126
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3128
    const-string v1, "2"

    .line 3129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3130
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3128
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3132
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3133
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3134
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3133
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3171
    :cond_d
    :goto_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_10

    .line 3172
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3175
    const-string v1, "0"

    .line 3176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    .line 3177
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3176
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3177
    const-string v3, "none"

    const-string v4, "none"

    .line 3178
    const-string v5, "unset"

    .line 3173
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3180
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3181
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3182
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3181
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3179
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3184
    :cond_e
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 3187
    const-string v1, "1"

    .line 3188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    .line 3189
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3189
    const-string v3, "none"

    const-string v4, "none"

    .line 3190
    const-string v5, "unset"

    .line 3185
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3192
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3193
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3194
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3193
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3196
    :cond_f
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp1(Ljava/lang/String;)V

    .line 3197
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp2(Ljava/lang/String;)V

    .line 3199
    :cond_10
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_13

    .line 3200
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3203
    const-string v1, "2"

    .line 3204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    .line 3205
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3205
    const-string v3, "none"

    const-string v4, "none"

    .line 3206
    const-string v5, "unset"

    .line 3201
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3208
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3209
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3210
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3209
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3212
    :cond_11
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 3215
    const-string v1, "3"

    .line 3216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    .line 3217
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3217
    const-string v3, "none"

    const-string v4, "none"

    .line 3218
    const-string v5, "unset"

    .line 3213
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3220
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3221
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3222
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3221
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3219
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3224
    :cond_12
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp3(Ljava/lang/String;)V

    .line 3225
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp4(Ljava/lang/String;)V

    .line 3227
    :cond_13
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_14

    .line 3228
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3231
    :cond_14
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_19

    .line 3232
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ":temp"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 3236
    :goto_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 3316
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :goto_5
    const-string v4, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3322
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 3321
    invoke-virtual {v13, p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getActionCmd(Landroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;

    move-result-object v14

    .line 3323
    .local v14, "sendMsg":Ljava/lang/String;
    const-string v4, "noAuth"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3324
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_15

    .line 3325
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 3327
    :cond_15
    const-string v4, "No authority exists, can not save the linkage"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3135
    .end local v14    # "sendMsg":Ljava/lang/String;
    .restart local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_16
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-nez v4, :cond_17

    .line 3136
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp3(Ljava/lang/String;)V

    .line 3137
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3139
    const-string v1, "2"

    .line 3140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3141
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3139
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3143
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3144
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3145
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3144
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3146
    goto/16 :goto_3

    :cond_17
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 3147
    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 3148
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp4(Ljava/lang/String;)V

    .line 3149
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3151
    const-string v1, "3"

    .line 3152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3153
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3151
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3155
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3156
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3157
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3156
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3158
    goto/16 :goto_3

    :cond_18
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    if-nez v4, :cond_d

    .line 3159
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp4(Ljava/lang/String;)V

    .line 3160
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3162
    const-string v1, "3"

    .line 3163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3164
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3162
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3166
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3167
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3168
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3167
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 3234
    :cond_19
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    const-string v7, ":temp"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3238
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_1a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 3239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#save"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3240
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3241
    new-instance v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3243
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    .line 3244
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 3245
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-eqz v4, :cond_1b

    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    if-eqz v4, :cond_1b

    .line 3247
    const-string v4, "Linkage trigger condition is greater than the upper limit temperature. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3246
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3247
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3248
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3251
    :cond_1b
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    if-nez v4, :cond_1e

    .line 3252
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp1(Ljava/lang/String;)V

    .line 3254
    const-string v1, "0"

    .line 3255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3256
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3254
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3258
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3259
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3260
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3259
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3272
    :cond_1c
    :goto_6
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3274
    :cond_1d
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3275
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-eqz v4, :cond_1f

    .line 3277
    const-string v4, "Linkage to trigger temperature conditions are less than the upper limit. Please delete the previous scene and try again"

    const/4 v5, 0x1

    .line 3276
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3277
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3278
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V

    goto/16 :goto_1

    .line 3261
    :cond_1e
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    if-nez v4, :cond_1c

    .line 3262
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp2(Ljava/lang/String;)V

    .line 3264
    const-string v1, "1"

    .line 3265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3266
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3264
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3268
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3269
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3270
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3269
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3267
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_6

    .line 3281
    :cond_1f
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    if-nez v4, :cond_22

    .line 3282
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp3(Ljava/lang/String;)V

    .line 3284
    const-string v1, "2"

    .line 3285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3286
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3284
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3288
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3289
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3290
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3289
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3287
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3302
    :cond_20
    :goto_7
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 3305
    :cond_21
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 3306
    const-string v5, "yyyy-MM-dd HH-mm-ss"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 3305
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 3307
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 3308
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 3309
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-static {v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 3310
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 3311
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v5

    .line 3310
    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 3312
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 3313
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    const-string v7, ":temp"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 3314
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3291
    :cond_22
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    if-nez v4, :cond_20

    .line 3292
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp4(Ljava/lang/String;)V

    .line 3294
    const-string v1, "3"

    .line 3295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTempStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3296
    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "set"

    .line 3294
    invoke-static/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v0

    .line 3297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3298
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3299
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 3300
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 3299
    invoke-virtual {v13, v0, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_7

    .line 3330
    .restart local v14    # "sendMsg":Ljava/lang/String;
    :cond_23
    const-string v4, "noDevice"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3331
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_24

    .line 3332
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 3334
    :cond_24
    const-string v4, "There are devices already that don't exist, can not save the linkage"

    .line 3335
    const/4 v5, 0x1

    .line 3334
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3335
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3338
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3339
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%linkage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3338
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3341
    .local v2, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@addlinkage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3342
    const-string v5, "kankun-smartplug.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3341
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3343
    .local v3, "userJID":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 3344
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-string v8, "addlinkage"

    .line 3345
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v4, p0

    .line 3343
    invoke-direct/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 3346
    .local v1, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_1
.end method

.method private saveLinkageTimer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 48
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sceneId"    # Ljava/lang/String;

    .prologue
    .line 4052
    const/16 v33, 0x1

    .line 4053
    .local v33, "isset":Z
    const/16 v24, 0x0

    .line 4054
    .local v24, "hasTemp1":Z
    const/16 v25, 0x0

    .line 4056
    .local v25, "hasTemp2":Z
    const/16 v26, 0x0

    .line 4057
    .local v26, "hasTemp4":Z
    const/16 v27, 0x0

    .line 4058
    .local v27, "hasTemp5":Z
    const/16 v28, 0x0

    .line 4059
    .local v28, "hasTemp6":Z
    const/16 v29, 0x0

    .line 4061
    .local v29, "hasTemp7":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "linkageId=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4060
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v35

    .line 4062
    .local v35, "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v35, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ge v4, v6, :cond_1

    .line 4580
    :cond_0
    :goto_0
    return-void

    .line 4065
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 4066
    .local v34, "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getRepart()Ljava/lang/String;

    move-result-object v46

    .line 4067
    .local v46, "repeat":Ljava/lang/String;
    const-string v45, ""

    .line 4068
    .local v45, "openTime":Ljava/lang/String;
    const-string v21, ""

    .line 4069
    .local v21, "closeTime":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    const-string v6, ":timer"

    invoke-static {v4, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 4070
    .local v37, "linkageMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 4071
    .local v40, "linkagePwd":Ljava/lang/String;
    const-string v4, "y"

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getIsPoint()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v31, 0x1

    .line 4072
    .local v31, "isPoint":Z
    :goto_1
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 4073
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v45, v4, v6

    .line 4074
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v21, v4, v6

    .line 4075
    const/16 v24, 0x1

    .line 4101
    :cond_2
    :goto_2
    const/4 v4, 0x7

    new-array v0, v4, [Z

    move-object/from16 v22, v0

    .line 4102
    .local v22, "dayFlag":[Z
    const-string v4, "7"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4103
    const/4 v4, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v22, v4

    .line 4105
    :cond_3
    const-string v4, "1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4106
    const/4 v4, 0x1

    const/4 v6, 0x1

    aput-boolean v6, v22, v4

    .line 4108
    :cond_4
    const-string v4, "2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4109
    const/4 v4, 0x2

    const/4 v6, 0x1

    aput-boolean v6, v22, v4

    .line 4111
    :cond_5
    const-string v4, "3"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4112
    const/4 v4, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v22, v4

    .line 4114
    :cond_6
    const-string v4, "4"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4115
    const/4 v4, 0x4

    const/4 v6, 0x1

    aput-boolean v6, v22, v4

    .line 4117
    :cond_7
    const-string v4, "5"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4118
    const/4 v4, 0x5

    const/4 v6, 0x1

    aput-boolean v6, v22, v4

    .line 4120
    :cond_8
    const-string v4, "6"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4121
    const/4 v4, 0x6

    const/4 v6, 0x1

    aput-boolean v6, v22, v4

    .line 4123
    :cond_9
    const/16 v42, 0x0

    .line 4124
    .local v42, "n":I
    const/16 v32, 0x0

    .line 4125
    .local v32, "isRepart":Z
    const-string v7, ""

    .line 4126
    .local v7, "repeatCmd":Ljava/lang/String;
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_3
    const/4 v4, 0x7

    move/from16 v0, v30

    if-lt v0, v4, :cond_13

    .line 4139
    if-nez v32, :cond_17

    .line 4140
    const-string v7, "0"

    .line 4144
    :goto_4
    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4145
    .local v23, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v43

    .line 4146
    .local v43, "nowDate":Ljava/lang/String;
    const-string v4, "-"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aget-object v44, v4, v6

    .line 4148
    .local v44, "nowTime":Ljava/lang/String;
    const-string v4, "-"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aget-object v4, v4, v6

    .line 4147
    move/from16 v0, v42

    move/from16 v1, v32

    invoke-static {v0, v4, v1}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDateForLinkage(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 4149
    .local v10, "onTimeStr":Ljava/lang/String;
    const-string v11, ""

    .line 4150
    .local v11, "offTimeStr":Ljava/lang/String;
    if-nez v31, :cond_a

    .line 4152
    const-string v4, "-"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aget-object v4, v4, v6

    .line 4151
    move/from16 v0, v42

    move/from16 v1, v32

    invoke-static {v0, v4, v1, v10}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDateForLinkageAfter(ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4154
    :cond_a
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_b

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_b

    .line 4155
    const-string v4, "-"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aget-object v4, v4, v6

    move/from16 v0, v42

    move/from16 v1, v32

    invoke-static {v0, v4, v1}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDate(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 4156
    if-nez v31, :cond_b

    .line 4157
    const-string v4, "-"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aget-object v4, v4, v6

    move/from16 v0, v42

    move/from16 v1, v32

    invoke-static {v0, v4, v1, v10}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDate(ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4161
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v42

    move/from16 v1, v32

    invoke-static {v0, v4, v1}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDate(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 4162
    .local v5, "pointTimeStr":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;-><init>()V

    .line 4163
    .local v3, "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    const-string v39, ""

    .line 4164
    .local v39, "linkageNum":Ljava/lang/String;
    new-instance v41, Lcom/kankunit/smartplugcronus/util/LinkageUtil;

    invoke-direct/range {v41 .. v41}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;-><init>()V

    .line 4165
    .local v41, "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    const-string v36, ""

    .line 4167
    .local v36, "linkageChange":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "sceneId=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4166
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v38

    .line 4168
    .local v38, "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    if-eqz v31, :cond_26

    .line 4169
    if-eqz v38, :cond_20

    .line 4170
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 4171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v38 .. v38}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "#update"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 4172
    if-eqz v35, :cond_18

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 4173
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    check-cast v34, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 4179
    .restart local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    :goto_5
    if-eqz v33, :cond_1a

    .line 4180
    if-eqz v28, :cond_19

    .line 4181
    if-eqz v29, :cond_19

    .line 4182
    invoke-virtual/range {v38 .. v38}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v4, ""

    .line 4183
    invoke-virtual/range {v38 .. v38}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 4184
    :cond_c
    const-string v4, "Linkage conditions trigger time has come to limit. Please delete the previous scene and try again"

    .line 4185
    const/4 v6, 0x1

    .line 4184
    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 4185
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4071
    .end local v3    # "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .end local v5    # "pointTimeStr":Ljava/lang/String;
    .end local v7    # "repeatCmd":Ljava/lang/String;
    .end local v10    # "onTimeStr":Ljava/lang/String;
    .end local v11    # "offTimeStr":Ljava/lang/String;
    .end local v22    # "dayFlag":[Z
    .end local v23    # "fmt":Ljava/text/SimpleDateFormat;
    .end local v30    # "i":I
    .end local v31    # "isPoint":Z
    .end local v32    # "isRepart":Z
    .end local v36    # "linkageChange":Ljava/lang/String;
    .end local v38    # "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .end local v39    # "linkageNum":Ljava/lang/String;
    .end local v41    # "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    .end local v42    # "n":I
    .end local v43    # "nowDate":Ljava/lang/String;
    .end local v44    # "nowTime":Ljava/lang/String;
    :cond_d
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 4076
    .restart local v31    # "isPoint":Z
    :cond_e
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 4077
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v45, v4, v6

    .line 4078
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v21, v4, v6

    .line 4079
    const/16 v25, 0x1

    .line 4080
    goto/16 :goto_2

    .line 4086
    :cond_f
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 4087
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v45, v4, v6

    .line 4088
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v21, v4, v6

    .line 4089
    const/16 v26, 0x1

    .line 4090
    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 4091
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v45, v4, v6

    .line 4092
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v21, v4, v6

    .line 4093
    const/16 v27, 0x1

    .line 4094
    goto/16 :goto_2

    :cond_11
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 4095
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v45

    .line 4096
    const/16 v28, 0x1

    .line 4097
    goto/16 :goto_2

    :cond_12
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4098
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v45

    .line 4099
    const/16 v29, 0x1

    goto/16 :goto_2

    .line 4127
    .restart local v7    # "repeatCmd":Ljava/lang/String;
    .restart local v22    # "dayFlag":[Z
    .restart local v30    # "i":I
    .restart local v32    # "isRepart":Z
    .restart local v42    # "n":I
    :cond_13
    aget-boolean v4, v22, v30

    if-eqz v4, :cond_14

    if-nez v32, :cond_14

    .line 4128
    const/16 v32, 0x1

    .line 4129
    if-nez v30, :cond_16

    .line 4130
    const/16 v42, 0x8

    .line 4135
    :cond_14
    :goto_6
    aget-boolean v4, v22, v30

    if-eqz v4, :cond_15

    .line 4136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v30, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4126
    :cond_15
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_3

    .line 4132
    :cond_16
    add-int/lit8 v42, v30, 0x1

    goto :goto_6

    .line 4142
    :cond_17
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 4175
    .restart local v3    # "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .restart local v5    # "pointTimeStr":Ljava/lang/String;
    .restart local v10    # "onTimeStr":Ljava/lang/String;
    .restart local v11    # "offTimeStr":Ljava/lang/String;
    .restart local v23    # "fmt":Ljava/text/SimpleDateFormat;
    .restart local v36    # "linkageChange":Ljava/lang/String;
    .restart local v38    # "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .restart local v39    # "linkageNum":Ljava/lang/String;
    .restart local v41    # "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    .restart local v43    # "nowDate":Ljava/lang/String;
    .restart local v44    # "nowTime":Ljava/lang/String;
    :cond_18
    new-instance v34, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .end local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-direct/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    .line 4176
    .restart local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static/range {p1 .. p1}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 4177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4188
    :cond_19
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1c

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 4189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 4190
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4191
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4192
    const-string v4, "16"

    .line 4193
    const-string v6, "none"

    const-string v8, "set"

    .line 4192
    invoke-static/range {v3 .. v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4195
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4196
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4231
    :cond_1a
    :goto_7
    if-eqz v33, :cond_1f

    .line 4232
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 4233
    const-string v6, ":timer"

    .line 4232
    move-object/from16 v0, v37

    invoke-static {v4, v0, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 4237
    :goto_8
    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 4238
    const-string v4, "y"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setIsPoint(Ljava/lang/String;)V

    .line 4554
    :goto_9
    const-string v4, ""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getActionCmd(Landroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;

    move-result-object v47

    .line 4558
    .local v47, "sendMsg":Ljava/lang/String;
    const-string v4, "noAuth"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 4559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_1b

    .line 4560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 4562
    :cond_1b
    const-string v4, "No authority exists, can not save the linkage"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4198
    .end local v47    # "sendMsg":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 4199
    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 4200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 4201
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4202
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4203
    const-string v4, "17"

    .line 4204
    const-string v6, "none"

    const-string v8, "set"

    .line 4203
    invoke-static/range {v3 .. v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4206
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4207
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4209
    goto/16 :goto_7

    :cond_1d
    if-nez v28, :cond_1e

    .line 4210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 4211
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4212
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4213
    const-string v4, "16"

    .line 4214
    const-string v6, "none"

    const-string v8, "set"

    .line 4213
    invoke-static/range {v3 .. v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4216
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4217
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4215
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4219
    goto/16 :goto_7

    :cond_1e
    if-nez v29, :cond_1a

    .line 4220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 4221
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4222
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4223
    const-string v4, "17"

    .line 4224
    const-string v6, "none"

    const-string v8, "set"

    .line 4223
    invoke-static/range {v3 .. v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4226
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4227
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_7

    .line 4235
    :cond_1f
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string v8, ":timer"

    invoke-static {v4, v6, v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 4240
    :cond_20
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 4241
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v39

    .line 4242
    new-instance v38, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .end local v38    # "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-direct/range {v38 .. v38}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    .line 4243
    .restart local v38    # "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    new-instance v34, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .end local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-direct/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    .line 4245
    .restart local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    if-eqz v33, :cond_23

    .line 4246
    if-eqz v28, :cond_21

    if-eqz v29, :cond_21

    .line 4247
    const-string v4, "Linkage conditions trigger time has come to limit. Please delete the previous scene and try again"

    .line 4248
    const/4 v6, 0x1

    .line 4247
    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 4248
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4251
    :cond_21
    if-nez v28, :cond_24

    .line 4252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 4253
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4254
    const-string v4, "16"

    .line 4255
    const-string v6, "none"

    const-string v8, "set"

    .line 4254
    invoke-static/range {v3 .. v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4257
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4258
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4270
    :cond_22
    :goto_a
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4273
    :cond_23
    const-string v4, "yyyy-MM-dd HH-mm-ss"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 4272
    invoke-static {v4, v6}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 4274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 4275
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 4276
    invoke-static/range {v39 .. v39}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 4277
    invoke-static/range {p1 .. p1}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 4278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 4279
    const-string v4, "y"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setIsPoint(Ljava/lang/String;)V

    .line 4280
    if-eqz v33, :cond_25

    .line 4281
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 4282
    const-string v6, ":timer"

    .line 4281
    move-object/from16 v0, v37

    invoke-static {v4, v0, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 4286
    :goto_b
    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 4260
    :cond_24
    if-nez v29, :cond_22

    .line 4261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 4262
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4263
    const-string v4, "17"

    .line 4264
    const-string v6, "none"

    const-string v8, "set"

    .line 4263
    invoke-static/range {v3 .. v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4266
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4267
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4265
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_a

    .line 4284
    :cond_25
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string v8, ":timer"

    invoke-static {v4, v6, v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto :goto_b

    .line 4289
    :cond_26
    if-eqz v38, :cond_38

    .line 4290
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 4291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v38 .. v38}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "#update"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 4292
    if-eqz v35, :cond_28

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_28

    .line 4293
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    check-cast v34, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 4299
    .restart local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    :goto_c
    if-eqz v33, :cond_2a

    .line 4300
    if-eqz v24, :cond_29

    .line 4301
    if-eqz v25, :cond_29

    .line 4303
    if-eqz v26, :cond_29

    .line 4304
    if-eqz v27, :cond_29

    .line 4305
    invoke-virtual/range {v38 .. v38}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    const-string v4, ""

    .line 4306
    invoke-virtual/range {v38 .. v38}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 4307
    :cond_27
    const-string v4, "Trigger conditions are linked to the upper limit of the time period. Please delete the previous scene and try again"

    .line 4308
    const/4 v6, 0x1

    .line 4307
    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 4308
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4295
    :cond_28
    new-instance v34, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .end local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-direct/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    .line 4296
    .restart local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static/range {p1 .. p1}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 4297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto :goto_c

    .line 4311
    :cond_29
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 4312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 4313
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4314
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4315
    const-string v9, "14"

    .line 4316
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4315
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4318
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4319
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4317
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4419
    :cond_2a
    :goto_d
    if-nez v33, :cond_2f

    .line 4420
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2b

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 4421
    const-string v9, "14"

    .line 4422
    const-string v13, "unset"

    move-object v8, v3

    move-object v12, v7

    .line 4421
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4424
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4425
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4423
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4428
    :cond_2b
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2c

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 4429
    const-string v9, "15"

    .line 4430
    const-string v13, "unset"

    move-object v8, v3

    move-object v12, v7

    .line 4429
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4432
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4433
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4431
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4443
    :cond_2c
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 4444
    const-string v9, "19"

    .line 4445
    const-string v13, "unset"

    move-object v8, v3

    move-object v12, v7

    .line 4444
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4447
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4448
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4446
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4451
    :cond_2d
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e

    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 4452
    const-string v9, "20"

    .line 4453
    const-string v13, "unset"

    move-object v8, v3

    move-object v12, v7

    .line 4452
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4455
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4456
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4454
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4459
    :cond_2e
    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 4460
    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 4462
    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 4463
    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 4464
    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4465
    const-string v4, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4467
    :cond_2f
    if-eqz v33, :cond_37

    .line 4468
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 4469
    const-string v6, ":timer"

    .line 4468
    move-object/from16 v0, v37

    invoke-static {v4, v0, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 4473
    :goto_e
    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 4474
    const-string v4, "n"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setIsPoint(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 4321
    :cond_30
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 4322
    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 4323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 4324
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4325
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4326
    const-string v9, "15"

    .line 4327
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4326
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4329
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4330
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4328
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4332
    goto/16 :goto_d

    .line 4344
    :cond_31
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 4345
    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 4346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 4347
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4348
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4349
    const-string v9, "19"

    .line 4350
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4349
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4352
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4353
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4351
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4355
    goto/16 :goto_d

    :cond_32
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 4356
    const-string v4, ""

    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 4357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 4358
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4359
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4360
    const-string v9, "20"

    .line 4361
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4360
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4363
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4364
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4366
    goto/16 :goto_d

    :cond_33
    if-nez v24, :cond_34

    .line 4367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 4368
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4369
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4370
    const-string v9, "14"

    .line 4371
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4370
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4373
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4374
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4372
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4376
    goto/16 :goto_d

    :cond_34
    if-nez v25, :cond_35

    .line 4377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 4378
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4379
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4380
    const-string v9, "15"

    .line 4381
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4380
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4383
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4384
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4382
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4386
    goto/16 :goto_d

    .line 4397
    :cond_35
    if-nez v26, :cond_36

    .line 4398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 4399
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4400
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4401
    const-string v9, "19"

    .line 4402
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4401
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4404
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4405
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4403
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4407
    goto/16 :goto_d

    :cond_36
    if-nez v27, :cond_2a

    .line 4408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 4409
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4410
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4411
    const-string v9, "20"

    .line 4412
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4411
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4414
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4415
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4413
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_d

    .line 4471
    :cond_37
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string v8, ":timer"

    invoke-static {v4, v6, v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 4476
    :cond_38
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isModelNull:Z

    .line 4477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "#save"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 4478
    new-instance v38, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .end local v38    # "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-direct/range {v38 .. v38}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    .line 4479
    .restart local v38    # "linkageModel":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    new-instance v34, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .end local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-direct/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    .line 4481
    .restart local v34    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    if-eqz v33, :cond_3b

    .line 4482
    if-eqz v24, :cond_39

    if-eqz v25, :cond_39

    if-eqz v26, :cond_39

    .line 4483
    if-eqz v27, :cond_39

    .line 4484
    const-string v4, "Trigger conditions are linked to the upper limit of the time period. Please delete the previous scene and try again"

    .line 4485
    const/4 v6, 0x1

    .line 4484
    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 4485
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4488
    :cond_39
    if-nez v24, :cond_3c

    .line 4489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 4490
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4491
    const-string v9, "14"

    .line 4492
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4491
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4494
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4495
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4493
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4535
    :cond_3a
    :goto_f
    const-string v4, "y"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 4538
    :cond_3b
    const-string v4, "yyyy-MM-dd HH-mm-ss"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 4537
    invoke-static {v4, v6}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 4539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 4540
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 4541
    invoke-static/range {v39 .. v39}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 4542
    invoke-static/range {p1 .. p1}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 4543
    const-string v4, "n"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setIsPoint(Ljava/lang/String;)V

    .line 4544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 4545
    if-eqz v33, :cond_3f

    .line 4546
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 4547
    const-string v6, ":timer"

    .line 4546
    move-object/from16 v0, v37

    invoke-static {v4, v0, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 4551
    :goto_10
    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 4497
    :cond_3c
    if-nez v25, :cond_3d

    .line 4498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 4499
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4500
    const-string v9, "15"

    .line 4501
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4500
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4503
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4504
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4502
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4506
    goto/16 :goto_f

    .line 4516
    :cond_3d
    if-nez v26, :cond_3e

    .line 4517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 4518
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4519
    const-string v9, "19"

    .line 4520
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4519
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4522
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4523
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4521
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 4525
    goto/16 :goto_f

    :cond_3e
    if-nez v27, :cond_3a

    .line 4526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 4527
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 4528
    const-string v9, "20"

    .line 4529
    const-string v13, "set"

    move-object v8, v3

    move-object v12, v7

    .line 4528
    invoke-static/range {v8 .. v13}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v3

    .line 4530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4531
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4532
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4530
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_f

    .line 4549
    :cond_3f
    invoke-virtual/range {v34 .. v34}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string v8, ":timer"

    invoke-static {v4, v6, v8}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 4565
    .restart local v47    # "sendMsg":Ljava/lang/String;
    :cond_40
    const-string v4, "noDevice"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 4566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_41

    .line 4567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 4569
    :cond_41
    const-string v4, "There are devices already that don't exist, can not save the linkage"

    .line 4570
    const/4 v6, 0x1

    .line 4569
    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 4570
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4573
    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%%"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4574
    const/4 v6, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%%linkage"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4573
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4575
    .local v13, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@addlinkage."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4576
    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4575
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4577
    .local v14, "userJID":Ljava/lang/String;
    new-instance v12, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 4578
    const/16 v18, 0x0

    const-string v19, "addlinkage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v20, v0

    move-object/from16 v15, p1

    .line 4577
    invoke-direct/range {v12 .. v20}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 4579
    .local v12, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0
.end method

.method private setLvHeight()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 924
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_do_list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 925
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 928
    :cond_0
    const/4 v4, 0x0

    .line 929
    .local v4, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 934
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_do_list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 936
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_do_list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    .line 935
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 937
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_do_list:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 930
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_do_list:Landroid/widget/ListView;

    invoke-interface {v0, v1, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 931
    .local v2, "itemView":Landroid/view/View;
    invoke-virtual {v2, v7, v7}, Landroid/view/View;->measure(II)V

    .line 932
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private showLinkagePop(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "clickindex"    # I
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "splitStr"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1341
    const/4 v4, 0x0

    .line 1342
    .local v4, "device":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz p3, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1344
    invoke-static {p2, p3}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1343
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    .line 1346
    :cond_0
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->delete_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1347
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1348
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1349
    const/4 v6, 0x0

    .line 1350
    .local v6, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v7, :cond_1

    .line 1355
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " linkageId=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1354
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1357
    :cond_1
    if-eqz v6, :cond_2

    .line 1358
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1360
    :cond_2
    if-nez p1, :cond_4

    .line 1361
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isTimerNull(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1362
    invoke-direct {p0, v6, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showTimer(Ljava/util/List;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1631
    :goto_0
    return-void

    .line 1364
    :cond_3
    const-string v7, "n"

    invoke-direct {p0, v6, v7, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showTimerActivity(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1368
    :cond_4
    if-ne p1, v11, :cond_6

    .line 1369
    new-instance v2, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;-><init>()V

    .line 1370
    .local v2, "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "It was after"

    aput-object v7, v0, v10

    const-string v7, "Remove body sensors setting"

    aput-object v7, v0, v11

    .line 1371
    .local v0, "bodys":[Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;

    invoke-direct {v1, p0, p2, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V

    .line 1402
    .local v1, "btnListener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1403
    const-string v7, ""

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1404
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Body sensors execution condition("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1404
    invoke-static {p0, v7, v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getBuilder(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V

    goto :goto_0

    .line 1408
    :cond_5
    const-string v7, "Body sensors execution condition"

    invoke-static {p0, v7, v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getBuilder(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V

    goto :goto_0

    .line 1413
    .end local v0    # "bodys":[Ljava/lang/String;
    .end local v1    # "btnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    :cond_6
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1415
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1417
    :cond_7
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1418
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1419
    packed-switch p1, :pswitch_data_0

    .line 1629
    :goto_1
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    const/16 v9, 0x11

    invoke-virtual {v7, v8, v9, v10, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1421
    :pswitch_0
    if-eqz p2, :cond_8

    const-string v7, ""

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1424
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " mac like \'%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1423
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1425
    .local v3, "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 1426
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_c

    .line 1450
    .end local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v5    # "i":I
    :cond_8
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 1451
    const-string v7, ""

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1452
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_title:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Temperature conditions("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    :goto_3
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_title:Landroid/widget/TextView;

    const-string v8, "temperature greater than"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_title:Landroid/widget/TextView;

    const-string v8, "temperature less than"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_delete_title:Landroid/widget/TextView;

    const-string v8, "Remove temperature setting"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    const/16 v7, 0x14

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    .line 1460
    const/16 v7, 0x1e

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    .line 1461
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v7, :cond_9

    .line 1466
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "linkageId=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1467
    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1465
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1469
    :cond_9
    if-eqz v6, :cond_b

    .line 1470
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 1471
    const-string v8, ""

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1472
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1473
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v7

    const-string v8, "°C"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    .line 1472
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    .line 1474
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1475
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal1CboCheck:Z

    .line 1483
    :cond_a
    :goto_4
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 1484
    const-string v8, ""

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 1485
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1486
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v7

    const-string v8, "°C"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    .line 1485
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    .line 1487
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1488
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal2CboCheck:Z

    .line 1497
    :cond_b
    :goto_5
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "°C"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "°C"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1427
    .restart local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .restart local v5    # "i":I
    :cond_c
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 1428
    const-string v8, ""

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1429
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v7

    .line 1428
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1429
    if-nez v7, :cond_d

    .line 1430
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    .line 1432
    :cond_d
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 1433
    const-string v8, ""

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1434
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v7

    .line 1433
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1434
    if-nez v7, :cond_e

    .line 1435
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    .line 1437
    :cond_e
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 1438
    const-string v8, ""

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1439
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v7

    .line 1438
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1439
    if-nez v7, :cond_f

    .line 1440
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    .line 1442
    :cond_f
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 1443
    const-string v8, ""

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1444
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v7

    .line 1443
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1444
    if-nez v7, :cond_10

    .line 1445
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    .line 1426
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1454
    .end local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v5    # "i":I
    :cond_11
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_title:Landroid/widget/TextView;

    const-string v8, "temperature conditions"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1476
    :cond_12
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1477
    const-string v8, ""

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1478
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1479
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v7

    const-string v8, "°C"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    .line 1478
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    .line 1480
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1481
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal1CboCheck:Z

    goto/16 :goto_4

    .line 1489
    :cond_13
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 1490
    const-string v8, ""

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1491
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1492
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v7

    const-string v8, "°C"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    .line 1491
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    .line 1493
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1494
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal2CboCheck:Z

    goto/16 :goto_5

    .line 1501
    :pswitch_1
    const/16 v7, 0x32

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    .line 1502
    const/16 v7, 0x3c

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    .line 1503
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 1504
    const-string v7, ""

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 1505
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_title:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "humidity conditions("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1509
    :goto_6
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_title:Landroid/widget/TextView;

    const-string v8, "humidity greater than"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_title:Landroid/widget/TextView;

    const-string v8, "humidity less than"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_delete_title:Landroid/widget/TextView;

    const-string v8, "Remove humidity settings"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    if-eqz p2, :cond_14

    const-string v7, ""

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1516
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " mac like \'%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1515
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1517
    .restart local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 1518
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_19

    .line 1533
    .end local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v5    # "i":I
    :cond_14
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v7, :cond_15

    .line 1538
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " linkageId=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1539
    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1537
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1541
    :cond_15
    if-eqz v6, :cond_17

    .line 1542
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 1543
    const-string v8, ""

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 1544
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1545
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    .line 1544
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    .line 1546
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1547
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal1CboCheck:Z

    .line 1549
    :cond_16
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 1550
    const-string v8, ""

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 1551
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1552
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    .line 1551
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    .line 1553
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1554
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal2CboCheck:Z

    .line 1557
    :cond_17
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1507
    :cond_18
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_title:Landroid/widget/TextView;

    const-string v8, "humidity conditions"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1519
    .restart local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .restart local v5    # "i":I
    :cond_19
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 1520
    const-string v8, ""

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1521
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v7

    .line 1520
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1521
    if-nez v7, :cond_1a

    .line 1522
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    .line 1524
    :cond_1a
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 1525
    const-string v8, ""

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1526
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v7

    .line 1525
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1526
    if-nez v7, :cond_1b

    .line 1527
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    .line 1518
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 1561
    .end local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v5    # "i":I
    :pswitch_2
    iput v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    .line 1562
    iput v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    .line 1563
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_20

    .line 1564
    const-string v7, ""

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 1565
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_title:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Lighting conditions("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    :goto_8
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_title:Landroid/widget/TextView;

    const-string v8, "Light is greater than"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_title:Landroid/widget/TextView;

    const-string v8, "Light less than"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_delete_title:Landroid/widget/TextView;

    const-string v8, "Remove lighting settings"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1573
    if-eqz p2, :cond_1c

    const-string v7, ""

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 1576
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " mac like \'%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1575
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1577
    .restart local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v3, :cond_1c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1c

    .line 1578
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_21

    .line 1593
    .end local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v5    # "i":I
    :cond_1c
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    if-eqz v7, :cond_1d

    .line 1598
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  linkageId=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1599
    iget v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1597
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1601
    :cond_1d
    if-eqz v6, :cond_1f

    .line 1602
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    .line 1603
    const-string v8, ""

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 1604
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1605
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v7

    .line 1604
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    .line 1606
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1607
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal1CboCheck:Z

    .line 1609
    :cond_1e
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 1610
    const-string v8, ""

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 1611
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1612
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v7

    .line 1611
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    .line 1613
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1614
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal2CboCheck:Z

    .line 1617
    :cond_1f
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val1_text:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->limStr:[Ljava/lang/String;

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum1:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1618
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_val2_text:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->limStr:[Ljava/lang/String;

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->tempNum2:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1567
    :cond_20
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkage_title:Landroid/widget/TextView;

    const-string v8, "Lighting conditions"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1579
    .restart local v3    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .restart local v5    # "i":I
    :cond_21
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_22

    .line 1580
    const-string v8, ""

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1581
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v7

    .line 1580
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1581
    if-nez v7, :cond_22

    .line 1582
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    .line 1584
    :cond_22
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 1585
    const-string v8, ""

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1586
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v7

    .line 1585
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1586
    if-nez v7, :cond_23

    .line 1587
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    .line 1578
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 1419
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showTimer(Ljava/util/List;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 11
    .param p2, "device"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;",
            ">;",
            "Lcom/kankunit/smartplugcronus/model/DeviceModel;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1050
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1051
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1052
    const-string v7, ""

    invoke-virtual {p2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1053
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "You have to set the time ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1058
    :goto_0
    const-string v6, ""

    .line 1059
    .local v6, "time":Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1060
    const-string v8, ""

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1061
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v6

    .line 1083
    :cond_0
    :goto_1
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getIsPoint()Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, "isPoint":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    .line 1085
    .local v5, "items":[Ljava/lang/String;
    const-string v7, "y"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1086
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-direct {p0, v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getTimer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    .line 1091
    :goto_2
    const-string v7, "Remove timer setting"

    aput-object v7, v5, v10

    .line 1092
    new-instance v2, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;-><init>()V

    .line 1093
    .local v2, "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    invoke-virtual {v1, v5, v9, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1094
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;

    invoke-direct {v0, p0, v2, p1, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;Ljava/util/List;Ljava/lang/String;)V

    .line 1324
    .local v0, "btnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1325
    const v8, 0x7f0c0239

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1324
    invoke-virtual {v1, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1326
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1327
    const v8, 0x7f0c023b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1328
    new-instance v8, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$13;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$13;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    .line 1326
    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1334
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1335
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1336
    return-void

    .line 1055
    .end local v0    # "btnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v4    # "isPoint":Ljava/lang/String;
    .end local v5    # "items":[Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/String;
    :cond_1
    const-string v7, "You have to set the time"

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 1062
    .restart local v6    # "time":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1063
    const-string v8, ""

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1064
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v6

    .line 1065
    goto/16 :goto_1

    .line 1070
    :cond_3
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1071
    const-string v8, ""

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1072
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v6

    .line 1073
    goto/16 :goto_1

    :cond_4
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1074
    const-string v8, ""

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1075
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v6

    .line 1076
    goto/16 :goto_1

    :cond_5
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1077
    const-string v8, ""

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1078
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v6

    .line 1079
    goto/16 :goto_1

    :cond_6
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1080
    const-string v8, ""

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1081
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1088
    .restart local v4    # "isPoint":Ljava/lang/String;
    .restart local v5    # "items":[Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-direct {p0, v8}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getTimer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1089
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-direct {p0, v8}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getTimer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1088
    aput-object v7, v5, v9

    goto/16 :goto_2
.end method

.method private showTimerActivity(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 8
    .param p2, "isPoint"    # Ljava/lang/String;
    .param p3, "isNewAdd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 942
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 943
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 944
    const-string v5, ":timer"

    .line 943
    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    .line 945
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mac like \'%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 947
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 949
    .local v3, "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 950
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 981
    .end local v1    # "i":I
    .end local v3    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 982
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 983
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 984
    const-string v5, ""

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 985
    const-string v5, "time"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v5, "repart"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getRepart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v4, "update"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1022
    :cond_1
    :goto_1
    const-string v4, "hasTemp1"

    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1023
    const-string v4, "hasTemp2"

    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1024
    const-string v4, "hasTemp3"

    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp3:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1025
    const-string v4, "hasTemp4"

    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1026
    const-string v4, "hasTemp5"

    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp5:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1027
    const-string v4, "hasTemp6"

    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp6:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1028
    const-string v4, "hasTemp7"

    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp7:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1029
    const-string v4, "isPoint"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string v4, "linkageMac"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v4, "linkagePwd"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePwd:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v4, "sceneId"

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1034
    .local v2, "intent":Landroid/content/Intent;
    const-class v4, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1035
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1036
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->startActivity(Landroid/content/Intent;)V

    .line 1037
    return-void

    .line 951
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "i":I
    .restart local v3    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 952
    const-string v5, ""

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 953
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp1:Z

    .line 955
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 956
    const-string v5, ""

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 957
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp2:Z

    .line 962
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 963
    const-string v5, ""

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 964
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp4:Z

    .line 966
    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 967
    const-string v5, ""

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 968
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp5:Z

    .line 970
    :cond_6
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 971
    const-string v5, ""

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 972
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp6:Z

    .line 974
    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 975
    const-string v5, ""

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 976
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->hasTemp7:Z

    .line 950
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 988
    .end local v1    # "i":I
    .end local v3    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_9
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 989
    const-string v5, ""

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 990
    const-string v5, "time"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v5, "repart"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getRepart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v4, "update"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1000
    :cond_a
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1001
    const-string v5, ""

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1002
    const-string v5, "time"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v5, "repart"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getRepart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v4, "update"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1005
    :cond_b
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1006
    const-string v5, ""

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1007
    const-string v5, "time"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v5, "repart"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getRepart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v4, "update"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1010
    :cond_c
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 1011
    const-string v5, ""

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1012
    const-string v5, "time"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v5, "repart"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getRepart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v4, "update"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1015
    :cond_d
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1016
    const-string v5, ""

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1017
    const-string v5, "time"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v5, "repart"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getRepart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v4, "update"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2829
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2830
    .local v0, "body":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->doBack(Ljava/lang/String;)V

    .line 2831
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4586
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 2893
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 2896
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2895
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2897
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2898
    return-void
.end method

.method public getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 914
    invoke-static {p0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 915
    .local v0, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 920
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public initBg()V
    .locals 5

    .prologue
    const v4, 0x7f020397

    .line 549
    const/4 v1, 0x0

    .line 550
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 560
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 556
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 557
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->timerset_mainbg:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initHongMiHeader()V
    .locals 7

    .prologue
    const v6, 0x7f0c01d4

    .line 4001
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4002
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 4001
    invoke-static {v3, v4, v5, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    .line 4003
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4005
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4006
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4008
    new-instance v3, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$23;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$23;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4014
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 4015
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    const v3, 0x7f020386

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4016
    new-instance v3, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$24;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$24;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4023
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 4024
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4026
    const v3, 0x7f020391

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4027
    new-instance v3, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$25;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4049
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 1635
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initData()V

    .line 1636
    if-ne p1, v2, :cond_4

    .line 1637
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 1638
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageTimer(Landroid/content/Context;Ljava/lang/String;)V

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    .line 1642
    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageBody(Z)V

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    .line 1645
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageTemp()V

    .line 1647
    :cond_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    .line 1648
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageHum()V

    .line 1650
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isDoFlag:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    .line 1651
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageLum()V

    .line 1655
    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2964
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3012
    :cond_0
    :goto_0
    return-void

    .line 2966
    :sswitch_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->delete_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2967
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal1CboCheck:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal1CboCheck:Z

    .line 2968
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isValDeleteCboCheck:Z

    .line 2969
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal1CboCheck:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 2972
    :sswitch_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->delete_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2973
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal2CboCheck:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal2CboCheck:Z

    .line 2974
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isValDeleteCboCheck:Z

    .line 2975
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal2CboCheck:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 2978
    :sswitch_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val1_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2979
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->val2_cbo:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2980
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal1CboCheck:Z

    .line 2981
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal2CboCheck:Z

    .line 2982
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isValDeleteCboCheck:Z

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isValDeleteCboCheck:Z

    .line 2983
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->delete_cbo:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isValDeleteCboCheck:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v1, v0

    .line 2982
    goto :goto_1

    .line 2987
    :sswitch_3
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal1CboCheck:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isVal2CboCheck:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isValDeleteCboCheck:Z

    if-nez v1, :cond_4

    .line 2988
    const-string v1, "Please check conditions"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2989
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2993
    :cond_4
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2994
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageTemp()V

    .line 2996
    :cond_5
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 2997
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageHum()V

    .line 2999
    :cond_6
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageClickFlag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3000
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageLum()V

    goto :goto_0

    .line 3005
    :sswitch_4
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3006
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkagePop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2964
    :sswitch_data_0
    .sparse-switch
        0x7f07013e -> :sswitch_3
        0x7f0701e6 -> :sswitch_4
        0x7f070277 -> :sswitch_0
        0x7f07027d -> :sswitch_1
        0x7f07027f -> :sswitch_2
        0x7f070280 -> :sswitch_4
        0x7f070282 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 209
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 214
    const v4, 0x7f070075

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 215
    .local v2, "headerbar":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_0
    new-instance v4, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v4, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 220
    const v4, 0x7f0300ca

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->setContentView(I)V

    .line 221
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 222
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 223
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 224
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;

    .line 225
    new-instance v4, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    .line 500
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initPop()V

    .line 501
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initView()V

    .line 502
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initData()V

    .line 504
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->openButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->openButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clock:Landroid/widget/Button;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_clockClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_body:Landroid/widget/Button;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_bodyClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beam:Landroid/widget/Button;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_beamClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidity:Landroid/widget/Button;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_humidityClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperature:Landroid/widget/Button;

    .line 510
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_temperatureClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300cb

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 515
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f07013b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 514
    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 516
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 517
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 519
    const v4, 0x7f07013c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 518
    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_update:Landroid/widget/TextView;

    .line 520
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_update:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 521
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_update:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 523
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 524
    const v5, 0x7f020390

    .line 523
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 525
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 526
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 525
    invoke-virtual {v0, v8, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 527
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 528
    invoke-virtual {v4, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 529
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 530
    const v5, 0x7f020393

    .line 529
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 531
    .local v1, "drawable2":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 532
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 531
    invoke-virtual {v1, v8, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 533
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_update:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 535
    new-instance v4, Landroid/widget/PopupWindow;

    .line 536
    invoke-direct {v4, v3, v9, v9, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 535
    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    .line 537
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 539
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 541
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 542
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_editClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_update:Landroid/widget/TextView;

    .line 544
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu_updateClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2227
    const-string v2, "More"

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 2228
    const v3, 0x7f02039b

    .line 2227
    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 2229
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 2231
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    .line 2230
    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 2234
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/SceneModel;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 2284
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2286
    const-string v1, "Prompt Information"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2287
    const-string v1, "Do you want to cancel?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2288
    const-string v1, "Confirm"

    .line 2289
    new-instance v2, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$16;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$16;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    .line 2288
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2297
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2298
    const/4 v0, 0x0

    .line 2301
    :goto_0
    return v0

    .line 2300
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->finish()V

    .line 2301
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 2239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_1

    .line 2240
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/SceneModel;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 2241
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2242
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2243
    const-string v3, "Prompt Information"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2244
    const-string v3, "Do you want to cancel?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2245
    const-string v3, "Confirm"

    .line 2246
    new-instance v4, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$15;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$15;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    .line 2245
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2254
    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2278
    :goto_0
    return v6

    .line 2257
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->finish()V

    goto :goto_0

    .line 2261
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2263
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2266
    :cond_2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2268
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2269
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2270
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2271
    const v4, 0x7f0a0054

    .line 2270
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 2269
    sub-int v1, v2, v3

    .line 2272
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    .line 2273
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 2275
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2276
    const v5, 0x7f0a0058

    .line 2275
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 2272
    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 909
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 910
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 911
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initData()V

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sceneId=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 895
    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v0

    .line 897
    .local v0, "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 898
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 899
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 900
    .local v1, "m":Landroid/os/Message;
    const/16 v2, 0x849

    iput v2, v1, Landroid/os/Message;->what:I

    .line 901
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getIsDo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 902
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 904
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 905
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 906
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isActivityOpen:Z

    .line 200
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStart()V

    .line 201
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isActivityOpen:Z

    .line 205
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 206
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2908
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2909
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 2910
    .local v1, "viewId":I
    if-nez v0, :cond_0

    .line 2911
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isTouchDown:Z

    .line 2912
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->accelerationVal:I

    .line 2913
    new-instance v3, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;

    invoke-direct {v3, p0, v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 2954
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$18;->start()V

    .line 2959
    :goto_0
    return v2

    .line 2956
    :cond_0
    if-ne v0, v2, :cond_1

    .line 2957
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->isTouchDown:Z

    :cond_1
    move v2, v3

    .line 2959
    goto :goto_0
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 2902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2903
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->doBack(Ljava/lang/String;)V

    .line 2904
    return-void
.end method

.method public updateUi()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 2306
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 2307
    const-class v9, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sceneId="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2306
    invoke-virtual {v8, v9, v10}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2308
    .local v6, "models":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->listItem_task:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2309
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2349
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->listItemAdapter_task:Lcom/kankunit/smartplugcronus/adapter/SceneControlAdapter;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/adapter/SceneControlAdapter;->notifyDataSetChanged()V

    .line 2350
    return-void

    .line 2309
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 2310
    .local v4, "model":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2311
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "scene_do_title"

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v5

    .line 2313
    .local v5, "modelType":I
    if-ne v5, v12, :cond_1

    .line 2314
    const-string v9, "scene_do_state"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    :goto_1
    const-string v9, "status"

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getDetailStatus()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->listItem_task:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2315
    :cond_1
    const/4 v9, 0x6

    if-eq v5, v9, :cond_2

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    .line 2316
    const/16 v9, 0xa

    if-eq v5, v9, :cond_2

    const/16 v9, 0xb

    if-eq v5, v9, :cond_2

    const/4 v9, 0x5

    if-eq v5, v9, :cond_2

    .line 2317
    const/4 v9, 0x7

    if-eq v5, v9, :cond_2

    const/16 v9, 0x8

    if-eq v5, v9, :cond_2

    const/16 v9, 0x9

    if-eq v5, v9, :cond_2

    .line 2318
    const/16 v9, 0xc

    if-eq v5, v9, :cond_2

    const/16 v9, 0xd

    if-ne v5, v9, :cond_4

    .line 2319
    :cond_2
    const-string v9, "scene_do_state"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v7

    .line 2321
    .local v7, "remoteControlId":I
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 2322
    const-class v11, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2321
    invoke-virtual {v9, v10, v11}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2323
    .local v0, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-eqz v0, :cond_3

    .line 2324
    const-string v9, "scene_do_title"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2325
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2324
    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2327
    :cond_3
    const-string v9, "scene_do_title"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Remote control (deleted) "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2331
    .end local v0    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v7    # "remoteControlId":I
    :cond_4
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v9

    .line 2330
    invoke-static {p0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    .line 2332
    .local v2, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v2, :cond_6

    .line 2333
    const-string v1, "Open"

    .line 2334
    .local v1, "dString":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v9

    if-ne v9, v12, :cond_7

    .line 2335
    const-string v1, "Turn off"

    .line 2341
    :cond_5
    :goto_2
    const-string v9, "scene_do_title"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2342
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2341
    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2344
    .end local v1    # "dString":Ljava/lang/String;
    :cond_6
    const-string v9, "scene_do_state"

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2336
    .restart local v1    # "dString":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 2337
    const-string v1, "Nightlight on"

    .line 2338
    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 2339
    const-string v1, "Nightlight off"

    goto :goto_2
.end method
