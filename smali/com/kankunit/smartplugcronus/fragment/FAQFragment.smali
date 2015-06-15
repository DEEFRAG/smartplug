.class public Lcom/kankunit/smartplugcronus/fragment/FAQFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "FAQFragment.java"


# instance fields
.field private bbs_text:Landroid/widget/TextView;

.field private faq_title_layout:Landroid/widget/RelativeLayout;

.field private faqlist:Landroid/widget/ExpandableListView;

.field private ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private shadowlayer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faqlist:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private getGroupList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0253

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0255

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c025b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0260

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0261

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0269

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c026d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-object p1
.end method

.method private getItem()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0272

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0274

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0275

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0276

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0277

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0278

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0279

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c027c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c027f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0280

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0281

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0283

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0284

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0287

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0288

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0289

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-object v0
.end method

.method private getMap(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "templist":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "faq_item"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-object v1
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    return-void
.end method

.method public hideShadePopWindow()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 54
    const v6, 0x7f030071

    invoke-virtual {p1, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 55
    .local v4, "parent":Landroid/view/View;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 56
    const v6, 0x7f070056

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    .line 57
    const v6, 0x7f0701e8

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faq_title_layout:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faq_title_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 59
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$1;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v6, 0x7f0701ea

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListView;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faqlist:Landroid/widget/ExpandableListView;

    .line 68
    const v6, 0x7f0701e9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->bbs_text:Landroid/widget/TextView;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v1, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getGroupList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getItem()Ljava/util/List;

    move-result-object v2

    .line 73
    new-instance v0, Lcom/kankunit/smartplugcronus/adapter/FaqListExpandableAdapter;

    .line 74
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 73
    invoke-direct {v0, v6, v1, v2}, Lcom/kankunit/smartplugcronus/adapter/FaqListExpandableAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 76
    .local v0, "flea":Lcom/kankunit/smartplugcronus/adapter/FaqListExpandableAdapter;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faqlist:Landroid/widget/ExpandableListView;

    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$2;

    invoke-direct {v7, p0, v0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;Lcom/kankunit/smartplugcronus/adapter/FaqListExpandableAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 87
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 88
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faqlist:Landroid/widget/ExpandableListView;

    invoke-virtual {v6, v5}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 89
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faqlist:Landroid/widget/ExpandableListView;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 90
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faqlist:Landroid/widget/ExpandableListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->faqlist:Landroid/widget/ExpandableListView;

    invoke-virtual {v6, v8}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 93
    const v6, 0x7f07004e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 94
    .local v3, "menuButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$3;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->bbs_text:Landroid/widget/TextView;

    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$4;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-object v4
.end method

.method public showShadePopWindow()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 39
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 202
    return-void
.end method
